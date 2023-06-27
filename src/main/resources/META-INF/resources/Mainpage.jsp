<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.css">
    <link rel="stylesheet" href="../css/commons.css">
    <link rel="stylesheet" href="../../static/HTML/surveyCSS.css">
</head>

<body>
    <div class="container-fluid mainpage">
        <!-- 상단 -->
        <!-- <%@ include file="/top_menus.jsp" %> -->
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
            <ul class=" my-navbar navbar navbar-light bg-light">
                <li>
                    <a class="text-success navbar-brand" href="./Mainpage.html">메인화면</a>
                </li>
                <li>
                    <a class="text-success navbar-brand" href="./Survey.html">설문하기</a>
                </li>
                <li>
                    <a class="text-success navbar-brand" href="./UserInfors.html">회원관리</a>
                </li>
                <li>
                    <a class="text-success navbar-brand" href="./SurveyStiatics.html">통계관리</a>
                </li>
                <li class="membership">
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