package com.bookreview.com.book.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("book.do")
public class bookServel extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    //인코딩
    request.setCharacterEncoding("UTF-8");
    response.setContentType("text.html; charset=UTF-8");

    //요청 받은 변수 선언
    String command = request.getParameter("command");

    if (command.equals("searchpage")) {
        response.sendRedirect("searchpage.jsp");
    }
    }
}

