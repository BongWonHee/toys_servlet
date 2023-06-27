package com.example.toys_servlet.SURVEY_TEAMPALY.JAVA;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.toys_servlet.common.Common;

@WebServlet(urlPatterns = "/userInfors")
public class UserInfors extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Common common = new Common();
            String query = "SELECT *\n" + //
                    "from user;";
            Statement statement = common.getStatement();
            ResultSet resultSet = statement.executeQuery(query);
            while(resultSet.next()){
                System.out.println(resultSet.getString("NAME"));
                System.out.println(resultSet.getString("USER_ID"));
                System.out.println(resultSet.getString("PASSWORD"));
            }


        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
