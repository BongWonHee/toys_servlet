package com.example.toys_servlet.SURVEY_TEAMPALY.JAVA;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.example.toys_servlet.common.Common;

public class SurveyMethod {
    public ArrayList questionlist() {
        ArrayList list = new ArrayList();
        Common common = new Common();
        Statement statement = common.getStatement();

        HashMap hashmap = new HashMap();
        try {
            String query = "SELECT * FROM db_usersurvey.question;";
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                hashmap = new HashMap<>();
                hashmap.put("QUESTION", resultSet.getString("QUESTION"));

                list.add(hashmap);
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return list;
    }

    public ArrayList answerList() {
        ArrayList list = new ArrayList();
        Common common = new Common();
        Statement statement = common.getStatement();

        HashMap hashmap = new HashMap();
        try {
            String query = "SELECT * FROM answer;";
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                hashmap = new HashMap<>();
                hashmap.put("ANSWER", resultSet.getString("ANSWER"));

                list.add(hashmap);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return list;
    }
}
