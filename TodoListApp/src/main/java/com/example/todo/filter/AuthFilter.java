package com.example.todo.filter;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class AuthFilter implements Filter {
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpSession session = req.getSession(false);

        if (session == null || session.getAttribute("loggedIn") == null) {
            ((HttpServletResponse) response).sendRedirect("views/login.jsp");
        } else {
            chain.doFilter(request, response);
        }
    }
}
