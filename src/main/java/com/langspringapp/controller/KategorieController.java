package com.langspringapp.controller;

import com.langspringapp.model.Jezyki;
import com.langspringapp.model.Kategorie;
import com.langspringapp.model.Slowka;
import com.langspringapp.service.JezykiService;
import com.langspringapp.service.KategorieService;
import com.langspringapp.service.SlowkaService;
import org.apache.commons.logging.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class KategorieController {
    @Autowired(required=true)
    private KategorieService kategorieService;

    @Autowired(required = true)
    private SlowkaService slowkaService;



    @GetMapping("/category")
    public String viewCategoryPage(Model model) {
        List<Kategorie> kategorieList = kategorieService.listAll();
        model.addAttribute("kategorieList", kategorieList);
        return "category";
    }

    @GetMapping("/category/add")
    public String showNewCategoryForm(Model model) {
        Kategorie kategoria = new Kategorie();
        model.addAttribute("kategoria", kategoria);
        return "new_category";
    }

    @PostMapping("/category/save")
    public String saveCategory(@ModelAttribute("kategoria") Kategorie kategoria) {
        kategorieService.save(kategoria);
        return "redirect:/category";
    }

    @GetMapping("/category/update/{id}")
    public String showFormForUpdate(@PathVariable(value="id") int id, Model model) {
        Kategorie kategoria = kategorieService.getCategoryById(id);
        model.addAttribute("kategoria", kategoria);
        return "update_category";
    }

    @GetMapping("/category/delete/{id}")
    public String deleteCategory(@PathVariable (value = "id") int id) {
        this.kategorieService.deleteCategoryById(id);
        return "redirect:/category";
    }

    //funkcja do wyświetlania słówek z kategorii
    @GetMapping("/category/overview/{id}")
    public String overviewCategory(@PathVariable (value = "id") int id, Model model) {
        List<Slowka> slowkaList = slowkaService.listAll();
        ArrayList<Slowka> slowkaWKategorii = new ArrayList<Slowka>();

        for (Slowka s: slowkaList) {
            if(s.getKategoria() == id)
            {
                slowkaWKategorii.add(s);
            }
        }
        model.addAttribute("slowkaWKategorii", slowkaWKategorii);
        model.addAttribute("id_zestawu",id);
        return "category_vocab";
    }

    @GetMapping("/category/overview/writing")
    public String writing(@ModelAttribute (value = "id_zestawu") int id, Model model) {
        int id_slowka = 0;
        List<Slowka> slowkaList = slowkaService.listAll();
        ArrayList<Slowka> slowkaWKategorii = new ArrayList<Slowka>();
        for (Slowka s : slowkaList) {
            if (s.getKategoria() == id) {
                slowkaWKategorii.add(s);
            }
        }
        String slowko = slowkaWKategorii.get(id_slowka).getSlowko();
        String tlumaczenie = slowkaWKategorii.get(id_slowka).getTlumaczenie();
        model.addAttribute("id_zestawu", id);
        model.addAttribute("id_slowka", id_slowka);
        model.addAttribute("slowko", slowko);
        model.addAttribute("tlumaczenie", tlumaczenie);
        return "writing";
    }

    @PostMapping("/category/overview/writingcheck")
    public String writingCheck(@ModelAttribute(value = "id_zestawu") int id, @ModelAttribute(value = "id_slowka") int id_slowka, @RequestParam(name="answer") String answer, Model model) {

        List<Slowka> slowkaList = slowkaService.listAll();
        ArrayList<Slowka> slowkaWKategorii = new ArrayList<Slowka>();
        for (Slowka s: slowkaList) {
            if(s.getKategoria() == id)
            {
                slowkaWKategorii.add(s);
            }
        }

        String tekst = "";
            if(!answer.equals(slowkaWKategorii.get(id_slowka).getSlowko()))
            {
                tekst = "Prawidłowa odpowiedź to: " + slowkaWKategorii.get(id_slowka).getSlowko();
            }
            else {
                tekst = "Brawo! To prawidłowa odpowiedź";
            }
        System.out.println("Odpowiedź: " + answer);
        id_slowka++;
        String slowko = slowkaWKategorii.get(id_slowka).getSlowko();
        String tlumaczenie = slowkaWKategorii.get(id_slowka).getTlumaczenie();
        model.addAttribute("id_zestawu",id);
        model.addAttribute("id_slowka",id_slowka);
        model.addAttribute("slowko",slowko);
        model.addAttribute("tlumaczenie", tlumaczenie);
        model.addAttribute("tekst",tekst);
        return "writing";



    }
}
