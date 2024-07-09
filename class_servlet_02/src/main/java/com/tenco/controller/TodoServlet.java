package com.tenco.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

// 주소 설계 - http://localhost:8080/s02/todo-insert
@WebServlet("/todo-insert")
public class TodoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public TodoServlet() {
        super();
    }
    
    // 정적 초기화 블록 - 단 한 번 호출
    static {
    	try {
    		// JDBC 드라이버 로드 (MySQL)
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// HTTP 메세지에서 데이터 추출하기
		// form 태그에서 name 속성이 있어야 값을 추출할 수 있다.
		String title=request.getParameter("title");
		String description=request.getParameter("description");
		
		// 데이터베이스 연동 코드를 작성해야 한다.
		String jdbcURL="jdbc:mysql://localhost:3306/db_todo?serverTimezone=Asia/Seoul";
		String username="root";
		String password="asd123";
		
		String insertTodoSQL=" INSERT INTO tb_todo(title,description) VALUES (?,?)";
		try (Connection conn=DriverManager.getConnection(jdbcURL,username,password);
				PreparedStatement pstmt=conn.prepareStatement(insertTodoSQL);){
			pstmt.setString(1, title);
			pstmt.setString(2, description);
			int rowCount=pstmt.executeUpdate();
			System.out.println("rowCount : "+rowCount);
		} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().print("Error : "+e.getMessage());
			return;
		}
		
		response.getWriter().println("Todo added successfully");
	}

}
