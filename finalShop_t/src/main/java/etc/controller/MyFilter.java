package etc.controller;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class MyFilter implements Filter {

	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain chain)
			throws IOException, ServletException {
		
		chain.doFilter(arg0, arg1);   //실행하지 않으면 다음 필터 또는 서블릿도 실행이 안됨..
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
	}

}
