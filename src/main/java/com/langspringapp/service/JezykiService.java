package com.langspringapp.service;

import com.langspringapp.model.Jezyki;
import com.langspringapp.repository.JezykiRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JezykiService {

    @Autowired
    private JezykiRepository jezykiRepository;

    public List<Jezyki> listAll() {
        return (List<Jezyki>) jezykiRepository.findAll();
    }


    public void save(Jezyki jezyki) {
        jezykiRepository.save(jezyki);
    }

    public Jezyki getJezykById(Integer id) {
        return jezykiRepository.findById(id).get();
    }

    public void deleteJezykById(Integer id) {
        jezykiRepository.deleteById(id);
    }
}
