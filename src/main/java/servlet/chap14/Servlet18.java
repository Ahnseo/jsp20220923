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

import domain.chap14.Product;

/**
 * Servlet implementation class Servlet18
 */
@WebServlet("/Servlet18")
public class Servlet18 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet18() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//3. 비지니스 로직
		//4. setAttr
		//5.forward/redirect
		String sql ="SELECT ProductName, Price FROM Products";
		
		ServletContext application = request.getServletContext();
		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();
		
		List<Product> list = new ArrayList<>();
		
		try(
				Connection con = DriverManager.getConnection(url, user, pw);
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);
				) {
			while (rs.next()) {
				Product product = new Product();
				String productName = rs.getString(1);
				double price = rs.getDouble(2);
				
				product.setProductName(productName);
				product.setPrice(price);
				
				list.add(product);
			}
			request.setAttribute("productList", list);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		String path = "/WEB-INF/view/chap14/view06.jsp";
		request.getRequestDispatcher(path).forward(request,response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
