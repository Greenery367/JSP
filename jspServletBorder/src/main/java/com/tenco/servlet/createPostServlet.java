package com.tenco.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/create-post")
public class createPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public createPostServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 기본 값 설정 (언어 설정)
		request.setCharacterEncoding("UTF-8");
		
		// HTTP 요청 메세지에서 데이터 추출
		String title= request.getParameter("title");
		String content= request.getParameter("content");
		
		// 데이터 유효성 검사는 생략한다!
		
		try (Connection conn=DBUtil.getConnection();){
			String sql=" Insert into posts (title,content) values (?,?) ";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.executeUpdate();
			response.sendRedirect("result.jsp?message=create-success");
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("result.jsp?message=error");
		}
	}

}
