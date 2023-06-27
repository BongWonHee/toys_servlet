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
                    <table width="100%" class="table-bordered mt-3 qna">
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
                                    <input type="radio" name="answer1" id="" value="never">
                                    <label for="answer1"> (1)전혀 아니다 </label>
                                    <input type="radio" name="answer1" id="" value="hardly">
                                    <label for="answer1"> (2)아니다 </label>
                                    <input type="radio" name="answer1" id="" value="mostly">
                                    <label for="answer1"> (3)그렇다 </label>
                                    <input type="radio" name="answer1" id="" value="always">
                                    <label for="answer1"> (4)매우그렇다 </label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    2. 강의의 내용은 체계적이고 성의있게 구성되었는가?
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="radio" name="answer2" id="" value="never">
                                    <label for="answer2"> (1)전혀 아니다 </label>
                                    <input type="radio" name="answer2" id="" value="hardly">
                                    <label for="answer2"> (2)아니다 </label>
                                    <input type="radio" name="answer2" id="" value="mostly">
                                    <label for="answer2"> (3)그렇다 </label>
                                    <input type="radio" name="answer2" id="" value="always">
                                    <label for="answer2"> (4)매우그렇다 </label>
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
                                    <input type="radio" name="answer" id="" value="">
                                    <label for="answer"> (1)전혀 아니다 </label>
                                    <input type="radio" name="answer" id="" value="">
                                    <label for="answer"> (2)아니다 </label>
                                    <input type="radio" name="answer" id="" value="">
                                    <label for="answer"> (3)그렇다 </label>
                                    <input type="radio" name="answer" id="" value="">
                                    <label for="answer"> (4)매우그렇다 </label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    4. 강의 진행 속도는 적절하였는가?
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="radio" name="answer" id="" value="">
                                    <label for="answer"> (1)전혀 아니다 </label>
                                    <input type="radio" name="answer" id="" value="">
                                    <label for="answer"> (2)아니다 </label>
                                    <input type="radio" name="answer" id="" value="">
                                    <label for="answer"> (3)그렇다 </label>
                                    <input type="radio" name="answer" id="" value="">
                                    <label for="answer"> (4)매우그렇다 </label>
                                </td>
                            </tr>


                        </tbody>
                    </table>
                    <button type="submit">SUBMIT</button>
                </form>
        </div>

    </body>

    </html>