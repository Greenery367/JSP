package com.tenco.listeners;

import java.util.logging.Logger;

import jakarta.servlet.annotation.WebListener;
import jakarta.servlet.http.HttpSessionEvent;
import jakarta.servlet.http.HttpSessionListener;

/*
 * 세션이 생성될 때/감지할 때 사용! => 리스너 등록
 */
@WebListener
public class MySessionListener implements HttpSessionListener{

	private static final Logger logger=
			Logger.getLogger(MySessionListener.class.getName());
	
	
	@Override
	public void sessionCreated(HttpSessionEvent se) {
		// 세션 생성 시 실행됨
		logger.info("새로운 세션이 생성 됨 : "+se.getSession().getId());
		se.getSession().setAttribute("LoginTime", System.currentTimeMillis());
	}
	
	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		// 세션 소멸 시 실행됨
		Long loginTime=(Long)se.getSession().getAttribute("LoginTime");
		Long logoutTime=System.currentTimeMillis();
		if(loginTime!=null) {
			Long sessionDurationMs=logoutTime-loginTime; // 접속시간 계산 (밀리초 단위)
			double sessionDurationMsSec=sessionDurationMs/1000; // 초 단위로 변환
			System.out.println("----------------------------------");
			System.out.println("세션 지속 시간 : "+sessionDurationMsSec);
			System.out.println("----------------------------------");
		}
	}
	
}
