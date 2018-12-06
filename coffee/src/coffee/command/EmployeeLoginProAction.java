package coffee.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffee.bean.MngrDBBean;

public class EmployeeLoginProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
        request.setCharacterEncoding("utf-8");//한글 인코딩
        
        //넘어온 요청의 데이터를 얻어냄
        String num = request.getParameter("num");
	    String passwd  = request.getParameter("passwd");
	    
	    //DB와 연동해서 사용자의 인증을 처리
	    MngrDBBean dbPro = MngrDBBean.getInstance();
        int check = dbPro.userCheck(num,passwd);
        // String 변수      호출하는 메소드
        
        //해당 뷰(응답페이지)로 보낼 내용을 request속성에 지정
		request.setAttribute("check", new Integer(check));
		request.setAttribute("id", num);
		
		// request에 관리자인지 직원인지를 체크하는 값을 저장한다.
		
		request.getSession().setAttribute("num", num);
		System.out.println(num);
		System.out.println("eLoginProAction");
		return "/mngr/logon/mLoginPro.jsp";
	}
}