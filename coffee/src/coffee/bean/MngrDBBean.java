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

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class MngrDBBean {
	// MngrDBBean 전역 객체 생성 <-- 한 개의 객체만 생성해서 공유
	private static MngrDBBean instance = new MngrDBBean();

	// MngrDBBean 객체를 리턴하는 메소드
	public static MngrDBBean getInstance() {
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

	//////////////////////////관리자, 직원 메소드//////////////////////////////
	
	// 관리자 인증 메소드
	public int userCheck(String name, String passwd) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int x = -1;

		try {
			conn = getConnection();

			String orgPass = passwd;
			
			pstmt = conn.prepareStatement("select passwd from staff where stf_code = ?");
			pstmt.setString(1, name);
			rs = pstmt.executeQuery();
			if (rs.next()) {// 해당 아이디가 있으면 수행
				String dbpasswd = rs.getString("passwd");
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



	// 관리자, 직원 추가
	public void insertStaff(String id, String name, String pw, String tel) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("insert into staff values(?,?,?,?)");
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			pstmt.setString(3, pw);
			pstmt.setString(4, tel);
			pstmt.executeUpdate();

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
	}

	public int confirmAuthority(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int x = -1;

		try {
			conn = getConnection();

			pstmt = conn.prepareStatement("select * from staff where stf_code= ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				id = rs.getString("stf_code");
				if (id.contains("m")) {
					x = 1; // 관리자
				} else if (id.contains("e")) {
					x = 0;
				}
			}

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

	//직원 조회
	public JSONArray selectStaff() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		JSONObject jsonObject;
		JSONArray jsonArray = new JSONArray();
		
		try {
			conn = getConnection();

			String sql = "select * from staff";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				jsonObject = new JSONObject();
				jsonObject.put("stf_code", rs.getString("stf_code"));
				jsonObject.put("name", rs.getString("name"));
				jsonObject.put("passwd", rs.getString("passwd"));
				jsonObject.put("ph_num", rs.getString("ph_num"));
				jsonArray.add(jsonObject);
			}
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
		return jsonArray;
	}

	public void deleteStaff(String id){
	        Connection conn = null;
	        PreparedStatement pstmt = null;
	        ResultSet rs= null;
		
	        try {
				conn = getConnection();

					pstmt = conn.prepareStatement("delete from staff where stf_code = ?");
					pstmt.setString(1, id);
					pstmt.executeUpdate();

	        } catch(Exception ex) {
	        	ex.printStackTrace();
	        } finally {
	        	if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	        	if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	        	if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	        }
	        System.out.println("delete stf_code: " + id);
	}
	

	// 관리자 직원 등급 체크하는 메소드

	// 관리자 직원 등급 체크하는 메소드
	
	// 관리자 직원 등급 체크하는 메소드
	
	
	
	
	
	////////////////////////////고객 관리 메소드/////////////////////////////////
	
	//고객 추가
	public void insertCus(String phone, String name) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			String sql = "insert into customer(cus_code, cus_name) values(?,?)";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, phone);
			pstmt.setString(2, name);
			pstmt.executeUpdate();

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
	}
	
	//고객 전체 조회
	public JSONArray selectCus() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		JSONObject jsonObject;
		JSONArray jsonArray = new JSONArray();
		
		try {
			conn = getConnection();

			String sql = "select * from customer";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				jsonObject = new JSONObject();
				jsonObject.put("cus_code", rs.getString("cus_code"));
				jsonObject.put("cus_name", rs.getString("cus_name"));
				jsonObject.put("cus_point", rs.getInt("cus_ponit"));
				jsonArray.add(jsonObject);
			}
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
		return jsonArray;
	}
	
	//고객 삭제
	public void deleteCus(String id){
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs= null;
	
        try {
			conn = getConnection();

			String sql = "delete from customer where cus_code = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.executeUpdate();

        } catch(Exception ex) {
        	ex.printStackTrace();
        } finally {
        	if (rs != null) try { rs.close(); } catch(SQLException ex) {}
        	if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
        	if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
        System.out.println("delete cus_code: " + id);
}
	
	
	//메뉴 세션 저장
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