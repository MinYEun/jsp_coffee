package coffee.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import coffee.bean.MngrDBBean;

public class ManagerStaffAddAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
//		//DB�� �����ؼ� ������� ������ ó��
	    MngrDBBean dbPro = MngrDBBean.getInstance();
//	    
	    String id = request.getParameter("id");
	    String name  = request.getParameter("name");
	    String tel  = request.getParameter("tel");
	    String pw  = request.getParameter("pw");
	    
	    
	    System.out.println(id);
	    
	    
	    dbPro.insertStaff(id, name, pw, tel);
//	    //DB�� �����ؼ� ������� ������ ó��
//	    MngrDBBean dbPro = MngrDBBean.getInstance();
//        int check = dbPro.userCheck(id,passwd);
//        
//        //�ش� ��(����������)�� ���� ������ request�Ӽ��� ����
//		request.setAttribute("check", new Integer(check));
//		request.setAttribute("id", id);
//		
//		System.out.println("check: " + check);
//		System.out.println("id: " + id);
//		System.out.println("LoginProAction");
//	    HttpSession session = request.getSession();
//	    session.getAttribute("name", ?? );
//		
		return "/mngr/mStaffAdd.jsp";
	}

}
