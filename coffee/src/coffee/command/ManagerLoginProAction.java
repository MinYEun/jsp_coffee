package coffee.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import coffee.bean.MenuBean;
import coffee.bean.MngrDBBean;

public class ManagerLoginProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
        request.setCharacterEncoding("utf-8");//�ѱ� ���ڵ�
        
        //�Ѿ�� ��û�� �����͸� ��
        String id = request.getParameter("id");
	    String passwd  = request.getParameter("passwd");
	    
	    //DB�� �����ؼ� ������� ������ ó��
	    MngrDBBean dbPro = MngrDBBean.getInstance();
        int check = dbPro.userCheck(id,passwd);
        
        //�ش� ��(����������)�� ���� ������ request�Ӽ��� ����
		request.setAttribute("check", new Integer(check));
		request.setAttribute("id", id);
		//login�� ���ǿ� ���
		HttpSession session = request.getSession();
		ArrayList<MenuBean> bean=new ArrayList<>();
		bean=dbPro.getMenuList();
		System.out.println(bean.get(0).getMenu_code());
		session.setAttribute("menu", dbPro.getMenuList());
		System.out.println();
		System.out.println("check: " + check);
		System.out.println("id: " + id);
		System.out.println("LoginProAction");
		
		return "/mngr/logon/mLoginPro.jsp";
	}
}