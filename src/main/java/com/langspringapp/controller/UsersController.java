package com.langspringapp.controller;

import com.langspringapp.model.Jezyki;
import com.langspringapp.model.Users;
import com.langspringapp.service.JezykiService;
import com.langspringapp.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class UsersController {
    @Autowired(required=true)
    private UsersService usersService;

    @GetMapping("/users")
    public String viewUsersPage(Model model) {
        List<Users> usersList = usersService.listAll();
        model.addAttribute("usersList", usersList);
        return "users";
    }

    @GetMapping("/users/add")
    public String showNewUserForm(Model model) {
        Users user = new Users();
        model.addAttribute("user", user);
        return "new_user";
    }

    @PostMapping("/users/save")
    public String saveUser(@ModelAttribute("jezyk") Users user) {
        usersService.save(user);
        return "redirect:/users";
    }

    @GetMapping("/users/update/{id}")
    public String showFormForUpdate(@PathVariable(value="id") int id, Model model) {
        Users user = usersService.getUserById(id);
        model.addAttribute("user", user);
        return "update_user";
    }

    @GetMapping("/users/delete/{id}")
    public String deleteUser(@PathVariable (value = "id") int id) {
        this.usersService.deleteUserById(id);
        return "redirect:/users";
    }
}
