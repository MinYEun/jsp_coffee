package coffee.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffee.bean.MngrDBBean;

public class ManagerStaffSelDelAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		//DB�� �����ؼ� ������� ������ ó��
	    MngrDBBean dbPro = MngrDBBean.getInstance();
	    String a = request.getParameter("");
	    System.out.println("dd");
	    request.getSession().setAttribute("staffList", dbPro.selectStaff());

		return "/mngr/mStaffSelDel.jsp";
	}

}
