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
<div class="container-fluid mainpage">
    <!-- 상단 -->
    <table width="100%" class="mb-3 mt-5">
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
        <ul class="my-navbar navbar navbar-light bg-light">
            <li>
                <a class="text-success navbar-brand" href="/Mainpage.jsp">메인화면</a>
            </li>
            <li>
                <a class="text-success navbar-brand" href="/Survey.jsp">설문하기</a>
            </li>
            <li>
                <a class="text-success navbar-brand" href="http://192.168.0.94:8080/userInfors">회원관리</a>
            </li>
            <li>
                <a class="text-success navbar-brand" href="/SurveyStatistics.jsp">통계관리</a>
            </li>
            <li class="membership">
                <div class="login_out">
                    <div>
                        <a class="text-success navbar-brand" href="/SurveyLogin.jsp">로그인</a>
                    </div>
                    <div>
                        <a class="text-success navbar-brand" href="/logout">로그아웃</a>
                    </div>
                </div>
            </li>
        </ul>
    </table>