package coffee.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffee.bean.MngrDBBean;

public class ManagerOrderCoffeeAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		System.out.println("ManagerOrderCoffeeAction");
		
		//DB�� �ֹ���� �ֱ�
		MngrDBBean dbPro = MngrDBBean.getInstance();
		
		String cus_code = request.getParameter("cus_code");
		String od_total_amt = request.getParameter("od_total_amt");

		int point = (int)(Integer.parseInt(od_total_amt) * 0.1);
		
		System.out.println(cus_code);
		System.out.println(od_total_amt);
		System.out.println(point);
		
		dbPro.InsertOrder(cus_code, Integer.parseInt(od_total_amt));
	    dbPro.updatePoint(point, cus_code);
//	    select
//	    dbPro.updatePoint(cus_code);
	    
		return "/mngr/mOrderCoffee.jsp";
	}

}
