<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page import="java.util.HashMap" %>
        <%@ page import="java.util.ArrayList" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Document</title>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
            </head>

            <body>
                <%@ include file="./commons/menubar.jsp" %>

                    <div class="container-fluid ">
                        <table class="table-bordered">
                            <tr>
                                <th>이름</th>
                                <th>응답자 상세내역</th>
                            </tr>
                            <% ArrayList<HashMap<String, String>> arrayList = (ArrayList<HashMap<String, String>>)
                                    request.getAttribute("arrayList");
                                    for (HashMap<String, String> hashMap : arrayList) {
                                        String name = hashMap.get("NAME");
                                        String userID = hashMap.get("USER_ID");
                                        String password = hashMap.get("PASSWORD");
                                        %>

                                        <tr>
                                            <td>
                                                <%= name %>
                                            </td>
                                            <td>
                                                
                                                <a data-bs-toggle="modal" href="#modalTarget-<%= userID %>" 
                                                    class="btn btn-primary"> 자세히 보기</a>
                                                <div class="modal" id="modalTarget-<%= userID %>">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                            <div class="modal-header">설문 참여자 상세내역 보기
                                                            </div>
                                                            <div class="modal-body">
                                                                userID: <%= userID %>
                                                                    Password: <%= password %>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button data-bs-dismiss="modal"
                                                                    class="btn btn-secondary"> 닫기 </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <% } %>
                        </table>
                    </div>

            </body>

            </html>