package coffee.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffee.bean.MngrDBBean;

public class ManagerOrderCoffeeAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		System.out.println("ManagerOrderCoffeeAction");
		
		//DB에 주문목록 넣기
		MngrDBBean dbPro = MngrDBBean.getInstance();
		
		String cus_code = request.getParameter("cus_code");
		int od_total_amt = Integer.parseInt(request.getParameter("od_total_amt"));
		System.out.println(od_total_amt);
		
		dbPro.InsertOrder(cus_code, od_total_amt);
		
		return "/mngr/mOrderCoffee.jsp";
	}

}
