package com.example.toys_servlet.SURVEY_TEAMPALY.JAVA.daos;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.example.toys_servlet.common.Common;

public class StiaticsDao {
    public ArrayList getParticipant(Statement statement) {
         ArrayList NameList = new ArrayList();
        try {
            System.out.println("-----통계-----");
            System.out.println();
            // 설문에 참여한 참여자들의 이름 나열(중복 이름 삭제)
            String queryA = "select DISTINCT user.NAME\n" + //
                    "from statistics\n" + //
                    "inner join `user`\n" + //
                    "on `user`.USER_ID = statistics.USER_ID;";
            ResultSet resultSetA = statement.executeQuery(queryA);
            while (resultSetA.next()) {
            String name = resultSetA.getString("NAME");
            NameList.add(name);
            System.out.print("----- 설문 참여자 명단 : ");
            System.out.print(resultSetA.getString("NAME") + " " + " ");
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return NameList;
    }

    // 설문에 참여한 총 참여자 수 카운트
    public String getRespondents(Statement statement) {
        String count = "";
        try {
            String queryB = "select count(DISTINCT USER_ID) as CNT\n" + //
                    "from statistics;";
            ResultSet resultSetB = statement.executeQuery(queryB);
            while (resultSetB.next()) {
                System.out.println("----- 총 설문 참여자 : " + resultSetB.getString("CNT"));
                count = resultSetB.getString("CNT");
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return count;
    }

    public ArrayList selectAll() {
        ArrayList arrayList = new ArrayList();
        try {
            Common common = new Common();
            Statement statement = common.getStatement(); // workbench 접속

            String query = "select question.QUESTION, answer.ANSWER, count(answer.ANSWER) as CNT\n" + //
                    "from statistics\n" + //
                    "inner join question\n" + //
                    "on question.QUESTION_ID = statistics.QUESTION_ID\n" + //
                    "inner join answer\n" + //
                    "on answer.ANSWER_ID=statistics.ANSWER_ID\n" + //
                    "group by statistics.QUESTION_ID, statistics.ANSWER_ID;";
            ResultSet resultSet = statement.executeQuery(query);

            HashMap hashMap = new HashMap(); // 내부에서 사용할 애. while 문 돌때마다 getString컴퍼니_ID를 넣어준다..?
            while (resultSet.next()) {
                hashMap = new HashMap();
                hashMap.put("question", resultSet.getString("QUESTION")); // 1 column값
                hashMap.put("answer", resultSet.getString("ANSWER")); // 2 column값
                hashMap.put("count", resultSet.getString("CNT")); // 3 column값
                arrayList.add(hashMap);
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        return arrayList;
    }

}
