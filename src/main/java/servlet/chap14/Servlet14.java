package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet14
 */
@WebServlet("/Servlet14")
public class Servlet14 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet14() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//파라미터 수집 ServletContext객체, url, id, pw, sql명령문
		//파라미터 가공 
		//로직: db에서 customerId가 3번인 고객의 CustomerName을 조회
		// setAttribute
		//forward
		
		ServletContext app = request.getServletContext();
		
		String url = app.getAttribute("jdbc.url").toString();
		String user = app.getAttribute("jdbc.username").toString();
		String pw = app.getAttribute("jdbc.password").toString();
		
		String sql = "SELECT CustomerName FROM Customers WHERE CustomerID =3;";
		
		try(
				Connection con = DriverManager.getConnection(url, user, pw);
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery(sql);
				) {
			
			if (rs.next()) {
				String name = rs.getString(1);
				request.setAttribute("CustomerName", name);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		String path = "\\WEB-INF\\view\\chap14\\view02.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
