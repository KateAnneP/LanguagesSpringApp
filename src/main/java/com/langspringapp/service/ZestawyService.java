package com.langspringapp.service;

import com.langspringapp.model.Jezyki;
import com.langspringapp.model.Zestawy;
import com.langspringapp.repository.JezykiRepository;
import com.langspringapp.repository.ZestawyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ZestawyService {
    @Autowired
    private ZestawyRepository zestawyRepository;

    public List<Zestawy> listAll() {
        return (List<Zestawy>) zestawyRepository.findAll();
    }


    public void save(Zestawy zestaw) {
        zestawyRepository.save(zestaw);
    }

    public Zestawy getSetById(Integer id) {
        return zestawyRepository.findById(id).get();
    }

    public void deleteSetById(Integer id) {
        zestawyRepository.deleteById(id);
    }
}
