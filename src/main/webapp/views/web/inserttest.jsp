<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/views/includes/taglib.jsp" %>
<html>
<head>
    <title>Thêm User</title>
</head>
<body>

<h2>Thêm người dùng mới</h2>

<form action="/inserttest" method="post">
    <label>Username:</label>
    <input type="text" name="username" required><br><br>

    <label>Password:</label>
    <input type="password" name="password" required><br><br>

    <label>Email:</label>
    <input type="email" name="email" required><br><br>

    <label>Role:</label>
    <select name="role">
        <option value="user">User</option>
        <option value="admin">Admin</option>
    </select><br><br>

    <button type="submit">Thêm</button>
</form>

</body>
</html>
