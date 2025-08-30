<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/views/includes/taglib.jsp" %>

<html>
<head>
    <title>User List</title>
</head>
<body>
<h2>Danh sách người dùng</h2>
<table border="1" cellpadding="5">
    <tr>
        <th>ID</th>
        <th>Username</th>
        <th>Password</th>
        <th>Email</th>
        <th>Role</th>
        <th>Action</th>
    </tr>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.id}</td>
            <td>${user.username}</td>
            <td>${user.password}</td>
            <td>${user.email}</td>
            <td>${user.role}</td>
            <td>
                <form action="/deletetest" method="post">
                    <input type="hidden" name="userId" value="${user.id}">
                    <button type="submit">Delete</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
<c:if test="${msg == 'delete_success'}">
    <script>
        alert("Xóa người dùng thành công!");
        window.location.href = "/home";
    </script>
</c:if>
