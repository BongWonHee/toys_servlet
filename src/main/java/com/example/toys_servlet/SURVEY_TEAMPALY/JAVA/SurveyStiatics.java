package com.example.toys_servlet.SURVEY_TEAMPALY.JAVA;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = "/surveyStiatics")
public class SurveyStiatics extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
           
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
}
