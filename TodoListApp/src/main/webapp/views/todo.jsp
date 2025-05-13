<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Danh sách công việc</title>
</head>
<body>
    <h2>Danh sách công việc</h2>
    <form action="../TodoServlet" method="post">
        <input type="text" name="item" placeholder="Nhập công việc" required>
        <button type="submit" name="action" value="add">Thêm</button>
    </form>
    <ul>
        <% 
            java.util.List<String> todoList = (java.util.List<String>) session.getAttribute("todoList");
            if (todoList != null) {
                for (String item : todoList) {
        %>
            <li><%= item %></li>
        <%      }
            } else {
        %>
            <li>Không có công việc</li>
        <% } %>
    </ul>
</body>
</html>