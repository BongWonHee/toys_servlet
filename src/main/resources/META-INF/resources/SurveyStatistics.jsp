<%@ page import="java.util.HashMap, java.util.ArrayList" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
        </head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">

        <body>
            <!-- <%@ include file="./commons/menubar.jsp" %> -->
            <style>
                .center-align {
                    text-align: center;
                }
            </style>
            <div class="container">
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th colspan="3">
                                <h1 class="center-align">설문참여자와 응답에 대한 통계</h1>
                            </th>
                        </tr>
                        <tr>
                            <th colspan="3">
                                <h4 class="center-align">-------------------- 설문에 참여한 참여자 List --------------------</h4>
                            </th>
                        </tr>
                    </thead>
                    <% ArrayList allList=new ArrayList<>(); %>
                    <% allList=(ArrayList)request.getAttribute("AllList"); %>
                            <tbody>
                                <% for(int i=0; i< allList.size(); i=i+1) { %>
                                    <% HashMap allhashMap=new HashMap<>();
                                        allhashMap = (HashMap) allList.get(i);
                                        %>
                                        <form >
                                            <tr>
                                                <td colspan="3" class="center-align">
                                                    <%= allhashMap.get("name") %>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th colspan="3" class="center-align"><h4>-------------------- 설문에 참여한 참여자 수 -------------------- </h4></th>
                                            </tr>
                                            <tr>
                                                <td colspan="3" class="center-align"><%= allhashMap.get("answer") %></td>
                                            </tr>
                                            <tr>
                                                <th colspan="3"><h4 class="center-align">-------------------- 문항당 응답 답항별 갯수 -------------------- </h4></th>
                                            </tr>
                                            <tr>
                                                <th class="center-align">문항</th>
                                                <th class="center-align">응답 답항</th>
                                                <th class="center-align">답항 횟 수</th>
                                            </tr>
                                               

                                                <tr>
                                                    <% ArrayList stiaticsList = (ArrayList)allhashMap.get("count"); %>
                                                    <% for (int j = 0; j < stiaticsList.size(); j = j + 1) { %>
                                                    <% HashMap hashMap = new HashMap();
                                                     hashMap = (HashMap) stiaticsList.get(j); %>                                               
                                                     <th><h5><%=hashMap.get("question")%></h5></th>
                                                     <th><%=hashMap.get("answer")%></th>
                                                     <th><%=hashMap.get("count")%></th>

                                            </tr>
                                            <% } %>
                                        </form>
                                        <% } %>
                            </tbody>
                </table>
            </div>
        </body>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        </html>

