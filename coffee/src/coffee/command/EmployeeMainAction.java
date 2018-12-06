package coffee.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EmployeeMainAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		//관리자를 구분할 때 사용
		System.out.println("emainAction");
		return "/mngr/eOrderCoffee.jsp";//로그인 성공하면 주문 화면으로
		
	}
}