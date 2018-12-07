package coffee.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import coffee.bean.MngrDBBean;

public class IndexAction implements CommandAction {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		// DB�� �����ؼ� ������� ������ ó��
		MngrDBBean dbPro = MngrDBBean.getInstance();

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		int check = dbPro.userCheck(id, pw);
		int authority = dbPro.confirmAuthority(id);

		System.out.println("check: " + check);//1: ����, 0: ���x, -1: ���̵�x
		System.out.println("authority: " + authority);//1: ������, 0: ����

		System.out.println("indexAction");

		if (authority == 1 && check == 1) {// ������ �α��� ����
			request.getSession().setAttribute("id", id);
			request.getSession().setAttribute("type", new Integer(0));
			System.out.println("������ �α��� ����");
			return "/loginPro.jsp";
		}else if (authority == 0 && check == 1) {//���� �α��� ����
			request.getSession().setAttribute("id", id);
			request.getSession().setAttribute("type", new Integer(1));
			System.out.println("���� �α��� ����");
			return "/loginPro.jsp";
		}else {
			request.getSession().setAttribute("type", new Integer(2));
			System.out.println("�α��� ����");
		}

		return null;
	}
}
