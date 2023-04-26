package com.langspringapp.controller;

import com.langspringapp.model.Jezyki;
import com.langspringapp.service.JezykiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class JezykiController {
    @Autowired(required=true)
    private JezykiService jezykiService;

    @GetMapping("/lang")
    public String viewHomePage(Model model) {
        List<Jezyki> jezykiList = jezykiService.listAll();
        model.addAttribute("jezykiList", jezykiList);
        return "lang";
    }

    @GetMapping("/lang/add")
    public String showNewJezykForm(Model model) {
        Jezyki jezyk = new Jezyki();
        model.addAttribute("jezyk", jezyk);
        return "new_jezyk";
    }

    @PostMapping("/lang/save")
    public String saveJezyk(@ModelAttribute("jezyk") Jezyki jezyk) {
        jezykiService.save(jezyk);
        return "redirect:/lang/";
    }

    @GetMapping("/lang/update/{id}")
    public String showFormForUpdate(@PathVariable(value="id") int id, Model model) {
        Jezyki jezyk = jezykiService.getJezykById(id);
        model.addAttribute("jezyk", jezyk);
        return "update_jezyk";
    }

    @GetMapping("/lang/delete/{id}")
    public String deleteCourse(@PathVariable (value = "id") int id) {

        this.jezykiService.deleteJezykById(id);
        return "redirect:/lang/";
    }
}
