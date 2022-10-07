package servlet.chap17;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet07
 */
//어노테이션 주석 처리 -> web.xml 로 url경로 설정 연습하기
//@WebServlet("/Servlet07")
public class Servlet07 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet07() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("일곱번째 서블릿 일함###");
		String ip = getInitParameter("ip");
		String pw = getInitParameter("pw");
		String userName = getInitParameter("userName");
		
		System.out.println("ip 파리미터: " +ip);
		System.out.println("pw 파리미터: " +pw);
		System.out.println("userName 파라미터: "+userName);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
