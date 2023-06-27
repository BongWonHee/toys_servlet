<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <%@ include file="./commons/menubar.jsp" %>

 <div class="container-fluid ">
        <table class="table-bordered">
            <tr>
                <th>이름</th>
                <th>User ID</th>
                <th>Password</th>
            </tr>
            
            <% 
                for (HashMap<String, String> hashMap : arrayList) {
                    String name = hashMap.get("NAME");
                    String userId = hashMap.get("USER_ID");
                    String password = hashMap.get("PASSWORD");
                
                
            %>

            <tr>
                <td>
                    <%= name %>
                </td>
                <td>
                    <%= userId %>
                </td>
                <td>
                    <%= password %>
                </td>
            </tr>
            <% } %>
        </table>
    </div>

</body>
</html>