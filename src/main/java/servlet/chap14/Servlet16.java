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

/**
 * Servlet implementation class Servlet16
 */
@WebServlet("/Servlet16")
public class Servlet16 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet16() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.2. 파라미터 수집 가공
		//3. business logic
		// -> 직원의 lastName을 내림차순 정렬 해서 조회
		//4. setAttr
		//5. forward/redirect
		String sql = "SELECT LastName FROM Employees ORDER BY LastName DESC;";
		ServletContext app = request.getServletContext();
		String url = app.getAttribute("jdbc.url").toString();
		String user = app.getAttribute("jdbc.username").toString();
		String pw = app.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery(sql);
			){
			
			List <String> list = new ArrayList<>();
			while (rs.next()) {
				list.add(rs.getString(1));
				
			}
			
			request.setAttribute("lastNameList", list);
			
		} catch (Exception e) {
			e.printStackTrace();

		}
		
		String path ="\\WEB-INF\\view\\chap14\\view04.jsp";
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
