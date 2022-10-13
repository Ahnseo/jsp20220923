package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet26insert
 */
@WebServlet("/Servlet26insert")
public class Servlet26insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet26insert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "INSERT INTO Customers "
				+ "(CustomerName, ContactName, Address, City, PostalCode, Country) "
				+"VALUES ('AHN','SEOJUNG','Dangsandong','Seoul','07720','Korea') ";
		
	//	연결con -> 상태stmt -> 실행execute
		
		ServletContext application = request.getServletContext();
		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();
		
		try (
				//con
				Connection con = DriverManager.getConnection(url, user, pw);
				//stmt
				Statement stmt = con.createStatement();
				
				) {
			//query 실행
			int count = stmt.executeUpdate(sql);
			System.out.println(count);
			
			//forword/redirect
			if(count == 1) {
				System.out.println("데이터베이스에 입력값 저장 됨");
				String path = request.getContextPath() + "/Servlet23";
				response.sendRedirect(path);
			}else{
				//에러 페이지
				System.out.println("오류:데이터베이스에 입력값 저장 안됨");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
