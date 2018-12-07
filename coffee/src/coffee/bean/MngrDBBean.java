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
	// MngrDBBean ���� ��ü ���� <-- �� ���� ��ü�� �����ؼ� ����
	private static MngrDBBean instance = new MngrDBBean();

	// MngrDBBean ��ü�� �����ϴ� �޼ҵ�
	public static MngrDBBean getInstance() {
		//login�� ���ǿ� ���
		MngrDBBean dbPro = MngrDBBean.getInstance();
			HttpSession session = request.getSession();
			session.setAttribute("menu", dbPro.getMenuList());
		return instance;
	}

	private MngrDBBean() {
	}

	// Ŀ�ؼ� Ǯ���� Ŀ�ؼ� ��ü�� ���� �޼ҵ�
	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/TestDB");
		return ds.getConnection();
	}

	// ������ ���� �޼ҵ�
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

			if (rs.next()) {// �ش� ���̵� ������ ����
				String dbpasswd = rs.getString("managerPasswd");
				if (orgPass.equals(dbpasswd))
					x = 1; // ��������
				else
					x = 0; // ��й�ȣ Ʋ��
			} else// �ش� ���̵� ������ ����
				x = -1;// ���̵� ����

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
	
	// ������ ���� ��� üũ�ϴ� �޼ҵ�
	
	
	// �޴� ���� ����
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