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
 * Servlet implementation class Servlet12
 */
@WebServlet("/Servlet12")
public class Servlet12 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet12() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "SELECT CustomerName " //큰따옴표 마지막에 띄어쓰기를 해주어야.. 우리가 원하는 Query 문을 전달할수있제.
				+ "FROM Customers "
//				+ "WHERE CustomerId <= 2 "
				+ "ORDER BY CustomerName ";
		
		//1. JDBC 드라이버 로딩 +exception 처리
//		try {
//			Class.forName("org.mariadb.jdbc.Driver");
//		} catch (ClassNotFoundException e1) {
//			e1.printStackTrace();
//		}
		
		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String password = application.getAttribute("jdbc.password").toString();
		
		//+. checked exception 처리
		try(
				//2. 데이터베이스 커넥션 구하기
				Connection con = DriverManager.getConnection(url, user, password);
				
				//3. 쿼리실행을 위한 statement 객체 생성
				Statement statement = con.createStatement();
				
				//4. 쿼리실행
				ResultSet resultSet = statement.executeQuery(sql); //resultSet은 sql쿼리를 가리키고 있음
				
				) {
			
			//5. 실행 결과 사용( 가공 )
			//resultSet사용
			
			while (resultSet.next()) {
				String name = resultSet.getString(1);
				System.out.println(name);
			}
						
//			System.out.println("문제없이 연결됨");
//			System.out.println(resultSet.next());
//			String name1 = resultSet.getString(1);//t
//			System.out.println(name1);
//			
//			System.out.println(resultSet.next());
//			String name2 = resultSet.getString(2);//t
//			System.out.println(name2);
//			
//			System.out.println(resultSet.next());//f
			
						
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("문제가 발생됨, 코드 재확인");
		}
		
		
		//6. 자원(statement, connection) 닫기
		//trt-with-resource 문법으로 생략
		//statement.close();
		//con.close();		
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
