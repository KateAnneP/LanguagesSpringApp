package com.langspringapp.service;

import com.langspringapp.model.Jezyki;
import com.langspringapp.model.Kategorie;
import com.langspringapp.repository.JezykiRepository;
import com.langspringapp.repository.KategorieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class KategorieService {

    @Autowired
    private KategorieRepository kategorieRepository;

    public List<Kategorie> listAll() {
        return (List<Kategorie>) kategorieRepository.findAll();
    }


    public void save(Kategorie kategoria) {
        kategorieRepository.save(kategoria);
    }

    public Kategorie getCategoryById(Integer id) {
        return kategorieRepository.findById(id).get();
    }

    public void deleteCategoryById(Integer id) {
        kategorieRepository.deleteById(id);
    }
}
