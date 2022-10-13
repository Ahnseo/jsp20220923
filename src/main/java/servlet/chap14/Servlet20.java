package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
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
 * Servlet implementation class Servlet20
 */
@WebServlet("/Servlet20")
public class Servlet20 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet20() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request param 수집 가공
		String id = request.getParameter("id");
		if(id==null || id.equals("")) {
			id= "1"; //없으면 1번고객이라고 명명함.
		}
		// business logic 실행
		// setAttr
		// forward/redirect
		
		String sql = "SELECT CustomerID, CustomerName, Address, Country, City FROM Customers WHERE CustomerID= " + id ;

		ServletContext application = request.getServletContext();
		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		List<Customer> list = new ArrayList<>();

		try (Connection con = DriverManager.getConnection(url, user, pw);
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);) {
			while (rs.next()) {
				Customer customer = new Customer();
				customer.setCustomerId(rs.getString("CustomerID"));
				customer.setCustomerName(rs.getString("CustomerName"));
				customer.setAddress(rs.getString("Address"));
				customer.setCountry(rs.getString("Country"));
				customer.setCity(rs.getString("City"));
				
				list.add(customer);
			}
			request.setAttribute("customerList", list);

		} catch (Exception e) {
			e.printStackTrace();
		}
		String path = "/WEB-INF/view/chap14/view08.jsp";
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
