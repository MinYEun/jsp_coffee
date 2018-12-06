package coffee.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffee.bean.MngrDBBean;

public class EmployeeLoginProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
        request.setCharacterEncoding("utf-8");//�ѱ� ���ڵ�
        
        //�Ѿ�� ��û�� �����͸� ��
        String num = request.getParameter("num");
	    String passwd  = request.getParameter("passwd");
	    
	    //DB�� �����ؼ� ������� ������ ó��
	    MngrDBBean dbPro = MngrDBBean.getInstance();
        int check = dbPro.userCheck(num,passwd);
        // String ����      ȣ���ϴ� �޼ҵ�
        
        //�ش� ��(����������)�� ���� ������ request�Ӽ��� ����
		request.setAttribute("check", new Integer(check));
		request.setAttribute("id", num);
		
		// request�� ���������� ���������� üũ�ϴ� ���� �����Ѵ�.
		
		request.getSession().setAttribute("num", num);
		System.out.println(num);
		System.out.println("eLoginProAction");
		return "/mngr/logon/mLoginPro.jsp";
	}
}