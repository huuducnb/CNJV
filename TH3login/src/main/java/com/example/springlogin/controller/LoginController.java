package com.example.springlogin.controller;

import com.example.springlogin.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class LoginController {

    @GetMapping("/login")
    public String showLoginForm(Model model) {
        model.addAttribute("user", new User());
        return "login";
    }

    @PostMapping("/login")
    public String loginUser(@ModelAttribute User user, Model model) {
        // Xác thực tài khoản (tạm thời hard-code)
        if ("admin".equals(user.getUsername()) && "1234".equals(user.getPassword())) {
            model.addAttribute("message", "Đăng nhập thành công!");
            return "welcome";
        } else {
            model.addAttribute("message", "Sai tên đăng nhập hoặc mật khẩu!");
            return "login";
        }
    }
}
