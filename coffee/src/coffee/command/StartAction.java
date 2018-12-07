package coffee.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffee.bean.MngrDBBean;

public class StartAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		// DB와 연동해서 사용자의 인증을 처리
		MngrDBBean dbPro = MngrDBBean.getInstance();

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println("StartAction.java id: " + id);
		
		dbPro.confirmAuthority(id);
		
		return "/main.jsp";
	}
}
