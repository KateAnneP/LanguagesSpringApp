//package com.langspringapp.service;
//
//import com.langspringapp.model.Users;
//import com.langspringapp.repository.UsersRepository;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.stereotype.Service;
//
//@Service
//public class UserServiceImpl extends UsersService {
//
//    @Autowired
//    private UsersRepository usersRepository;
//
//    @Autowired
//    private BCryptPasswordEncoder bCryptPasswordEncoder;
//
//    @Override
//    public Users findUsersByLogin(String login) {
//        return usersRepository.findUsersByLogin(login);
//    }
//}
