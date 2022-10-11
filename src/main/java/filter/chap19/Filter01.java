package filter.chap19;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

//doFilter 필요에 따라 안쓸수도 있음.

/**
 * Servlet Filter implementation class Filter01
 */

//필터가 일하는 경로 를 지정, Servlet10으로 ,새로고침 할때마다 Filter01 파일이 일함.
@WebFilter("/Servlet10")
public class Filter01 implements Filter {

    /**
     * Default constructor. 
     */
    public Filter01() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		// 필터가 하는 일 작성
		System.out.println("필터1번 적용됨");

		// pass the request along the filter chain
		//필터체인에 요청을 계속 전달한다. ex.로그인 성공 유무에 따라, 서블릿 실행할지말지 (다음 필터or 서블릿 실행)
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
