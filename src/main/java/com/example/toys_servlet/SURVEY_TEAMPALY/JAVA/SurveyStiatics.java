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
@WebServlet(urlPatterns = "/surveyStiatics")
public class SurveyStiatics extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Common common = new Common();
            Statement statement = common.getStatement();  //workbench 접속

            System.out.println("----- 통 계 -----");

            //설문에 참여한 참여자들의 이름 나열(중복 이름 삭제)
            String query = "select DISTINCT `user`.`NAME`\n" + //
                    "from statistics\n" + //
                    "inner join `user`\n" + //
                    "on `user`.USER_ID = statistics.USER_ID;";
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                System.out.println("----- 설문 참여자 명단 : " + resultSet.getString("`user`.`NAME`"));
            }

            // //설문에 참여한 총 참여자 수 카운트
            // query = "select count(DISTINCT USER_ID) as CNT\n" + //
            //         "from statistics;";
            // resultSet = statement.executeQuery(query);
            // while (resultSet.next()) {
            //     System.out.println("----- 총 설문 참여자 : " + resultSet.getString("CNT"));
            // }

            // // 문항당 답항별 총 수
            // query = "select question.QUESTION, answer.ANSWER, count(answer.ANSWER) as CNT \n" + //
            //         "from statistics\n" + //
            //         "inner join question\n" + //
            //         "on question.QUESTION_ID = statistics.QUESTION_ID\n" + //
            //         "inner join answer\n" + //
            //         "on answer.ANSWER_ID=statistics.ANSWER_ID\n" + //
            //         "group by statistics.QUESTION_ID, statistics.ANSWER_ID;";
            // resultSet = statement.executeQuery(query);
            // while (resultSet.next()) {
            //     System.out.println("----- 문항당 답항별 총 수 : " + resultSet.getString("question.QUESTION" + "answer.ANSWER" + "CNT"));
            // }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
}
