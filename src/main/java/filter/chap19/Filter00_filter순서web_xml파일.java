package filter.chap19;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * Servlet Filter implementation class Filter04_anotation으로는filter순서보장안됨
 */
@WebFilter("/Filter04_anotation으로는filter순서보장안됨")
public class Filter00_filter순서web_xml파일 implements Filter {

	// 어노테이션 주석처리하고, WEB-INF 폴더-> web.xml 파일에서 필터 순서를 설정한다.
	// 하지만, 실제로 많이 사용 안하니까, 알고만 있자.
}
