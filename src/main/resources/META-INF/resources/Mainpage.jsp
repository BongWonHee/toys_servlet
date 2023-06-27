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
        <!-- 메뉴바 -->
        <%@ include file="./commons/menubar.jsp" %>
        <!-- 설문 세부 내용 -->
        <table class="mb-3 d-flex table-bordered">
            <ul class="pt-5">
                <li>
                    - 설문 홈페이지의 메인페이지입니다.
                </li>
                <li>
                    - 설명: 원하시는 항목을 상단의 메뉴에서 선택해 주시기 바랍니다.
                </li>
                <li>
                    - 참여자: #명이 응답하였습니다.
                </li>
            </ul>
        </table>

        <!-- 설문 내용 및 답변 -->

    </div>

</body>

</html>