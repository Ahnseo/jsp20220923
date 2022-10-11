package servlet.chap17;

import java.io.IOException;
import java.util.*;

import javax.servlet.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jsp20220923.chap07.Book;

/**
 * Servlet implementation class Servlet11
 */

//이 경로로 요청은 서블릿이 함, 두겟 두포스트
@WebServlet(value = {"/Servlet11","/filter/servlet11"}) 
public class Servlet11 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    private List<Book> bookDB = null;   
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet11() {
    	 super();
    }
    
    @Override
    public void init() throws ServletException {
    	 ServletContext app = getServletContext();
         List<Book> list = (List<Book>)app.getAttribute("bookDB");
         if(list == null){
      	   list = new ArrayList<>();
      	   app.setAttribute("bookDB", list);
         }
         this.bookDB = list;
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//1. 리퀘스트 파라미터 수집
		List<Book> bookList = bookDB;
				
		//2. 리퀘스트 파라미터 가공 이미 doPost에서 햇지..
		
		//3. 비지니스 로직 (실제 아이디어 가공) 지금은 내가 안쓸거고.
		
		//4. 어트리뷰트 추가
		request.setAttribute("bookList", bookList);
		//5. 포워드or 리다이렉트
		String path = "/WEB-INF/view/chap17/view11.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글깨짐 방지.
		request.setCharacterEncoding("utf-8");
		
		// 1. request parameter 수집
		String title = request.getParameter("title");
		String priceStr = request.getParameter("price");
		System.out.println("제목:" + title);
		System.out.println("가격:" + priceStr);
		
		// 2. request parameter 가공
		int price = Integer.parseInt(priceStr);
		
		// 3. business logic
		Book book = new Book(title, price);
		bookDB.add(book);
		
		insertBook(book); //일했음을 콘솔 표시중.

		// 4. add attribute
		request.setAttribute("bookList", bookDB);
		request.getSession().setAttribute("message", "데이터베이스에 새 책 등록함!!");
		
		// 5. forward / redirect
		String redirectPath = request.getContextPath() + "/Servlet11";
		response.sendRedirect(redirectPath);
	}
	private void insertBook(Book book) {
		System.out.println("데이터베이스에 새 책 등록함!!");
	}
}
