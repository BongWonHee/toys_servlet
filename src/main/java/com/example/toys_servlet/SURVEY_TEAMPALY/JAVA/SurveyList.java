package com.example.toys_servlet.SURVEY_TEAMPALY.JAVA;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.toys_servlet.SURVEY_TEAMPALY.JAVA.SurveyMethod;

@WebServlet(urlPatterns = "/surveyList")
public class SurveyList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter printWriter = response.getWriter();
        response.setContentType("text/html;charset=UTF8");

        try {

            SurveyMethod surveyMethod = new SurveyMethod();
            ArrayList arraylist = surveyMethod.questionlist();
            ArrayList arrayans = surveyMethod.answerList();
            HashMap hashlist = new HashMap<>();
            HashMap hashans = new HashMap<>();
            for (int i = 0; i < arraylist.size(); i++) {
                hashlist = (HashMap) arraylist.get(i);
                printWriter.println(hashlist.get("QUESTION"));
                for (int j = 0; j < arrayans.size(); j++) {
                    hashans = (HashMap) arrayans.get(j);
                    printWriter.println(hashans.get("ANSWER"));
                }
            }
            
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
