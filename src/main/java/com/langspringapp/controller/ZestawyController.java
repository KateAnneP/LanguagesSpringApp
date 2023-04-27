package com.langspringapp.controller;

import com.langspringapp.model.Jezyki;
import com.langspringapp.model.Zestawy;
import com.langspringapp.service.JezykiService;
import com.langspringapp.service.ZestawyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class ZestawyController {
    @Autowired(required=true)
    private ZestawyService zestawyService;

    @GetMapping("/sets")
    public String viewSetsPage(Model model) {
        List<Zestawy> zestawyList = zestawyService.listAll();
        model.addAttribute("zestawyList", zestawyList);
        return "sets";
    }

    @GetMapping("/sets/add")
    public String showNewSetForm(Model model) {
        Zestawy zestaw = new Zestawy();
        model.addAttribute("zestaw", zestaw);
        return "new_set";
    }

    @PostMapping("/sets/save")
    public String saveSet(@ModelAttribute("jezyk") Zestawy zestaw) {
        zestawyService.save(zestaw);
        return "redirect:/sets/";
    }

    @GetMapping("/sets/update/{id}")
    public String showFormForUpdate(@PathVariable(value="id") int id, Model model) {
        Zestawy zestaw = zestawyService.getSetById(id);
        model.addAttribute("zestaw", zestaw);
        return "update_set";
    }

    @GetMapping("/sets/delete/{id}")
    public String deleteSet(@PathVariable (value = "id") int id) {
        this.zestawyService.deleteSetById(id);
        return "redirect:/sets/";
    }
}
