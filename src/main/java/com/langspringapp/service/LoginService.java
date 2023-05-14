package com.langspringapp.service;

import com.langspringapp.model.Users;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class LoginService {

    public String exisingUser(Users user, HttpSession session, Model model) {
        if(user != null) {
            session.setAttribute("user", user);
            return "redirect:/";
        }
        else {
            model.addAttribute("login_error", "true");
            return "login";
        }
    }
}
