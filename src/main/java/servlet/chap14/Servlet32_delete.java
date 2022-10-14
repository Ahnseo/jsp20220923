package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.chap14.Customer;

/**
 * Servlet implementation class Servlet32_delete
 */
@WebServlet("/Servlet32_delete")
public class Servlet32_delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet32_delete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//고객정보 삭제하기
		
		String sql = "DELETE FROM Customers WHERE CustomerID = ? ";
		
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
			int count = pstmt.executeUpdate(); //실행되면 1값을 갖음
			
			if(count==1) {
				HttpSession session = request.getSession();
				session.setAttribute("message", CustomerId + "번의 고객정보가 삭제되었습니다.");
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		String path = request.getContextPath() + "/Servlet23";
		response.sendRedirect(path);
		
	//리다이렉트 : 페이지 수정 없이 바로 적용되는 코드
		//String path = request.getContextPath()+ "/Servlet23"; 
		//response.sendRedirect(path);
		
		
	}

}
