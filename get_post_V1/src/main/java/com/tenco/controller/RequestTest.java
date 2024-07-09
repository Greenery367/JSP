package com.tenco.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


// http://localhost:8080/gp/req-test
@WebServlet("/req-test")
public class RequestTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public RequestTest() {
        super();
    }

    // http://localhost:8080/gp/req-test
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// http 메서드 <--- GET 방식일 때 동작한다.
		// 요청을 받고, 응답시에 MIME TYPE을 text/html 형식으로 내려주려고 한다.
		response.setContentType("text/html; charset=UTF-8");
		
		// HTTP 요청 메세지의 시작줄에 /req-test?name="홍길동"
		String name=request.getParameter("name");
		String greeting="Hello,"+(name!=null ? name : "배고파유...")+" !!";
		response.getWriter().print("<html><body><h2>"+greeting+"</h2></body></html>");
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 요청을 받아서 (인증 검사, 요청 값들의 유효성 검사)
		
		// HTTP 요청 바디에서 데이터를 추출
		response.setContentType("text/html;");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		
		// 보통 DB에 접근해서 CRUD 작업
		
		response.getWriter().write("<html>");
		response.getWriter().write("<head>");
		response.getWriter().write("</head>");
		response.getWriter().write("<body>");
		response.getWriter().write("<h1>");
		response.getWriter().write("<p>");
		response.getWriter().write("name : "+name);
		response.getWriter().write("</br>");
		response.getWriter().write("email : "+email);
		response.getWriter().write("</p>");
		response.getWriter().write("</h1>");
		response.getWriter().write("</body>");
		response.getWriter().write("<html>");
		
		
		
		
	}

}
