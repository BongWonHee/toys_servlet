<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Survey Stiatics</title>
</head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
<body>
    <style>
        .center-align {
            text-align: center;
        }
    </style>
    <div class="container">
        <%@ include file="./commons/menubar.jsp" %>
        <table class="table table-bordered table-hover">
           
            <thead>
                <tr>
                    <th colspan="3"><h1 class="center-align">설문참여자와 응답에 대한 통계</h1></th>
                </tr>
                <tr>
                    <th colspan="3"><h4 class="center-align">설문에 참여한 참여자 List</h4></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td colspan="3" class="center-align">홍길동</td>
                </tr>
                <tr>
                    <td colspan="3" class="center-align">이영미</td>
                </tr>
            <thead>
                <tr>
                    <th colspan="3" class="center-align"><h4>설문에 참여한 참여자 총 수</h4></th>
                </tr>
            </thead>
                <tr>
                    <td colspan="3" class="center-align">4</td>
                </tr>
                <thead>
                    <tr>
                        <th colspan="3"><h4 class="center-align"> 문항당 응답 답항별 총 수 </h4></th>
                    </tr>
                    <tr>
                        <th>문항</th>
                        <th>응답 답항</th>
                        <th>답항 횟 수</th>
                    </tr>
                </thead>
                <tr>
                    <td>1. 교수는 수업 전 강의 목표를 명확히 제시하였습니까?</td>
                    <td>(1)전혀 아니다.</td>
                    <td>2</td>
                </tr>
                <tr>
                    <td>1. 교수는 수업 전 강의 목표를 명확히 제시하였습니까?</td>
                    <td>(2)아니다.</td>
                    <td>1</td>
                </tr>
            </tbody>
        </table>
    </div>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</html>"