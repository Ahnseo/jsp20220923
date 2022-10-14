package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

/*  Post -> Get
 * doGet 
 *      포워드 view12.jsp
 * doPost
 *      insert 실행 후, 
 *      insert into customers (CustomerName, Address, City, County) VALUES (?,?,?,?) 
 *      redirect  /Servlet23 
 * */

/**
 * Servlet implementation class Servlet28_insert_input_post
 */
@WebServlet("/Servlet28_insert_input_post")
public class Servlet28_insert_input_post extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet28_insert_input_post() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/WEB-INF/view/chap14/view12.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Servlet28 실행 (doGet forward) -> view12(post)-> Servlet28(post실행) -> Servlet23-> view07
		//request param 수집 가공
		//con ptmt
		//set attr
		//forward/ redirect
		
		String sql = "INSERT INTO "
					+"Customers (CustomerName, Address, City, Country) "
					+"VALUES (?,?,?,?) ";
		
		String customerName = request.getParameter("customerName");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String country = request.getParameter("country");
		
		ServletContext app = request.getServletContext();
		String url = app.getAttribute("jdbc.url").toString();
		String user = app.getAttribute("jdbc.username").toString();
		String pw = app.getAttribute("jdbc.password").toString();
		
		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);
			){
			pstmt.setString(1, customerName);
			pstmt.setString(2, address);
			pstmt.setString(3, city);
			pstmt.setString(4, country);
			
			
			int count = pstmt.executeUpdate();
			if(count ==1) {
				System.out.println("저장됨");
				
				String message= "새 직원이 등록되었습니다.";
				HttpSession session = request.getSession(); //세션에 메세지 넣어 출력하기
				session.setAttribute("message", message);
				
				String path = request.getContextPath() + "/Servlet23";
				response.sendRedirect(path);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("오류 : connection, PreparedStatement");
		}
		
		
		
	}

}
