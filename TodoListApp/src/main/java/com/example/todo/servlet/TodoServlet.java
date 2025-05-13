package com.example.todo.servlet;


import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class TodoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<String> todoList = (List<String>) session.getAttribute("todoList");
        
        if (todoList == null) {
            todoList = new ArrayList<>();
        }

        String action = request.getParameter("action");
        String item = request.getParameter("item");

        if ("add".equals(action) && item != null && !item.trim().isEmpty()) {
            todoList.add(item);
        } else if ("delete".equals(action) && item != null) {
            todoList.remove(item);
        }

        session.setAttribute("todoList", todoList);
        response.sendRedirect("views/todo.jsp");
    }
}
