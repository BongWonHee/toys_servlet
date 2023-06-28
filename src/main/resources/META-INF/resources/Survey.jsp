<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.css">
        <link rel="stylesheet" href="../css/commons.css">
        <link rel="stylesheet" href="/HTML/surveyCSS.css">
    </head>

    <body>
        <div class="container-fluid mainpage">
            <!-- 상단 -->
            <%@ include file="./commons/menubar.jsp" %>
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
                <form action="">
                    <table width="100%" class="surveytable table-bordered mt-3 qna">
                        <thead>
                            다음은 설문 내용입니다.
                        </thead>
                        <tbody>

                            <tr>
                                <td>
                                    1. 교수는 수업 전 강의 목표를 명확히 제시하였습니까?
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label><input type="radio" name="question1" id="" value="ANSWER_01"> (1)전혀 아니다 </label>
                                    <label><input type="radio" name="question1" id="" value="ANSWER_02"> (2)아니다 </label>
                                    <label><input type="radio" name="question1" id="" value="ANSWER_03"> (3)그렇다 </label>
                                    <label><input type="radio" name="question1" id="" value="ANSWER_04"> (4)매우 그렇다 </label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    2. 강의의 내용은 체계적이고 성의있게 구성되었는가?
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label><input type="radio" name="question2" id="" value="ANSWER_01"> (1)전혀 아니다 </label>
                                    <label><input type="radio" name="question2" id="" value="ANSWER_02"> (2)아니다 </label>
                                    <label><input type="radio" name="question2" id="" value="ANSWER_03"> (3)그렇다 </label>
                                    <label><input type="radio" name="question2" id="" value="ANSWER_04"> (4)매우 그렇다 </label>
                                </td>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    3. 교수는 강의 내용에 대해 전문적 지식이 있었는가?
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label><input type="radio" name="question3" id="" value="ANSWER_01"> (1)전혀 아니다 </label>
                                    <label><input type="radio" name="question3" id="" value="ANSWER_02"> (2)아니다 </label>
                                    <label><input type="radio" name="question3" id="" value="ANSWER_03"> (3)그렇다 </label>
                                    <label><input type="radio" name="question3" id="" value="ANSWER_04"> (4)매우 그렇다 </label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    4. 강의 진행 속도는 적절하였는가?
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label><input type="radio" name="question4" id="" value="ANSWER_01"> (1)전혀 아니다 </label>
                                    <label><input type="radio" name="question4" id="" value="ANSWER_02"> (2)아니다 </label>
                                    <label><input type="radio" name="question4" id="" value="ANSWER_03"> (3)그렇다 </label>
                                    <label><input type="radio" name="question4" id="" value="ANSWER_04"> (4)매우 그렇다 </label>
                                </td>
                            </tr>


                        </tbody>
                    </table>
                    <button type="submit" formaction="/surveyStiatics">제출</button>
                    <button type="reset">RESET</button>
                </form>
        </div>

    </body>

    </html>