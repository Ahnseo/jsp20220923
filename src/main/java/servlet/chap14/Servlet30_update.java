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
import javax.servlet.http.HttpSession;

import domain.chap14.Customer;

/**
 * Servlet implementation class Servlet30_update
 */
@WebServlet("/Servlet30_update")
public class Servlet30_update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Servlet30_update() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 업데이트 로직 보내기

		String sql = "SELECT CustomerName,ContactName,Address,City,Country FROM Customers WHERE CustomerID = ? ";
		
		String CustomerIdStr = request.getParameter("CustomerId");
		int CustomerId = Integer.parseInt(CustomerIdStr);

		ServletContext app = request.getServletContext();
		String url = app.getAttribute("jdbc.url").toString();
		String user = app.getAttribute("jdbc.username").toString();
		String pw = app.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);

			) {
			pstmt.setInt(1, CustomerId);

			try (ResultSet rs = pstmt.executeQuery()) {
				
				if (rs.next()) {

					Customer customer = new Customer();
					customer.setCustomerId(CustomerId);
					customer.setCustomerName(rs.getString("CustomerName"));
					customer.setContactName(rs.getString("ContactName"));
					customer.setAddress(rs.getString("Address"));
					customer.setCity(rs.getString("City"));
					customer.setCountry(rs.getString("Country"));

					request.setAttribute("customer", customer);
				}
			}

		}catch (Exception e) {
			e.printStackTrace();
		}
		String path = "/WEB-INF/view/chap14/view13.jsp"; //같은 request를 사용하는 곳으로 포워드
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 업데이트 로직
		String sql = "UPDATE Customers " + "SET CustomerName=?, ContactName=?, Address=?, City=?, Country=? "
				+ "WHERE CustomerId = ? ";

		ServletContext app = request.getServletContext();
		String url = app.getAttribute("jdbc.url").toString();
		String user = app.getAttribute("jdbc.username").toString();
		String pw = app.getAttribute("jdbc.password").toString();

		String CustomerName = request.getParameter("CustomerName");
		String ContactName = request.getParameter("ContactName");
		String Address = request.getParameter("Address");
		String City = request.getParameter("City");
		String Country = request.getParameter("Country");
		
		String CustomerIdStr = request.getParameter("CustomerId");
		int CustomerId = Integer.parseInt(CustomerIdStr);

		try (Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);

		) {
			pstmt.setString(1, CustomerName);
			pstmt.setString(2, ContactName);
			pstmt.setString(3, Address);
			pstmt.setString(4, City);
			pstmt.setString(5, Country);
			pstmt.setInt(6, CustomerId);

			int count = pstmt.executeUpdate();
			
			if (count == 1) {
				String message = "고객정보가 업데이트 되었습니다.";
				HttpSession session = request.getSession();
				session.setAttribute("message", message);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		// 포워드 /리다이렉트
		String path = request.getContextPath() + "/Servlet23";
		response.sendRedirect(path);
	}

}
