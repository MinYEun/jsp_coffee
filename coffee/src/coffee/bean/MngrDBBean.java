package coffee.bean;

import java.sql.Connection;
import java.sql.Date;
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

	//////////////////////////������, ���� �޼ҵ�//////////////////////////////
	
	// ������ ���� �޼ҵ�
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

	//������, ���� ����
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

	 //Ư�� ���� ��ȸ
	public JSONArray oneSelectStaff(String stf_code){
	      Connection conn = null;
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      JSONObject jsonObject;
	      JSONArray jsonArray = new JSONArray();
	         
	      try {
	         conn = getConnection();
	            
	         String sql = "select * from staff where stf_code = ?";
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, stf_code);
	         rs = pstmt.executeQuery();
	         while(rs.next()) {
	            jsonObject = new JSONObject();
	            jsonObject.put("stf_code",rs.getString("stf_code"));
	            jsonObject.put("name",rs.getString("name"));
	            jsonObject.put("passwd",rs.getString("passwd"));
	            jsonObject.put("ph_num",rs.getString("ph_num"));
	            jsonArray.add(jsonObject);
	         }
	      }catch(Exception e) {
	         System.out.println("Ư�� ���� ��ȸ ����.");
	      }finally {
	         if(rs!=null)try {rs.close();}catch(Exception e) {}
	         if(pstmt!=null)try {pstmt.close();}catch(Exception e) {}
	         if(conn!=null)try {conn.close();}catch(Exception e) {}
	      }
	      return jsonArray;
	   }

	
	//���� ����
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
	}

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
	
	
	
	//�޴� ����
	public void updateMenu(String menu_name,int af_price) {
		   Connection conn = null;
		   PreparedStatement pstmt = null;
		   ResultSet rs = null;
		   try {
		      conn = getConnection();
		            
		      String sql = "update menu set price=? where menu_name=?";
		      pstmt = conn.prepareStatement(sql);
		      pstmt.setInt(1, af_price);
		      pstmt.setString(2, menu_name);
		      pstmt.executeUpdate();
		   }catch(Exception e) {
		      System.out.println("�� ���� ����.");
		   }finally {
		      if(rs!=null)try {rs.close();}catch(Exception e) {}
		      if(pstmt!=null)try {pstmt.close();}catch(Exception e) {}
		      if(conn!=null)try {conn.close();}catch(Exception e) {}
		      }
	}
	
	//�޴� ����
		public void deleteMenu(String menu_name){
		        Connection conn = null;
		        PreparedStatement pstmt = null;
		        ResultSet rs= null;
			
		        try {
					conn = getConnection();

						pstmt = conn.prepareStatement("delete from menu where menu_name = ?");
						pstmt.setString(1, menu_name);
						pstmt.executeUpdate();

		        } catch(Exception ex) {
		        	ex.printStackTrace();
		        } finally {
		        	if (rs != null) try { rs.close(); } catch(SQLException ex) {}
		        	if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
		        	if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		        }
		}
	
	////////////////////////////�� ���� �޼ҵ�/////////////////////////////////

	//�� �߰�
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
	
	//�� ��ü ��ȸ
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
	
	 //Ư�� �� ��ȸ
	   public JSONArray oneSelectCus(String phone){
	      Connection conn = null;
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      JSONObject jsonObject;
	      JSONArray jsonArray = new JSONArray();
	         
	      try {
	         conn = getConnection();
	            
	         String sql = "select * from customer where cus_code = ?";
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, phone);
	         rs = pstmt.executeQuery();
	         while(rs.next()) {
	            jsonObject = new JSONObject();
	            jsonObject.put("cus_code",rs.getString("cus_code"));
	            jsonObject.put("cus_name",rs.getString("cus_name"));
	            jsonObject.put("cus_ponit",rs.getInt("cus_ponit"));
	            jsonArray.add(jsonObject);
	         }
	      }catch(Exception e) {
	         System.out.println("Ư�� �� ��ȸ ����.");
	      }finally {
	         if(rs!=null)try {rs.close();}catch(Exception e) {}
	         if(pstmt!=null)try {pstmt.close();}catch(Exception e) {}
	         if(conn!=null)try {conn.close();}catch(Exception e) {}
	      }
	      return jsonArray;
	   }

	
	 //�� ����
	public void deleteCus(String id){
			Connection conn = null;
		    PreparedStatement pstmt = null;
		    ResultSet rs= null;
			System.out.println(id + "�̱�������?");
		    try {
			conn = getConnection();
				pstmt = conn.prepareStatement("delete from customer where cus_code = ?");
				pstmt.setString(1, id);
				pstmt.executeUpdate();
		    } catch(Exception ex) {
		       	ex.printStackTrace();
		    } finally {
		     if (rs != null) try { rs.close(); } catch(SQLException ex) {}
		     if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
		     if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		    }
	}
	
	//�� ����
	public void updateCus(String phone,String af_phone) {
	      Connection conn = null;
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      try {
	         conn = getConnection();
	            
	         String sql = "update customer set cus_code=? where cus_code=?";
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, af_phone);
	         pstmt.setString(2, phone);
	         pstmt.executeUpdate();
	      }catch(Exception e) {
	         System.out.println("�� ���� ����.");
	      }finally {
	         if(rs!=null)try {rs.close();}catch(Exception e) {}
	         if(pstmt!=null)try {pstmt.close();}catch(Exception e) {}
	         if(conn!=null)try {conn.close();}catch(Exception e) {}
	      }
	}
	
	//�ֹ� �߰�
		public void InsertOrder(String cus_code, int od_total_amt) {
		      Connection conn = null;
		      PreparedStatement pstmt = null;
		      ResultSet rs = null;
		      try {
		         conn = getConnection();
		            
		         String sql = "insert into cafe_order value(?,?)";
		         pstmt = conn.prepareStatement(sql);
		         pstmt.setString(1, cus_code);
		         pstmt.setInt(2, od_total_amt);
		         pstmt.executeUpdate();
		      }catch(Exception e) {
		         System.out.println("�ֹ� �߰� ����.");
		      }finally {
		         if(rs!=null)try {rs.close();}catch(Exception e) {}
		         if(pstmt!=null)try {pstmt.close();}catch(Exception e) {}
		         if(conn!=null)try {conn.close();}catch(Exception e) {}
		      }
		}
		
		// �� ����Ʈ ��ȸ
		public int selectPoint(String cus_code) {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			JSONObject jsonObject;
			JSONArray jsonArray = new JSONArray();
			int a=0;
			
			try {
				conn = getConnection();

				String sql = "select cus_point from customer where cus_code = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, cus_code); 
				rs = pstmt.executeQuery();
				
				while(rs.next()){
					jsonObject = new JSONObject();
					a=rs.getInt("cus_point");
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
			return a;
		}

}