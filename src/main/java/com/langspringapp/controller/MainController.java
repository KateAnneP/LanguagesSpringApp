package com.langspringapp.controller;

import com.langspringapp.model.Users;
import com.langspringapp.repository.UsersRepository;
import com.langspringapp.service.LoginService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class MainController {

    private final LoginService loginService;

    @Autowired
    UsersRepository usersRepository;

    @GetMapping("/welcome")
    private String viewHomePage(Model model) {
        return "login";
    }

    @GetMapping("/")
    private String viewIndex(Model model) {return "index";}

    @PostMapping("/check_user")
    private String check_user(Users user, HttpSession session, Model model) {
        System.out.println(user.getLogin() + "/" + user.getHaslo());
        Users existingUser = usersRepository.findUsersByLoginAndHaslo(user.getLogin().toString(), user.getHaslo());
        return loginService.exisingUser(existingUser, session, model);
    }

    @GetMapping("/login")
    public String login(HttpSession session, Model model){
        Users currentUser = (Users) session.getAttribute("user");
        if(currentUser == null){
            model.addAttribute("login_error",false);
            model.addAttribute("klient",new Users());
            return "login";
        }
        else{
            return "redirect:/";
        }
    }

    @GetMapping("/logout")
    public String logout(HttpSession session, Model model) {
        Users currentUser = (Users) session.getAttribute("user");
        if(currentUser != null)
        {
            session.invalidate();
        }
        return "redirect:/welcome";
    }

}
