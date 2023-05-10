package com.langspringapp.controller;

import com.langspringapp.model.Jezyki;
import com.langspringapp.model.Kategorie;
import com.langspringapp.model.Slowka;
import com.langspringapp.service.JezykiService;
import com.langspringapp.service.KategorieService;
import com.langspringapp.service.SlowkaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.ArrayList;
import java.util.List;

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
        return "category_vocab";
    }

    //funkcja do pisania
//    @GetMapping("/category/overview/writing/{id}/{id_slowka}")
//    public String writingCategory(@PathVariable (value = "id") int id, Model model) {
//        List<Slowka> slowkaList = slowkaService.listAll();
//        ArrayList<Slowka> slowkaWKategorii = new ArrayList<Slowka>();
//        for (Slowka s: slowkaList) {
//            if(s.getKategoria() == id)
//            {
//                slowkaWKategorii.add(s);
//            }
//        }
//
//        return
//    }
}
