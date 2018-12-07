package coffee.bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;


public class MngrDBBean {
	// MngrDBBean 전역 객체 생성 <-- 한 개의 객체만 생성해서 공유
	private static MngrDBBean instance = new MngrDBBean();

	// MngrDBBean 객체를 리턴하는 메소드
	public static MngrDBBean getInstance() {
		//login시 세션에 등록
		MngrDBBean dbPro = MngrDBBean.getInstance();
			HttpSession session = request.getSession();
			session.setAttribute("menu", dbPro.getMenuList());
		return instance;
	}

	private MngrDBBean() {
	}

	// 커넥션 풀에서 커넥션 객체를 얻어내는 메소드
	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/TestDB");
		return ds.getConnection();
	}

	// 관리자 인증 메소드
	public int userCheck(String id, String passwd) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int x=-1;

		try {
			conn = getConnection();

			String orgPass = passwd;
			
			pstmt = conn.prepareStatement("select managerPasswd from mcoffee where managerId = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {// 해당 아이디가 있으면 수행
				String dbpasswd = rs.getString("managerPasswd");
				if (orgPass.equals(dbpasswd))
					x = 1; // 인증성공
				else
					x = 0; // 비밀번호 틀림
			} else// 해당 아이디 없으면 수행
				x = -1;// 아이디 없음

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (rs != null)
				try {rs.close();} catch (SQLException ex) {}
			if (pstmt != null)
				try {pstmt.close();} catch (SQLException ex) {}
			if (conn != null)
				try {conn.close();} catch (SQLException ex) {}
		}
		return x;
	}
	
	// 관리자 직원 등급 체크하는 메소드
	
	
	// 메뉴 세션 저장
	public ArrayList<MenuBean> getMenuList(){
		ArrayList<MenuBean> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Connection conn = null;
	
		try {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/TestDB");
		conn = ds.getConnection();
		list = new ArrayList<>();
		
		String sql = "select * from menu";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			MenuBean m = new MenuBean();
			m.setMenu_code(rs.getString("_id"));
			m.setClass_code(rs.getString("detail"));
			m.setMenu_name(rs.getString("done"));
			m.setPrice(rs.getInt("Price"));
			m.setImg(rs.getString("img"));
			list.add(m);
		}
		
		
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null)
				try{rs.close();}catch(SQLException sqle){}
			if(pstmt!=null)
				try{pstmt.close();}catch(SQLException sqle){}
			if(conn!=null)
				try{conn.close();}catch(SQLException sqle){}
		}
		return list;
	
	}
	

	
}