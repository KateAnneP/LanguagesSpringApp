package com.langspringapp.controller;

import com.langspringapp.model.Jezyki;
import com.langspringapp.model.Slowka;
import com.langspringapp.service.JezykiService;
import com.langspringapp.service.SlowkaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class SlowkaController {
    @Autowired(required=true)
    private SlowkaService slowkaService;

    @GetMapping("/vocab")
    public String viewVocabPage(Model model) {
        List<Slowka> slowkaList = slowkaService.listAll();
        model.addAttribute("slowkaList", slowkaList);
        return "vocab";
    }

    @GetMapping("/vocab/add")
    public String showNewVocabForm(Model model) {
        Slowka slowko = new Slowka();
        model.addAttribute("slowko", slowko);
        return "new_word";
    }

    @PostMapping("/vocab/save")
    public String saveVocab(@ModelAttribute("slowko") Slowka slowko) {
        slowkaService.save(slowko);
        return "redirect:/vocab/";
    }

    @GetMapping("/vocab/update/{id}")
    public String showFormForUpdate(@PathVariable(value="id") int id, Model model) {
        Slowka slowko = slowkaService.getWordById(id);
        model.addAttribute("slowko", slowko);
        return "update_word";
    }

    @GetMapping("/vocab/delete/{id}")
    public String deleteVocab(@PathVariable (value = "id") int id) {
        this.slowkaService.deleteWordById(id);
        return "redirect:/vocab/";
    }
}
