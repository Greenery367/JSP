package com.tenco.listeners;

import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.Enumeration;
import java.util.EventListener;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterRegistration;
import jakarta.servlet.FilterRegistration.Dynamic;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRegistration;
import jakarta.servlet.SessionCookieConfig;
import jakarta.servlet.SessionTrackingMode;
import jakarta.servlet.annotation.WebListener;
import jakarta.servlet.descriptor.JspConfigDescriptor;

/*
 * 리스너 사용해보기
 * 동작 트리거, web.xml 파일과 어노테이션 기반으로 설정 가능
 */
@WebListener
public class AppLifecycleListener implements ServletContextListener{
	
	private static final Logger logger=Logger.getLogger(AppLifecycleListener.class.getName());
	
	// 시간 포매터
	private String timeFormat() {
		// yyyy-mm-dd HH:mm:ss
		Date nowtime=new Date();
		SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy년 MM월 dd일 HH시 mm분 ss초");
		String printTime=dateFormat.format(nowtime);
		return printTime;
	}
	
	
	// 애플리케이션이 언제 시작을 했는지 로그, 파일을 남겨야 될 때 사용
	@Override
		public void contextInitialized(ServletContextEvent sce) {
			System.out.println("---------------------------");
			logger.info("웹 애플리케이션 시작됨 >>>"+timeFormat());
			System.out.println("---------------------------");
		}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		System.out.println("---------------------------");
		logger.info("웹 애플리케이션 종료됨 >>>"+timeFormat());
		System.out.println("---------------------------");
	}

}
