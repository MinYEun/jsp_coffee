package coffee.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ManagerMainAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		//�����ڸ� ������ �� ���
		System.out.println("mainAction");
		return "/mngr/mOrderCoffee.jsp";//�α��� �����ϸ� �ֹ� ȭ������
						
	}
}