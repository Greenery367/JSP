package com.tenco.filters;

import java.io.IOException;

import jakarta.servlet.DispatcherType;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;

/*
 * 필터 클래스를 만드는 방법
 * 1. jakarta.servlet.Filter를 구현해야 한다. (javax.servlet.Filter <-톰캣 9버전)
 * 2. URL 패턴을 설정해야 한다. (web.xml / 어노테이션 기반 설정 가넝)
 * 
 */

@WebFilter(urlPatterns="/*",dispatcherTypes= {DispatcherType.REQUEST})
public class SimpleFilter implements Filter{

	// 필터가 생성될 때 초기화 작업을 수행하는 메서드!
	@Override
		public void init(FilterConfig filterConfig) throws ServletException {
			// 필요하다면 초기화 코드 작성
			System.out.println("SimpleFilter 초기화");
		}
	
	
	// 특정 URL 요청이 들어올 때 실행 또는 통과되는 메서드!
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("SimpleFilter doFilter() 메서드 호출됨.");
		// 다음 필터로 또는 서블릿으로 요청/응답 객체를 전달!
		chain.doFilter(request,response);
	}
	
	@Override
	public void destroy() {
		System.out.println("종료될 때 호출되는 메서드");
	}

}
