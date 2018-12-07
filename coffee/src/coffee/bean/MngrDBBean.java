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

<<<<<<< HEAD
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

=======
>>>>>>> branch 'master' of https://github.com/MinYEun/jsp_coffee.git

public class MngrDBBean {
	// MngrDBBean ���� ��ü ���� <-- �� ���� ��ü�� �����ؼ� ����
	private static MngrDBBean instance = new MngrDBBean();

	// MngrDBBean ��ü�� �����ϴ� �޼ҵ�
	public static MngrDBBean getInstance() {
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
	public int userCheck(String name, String passwd) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int x = -1;

		try {
			conn = getConnection();

			String orgPass = passwd;
<<<<<<< HEAD
			
			pstmt = conn.prepareStatement("select passwd from staff where name = ?");
			pstmt.setString(1, name);
=======

			pstmt = conn.prepareStatement("select passwd from staff where stf_code = ?");
			pstmt.setString(1, id);
>>>>>>> refs/remotes/origin/master
			rs = pstmt.executeQuery();
			if (rs.next()) {// �ش� ���̵� ������ ����
				String dbpasswd = rs.getString("passwd");
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
<<<<<<< HEAD

	// ������, ���� �߰�
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
					x = 1; // ������
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

	//���� ��ȸ
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
}

// ������ ���� ��� üũ�ϴ� �޼ҵ�
=======
	
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
			m.setMenu_code(rs.getString("menu_code"));
			m.setClass_code(rs.getString("class_code"));
			m.setMenu_name(rs.getString("menu_name"));
			m.setPrice(rs.getInt("price"));
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
>>>>>>> branch 'master' of https://github.com/MinYEun/jsp_coffee.git
