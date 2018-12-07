package coffee.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import coffee.bean.EmpDBBean;


public class EmployeeLoginProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
        request.setCharacterEncoding("utf-8");//�ѱ� ���ڵ�
        
        //�Ѿ�� ��û�� �����͸� ��
        String id = request.getParameter("id");
	    String passwd  = request.getParameter("passwd");
	    
	    //DB�� �����ؼ� ������� ������ ó��
	    EmpDBBean dbPro = EmpDBBean.getInstance();
        int check = dbPro.userCheck(id,passwd);
        // String ����      ȣ���ϴ� �޼ҵ�
        
        //�ش� ��(����������)�� ���� ������ request�Ӽ��� ����
		request.setAttribute("check", new Integer(check));
		request.setAttribute("id", id);
		
		// request�� ���������� ���������� üũ�ϴ� ���� �����Ѵ�.
		
		request.getSession().setAttribute("id", id);
		System.out.println(id);
		System.out.println("eLoginProAction");
		return "/mngr/logon/mLoginPro.jsp";
	}
}