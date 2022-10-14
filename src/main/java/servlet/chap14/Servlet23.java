package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.chap14.Customer;

/**
 * Servlet implementation class Servlet23
 */
@WebServlet("/Servlet23")
public class Servlet23 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet23() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 파라미터 수집 / 가공
		String keyword = request.getParameter("keyword");
		
		if (keyword == null) {
			keyword = "";
		}
		
		keyword = "%" + keyword + "%";
		
		String sql = "SELECT CustomerID, CustomerName, Address, City, Country "
				+ "FROM Customers "
				+ "WHERE CustomerName LIKE ?";
		
		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);
			) {
			
			pstmt.setString(1, keyword); // 첫번째 물음표 keyword 를 넣는다.
			
			try (ResultSet rs = pstmt.executeQuery(); ) { //rs 는 pstmt을 가리킨다. pstmt.executeQuery 실행
				
				List<Customer> list = new ArrayList<>(); // 담아둘 Customer객체를 만들어 놓고,
				while (rs.next()) { //커서마다 가리킴. 있으면true 없으면false  
					Customer c = new Customer();
					c.setCustomerId(rs.getInt("customerId"));
					c.setCustomerName(rs.getString("customerName"));
					c.setAddress(rs.getString("address"));
					c.setCity(rs.getString("city"));
					c.setCountry(rs.getString("country"));
					
					list.add(c);
				}
				
				request.setAttribute("customerList", list);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String path = "/WEB-INF/view/chap14/view07.jsp";
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
