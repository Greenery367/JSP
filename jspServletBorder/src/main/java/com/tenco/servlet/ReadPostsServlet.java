package com.tenco.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/read-posts")
public class ReadPostsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ReadPostsServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 응답 처리  MIME TYPE 설정
		response.setContentType("text/html;charset=UTF-8");
		try (Connection conn=DBUtil.getConnection()){
			String sql="SELECT * FROM posts ORDER BY created_at DESC ";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			ResultSet rs=pstmt.executeQuery();
			
			request.setAttribute("resultSet", rs);
			request.getRequestDispatcher("readPosts.jsp").forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


}
