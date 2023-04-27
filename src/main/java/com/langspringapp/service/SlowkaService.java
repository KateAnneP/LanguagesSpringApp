package com.langspringapp.service;

import com.langspringapp.model.Jezyki;
import com.langspringapp.model.Slowka;
import com.langspringapp.repository.JezykiRepository;
import com.langspringapp.repository.SlowkaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SlowkaService {

    @Autowired
    private SlowkaRepository slowkaRepository;

    public List<Slowka> listAll() {
        return (List<Slowka>) slowkaRepository.findAll();
    }


    public void save(Slowka slowko) {
        slowkaRepository.save(slowko);
    }

    public Slowka getWordById(Integer id) {
        return slowkaRepository.findById(id).get();
    }

    public void deleteWordById(Integer id) {
        slowkaRepository.deleteById(id);
    }
}
