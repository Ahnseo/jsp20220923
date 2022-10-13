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

/**
 * Servlet implementation class Servlet17_insert_input
 */
@WebServlet("/Servlet17_insert_input")
public class Servlet27_insert_input extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet27_insert_input() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//forward
		String path = "\\WEB-INF\\view\\chap14\\view11.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. request 파라미터 수집 
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		//2. 가공
		
		//3. business logic
		String sql = "INSERT INTO Employees (FirstName, LastName) VALUES(?, ?) ";
		
		ServletContext application = request.getServletContext();
		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();
		
		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				
				PreparedStatement pstmt = con.prepareStatement(sql);
				
				) {
			pstmt.setString(1, firstName);
			pstmt.setString(2, lastName);
			
			int count = pstmt.executeUpdate();
			
			//4. 결과 확인 , setAttr
			System.out.println(count);
			
			if (count == 1) {
				//5. forward / redirect
				String path = request.getContextPath() + "/Servlet24";
				response.sendRedirect(path);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
