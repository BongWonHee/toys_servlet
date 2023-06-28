<<<<<<< HEAD:src/main/resources/META-INF/resources/SurveyList.jsp
<%@ page import="java.util.HashMap, java.util.ArrayList" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <%@ import="com.example.toys_servlet.SURVEY_TEAMPALY.JAVA.SurveyMethod" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>SuveyList</title>
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.css">
                <link rel="stylesheet" href="../css/commons.css">
                <link rel="stylesheet" href="../../static/HTML/surveyCSS.css">
            </head>

            <body>
                <div class="container-fluid mainpage">
                    <!-- 상단 -->
                    <table width="100%" class="mb-3 mt-3">
                        <tbody class="">
                            <tr>
                                <td width="400">
                                    image
                                </td>
                                <td class="page-title text-center">
                                    <h1>설문 홈페이지</h1>
                                </td>
                                <td width="300">
                                <td class="membership">
                                    image
                                </td>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- 메뉴바 -->
                    <table>
                        <ul class=" my-navbar navbar navbar-light bg-light">
                            <li>
                                <a class="text-success navbar-brand" href="">설문하기</a>
                            </li>
                            <li>
                                <a class="text-success navbar-brand" href="">회원관리</a>
                            </li>
                            <li>
                                <a class="text-success navbar-brand" href="">통계관리</a>
                            </li>


                            <li>
                                <div class="login_out">
                                    <div>
                                        <a class="text-success navbar-brand" href="">로그인</a>
                                    </div>
                                    <div>
                                        <a class="text-success navbar-brand" href="">로그아웃</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </table>
                    <!-- 설문 세부 내용 -->
                    <table class="mb-3">
                        <ul class="pt-2 ">
                            <li>
                                - 제목: 설문 홈페이지
                            </li>
                            <li>
                                - 설명: 설문 홈페이지입니다.
                            </li>
                            <li>
                                - 참여자: #명이 응답하였습니다.
                            </li>
                        </ul>
                    </table>

                    <!-- 설문 내용 및 답변 -->
                    <table width="100%" class="table-bordered mt-3 qna">
                        <thead>
                            다음은 설문 내용입니다.
                        </thead>
                        <tbody>
                            <tr>

                                <% SurveyMethod surveyMethod=new SurveyMethod(); %>
                                    <% SurveyMethod surveyMethod=new SurveyMethod(); %>
                                        <% ArrayList arraylist=surveyMethod.questionlist();%>
                                            <% ArrayList arrayans=surveyMethod.answerList();%>
                                                <% HashMap hashlist=new HashMap<>();%>
                                                    <% HashMap hashans=new HashMap<>();%>


                                                        <%for (int i=0; i < arraylist.size(); i++) {%>
                                                            <% hashlist=(HashMap) arraylist.get(i); %>
                                                                <td>
                                                                    <%=hashans.get("QUESTION")%>
                                                                </td>
                                                                <% for (int j=0; j < arrayans.size(); j++) {%>
                                                                    <% hashans=(HashMap) arrayans.get(j); %>
                                                                        <td>
                                                                            <%=hashans.get("ANSWER")%>
                                                                        </td>
                                                                        <% } %>
                                                                            <% } %>
                            </tr>
                        </tbody>
                    </table>
                </div>

            </body>

            </html>
=======
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <%@ include file="./commons/menubar.jsp" %>
</body>
</html>
>>>>>>> 198dfa8ffc01f89a2e2941b0faa7a0fe8eee64a2:src/main/resources/META-INF/resources/SurveyStatistics.jsp
