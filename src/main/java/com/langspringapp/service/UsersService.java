package com.langspringapp.service;

import com.langspringapp.model.Jezyki;
import com.langspringapp.model.Users;
import com.langspringapp.repository.JezykiRepository;
import com.langspringapp.repository.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UsersService {
    @Autowired
    private UsersRepository usersRepository;

    public List<Users> listAll() {
        return (List<Users>) usersRepository.findAll();
    }

    public Users findUsersByLogin(String login) {
        return usersRepository.findUsersByLogin(login);
    }


    public void save(Users user) {
        usersRepository.save(user);
    }

    public Users getUserById(Integer id) {
        return usersRepository.findById(id).get();
    }

    public void deleteUserById(Integer id) {
        usersRepository.deleteById(id);
    }
}
