package com.example.toys_servlet.SURVEY_TEAMPALY.JAVA;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter(urlPatterns = "/surveyLogin")
public class SurveyLogin implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        String userid = request.getParameter("id");
        String password = request.getParameter("password");

        // display

        // login 할때 jsession 있는지 판단해서 있으면 만들지 않고 없으면 만들어줌.
        HttpSession httpSession = ((HttpServletRequest) request).getSession(false);
        String usernamesession = (String) httpSession.getAttribute("id");
        if (httpSession != null && usernamesession != null) { // jsession 있음 로그인 됨
            httpSession.getAttribute("id");
            httpSession.getAttribute("password");
            httpSession = ((HttpServletRequest) request).getSession();// 방어코드 임.
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/SurveyLogin.jsp");
            requestDispatcher.forward(request, response);

        } else { // jsession 없음 로그인이 안됨.
            if ("홍길동".equals(userid) && "1234".equals(password)) {
                httpSession = ((HttpServletRequest) request).getSession();// 방어코드 임.
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Survey.jsp");
                requestDispatcher.forward(request, response);
            } else if ("박영희".equals(userid) && "5678".equals(password)) {
                httpSession = ((HttpServletRequest) request).getSession();// 방어코드 임.
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Survey.jsp");
                requestDispatcher.forward(request, response);

            } else if ("김철수".equals(userid) && "91011".equals(password)) {
                httpSession = ((HttpServletRequest) request).getSession();// 방어코드 임.
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Survey.jsp");
                requestDispatcher.forward(request, response);
            } else if ("이영미".equals(userid) && "1213".equals(password)) {
                httpSession = ((HttpServletRequest) request).getSession();// 방어코드 임.
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Survey.jsp");
                requestDispatcher.forward(request, response);
            } else {
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/Survey.jsp");
                requestDispatcher.forward(request, response);
            }
        }
    }

}
