package com.example.toys_servlet.SURVEY_TEAMPALY.JAVA;

import java.io.IOException;
import java.sql.Array;
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

import com.example.toys_servlet.SURVEY_TEAMPALY.JAVA.daos.StiaticsDao;
import com.example.toys_servlet.common.Common;

@WebServlet(urlPatterns = "/surveyStiatics")
public class SurveyStiatics extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Common common = new Common();
            Statement statement = common.getStatement(); // workbench 접속
            ArrayList allList = new ArrayList<>();
            HashMap allhashMap = new HashMap();

            // 설문에 참여한 참여자들의 이름 나열(중복 이름 삭제)
            // daos 폴더의 StiaticsDao의 1번째 메소드????
            StiaticsDao statistics = new StiaticsDao();
            ArrayList first = statistics.getParticipant(statement);

            System.out.println();
            System.out.println();

            // 설문에 참여한 총 참여자 수 카운트
            // daos 폴더의 StiaticsDao의 2번째 메소드????
            Statement statement2 = common.getStatement();
            StiaticsDao respondents = new StiaticsDao();
            String second = respondents.getRespondents(statement2);
            System.out.println();
            

            // 문항당 답항별 총 수
            // daos 폴더의 StiaticsDao의 3번째 메소드????
            System.out.println("----- 문항당 답항별 총 수 ");
            StiaticsDao stiaticsDao = new StiaticsDao();
            ArrayList stiaticsList = stiaticsDao.selectAll();

            for (int i = 0; i < stiaticsList.size(); i = i + 1) {
                HashMap hashMap = new HashMap();
                hashMap = (HashMap) stiaticsList.get(i);
                System.out.println(hashMap.get("question") + "" + hashMap.get("answer") + "" + hashMap.get("count"));
            }

            allhashMap.put("name", first);
            allhashMap.put("answer", second);
            allhashMap.put("count", stiaticsList);
            allList.add(allhashMap);

            request.setAttribute("AllList", allList);

            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/SurveyStatistics.jsp"); // 가는 방향 결정남
            requestDispatcher.forward(request, response);

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

}
