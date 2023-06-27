package com.example.toys_servlet.SURVEY_TEAMPALY.JAVA;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet(urlPatterns = "/logout")
public class Logout extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       try {
          // expired session
            HttpSession httpSession = request.getSession();
            httpSession.invalidate(); 
          
            Cookie[] cookies = request.getCookies();
            for (Cookie cookie : cookies) {
                String name = cookie.getName();
                // String values = cookie.getValue();
                // 쿠키삭제
                if (name.equals("JSESSIONID")) { // 쿠키 삭제 - Client side delete
                    // 쿠키삭제
                    cookie.setMaxAge(0);
                    response.addCookie(cookie);
                }
            }

       } catch (Exception e) {
        System.out.println(e.getMessage());
       }
    }
}
