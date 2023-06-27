package com.example.toys_servlet.SURVEY_TEAMPALY.JAVA;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
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
        ArrayList arrayList = new ArrayList<>();
                try {
            Common common = new Common();
            String query = "SELECT *\n" + //
                    "from user;";
            Statement statement = common.getStatement();
            ResultSet resultSet = statement.executeQuery(query);
            HashMap hashMap = new HashMap<>();
            while(resultSet.next()){
                hashMap = new HashMap();
                hashMap.put("NAME", resultSet.getString("NAME"));
                hashMap.put("USER_ID", resultSet.getString("USER_ID"));
                hashMap.put("PASSWORD", resultSet.getString("PASSWORD"));
                arrayList.add(hashMap);
            }
            RequestDispatcher dispatcher = request.getRequestDispatcher("/UserInfors.jsp");
            dispatcher.forward(request, response);

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
