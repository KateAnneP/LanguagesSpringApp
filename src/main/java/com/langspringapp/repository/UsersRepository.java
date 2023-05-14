package com.langspringapp.repository;

import com.langspringapp.model.Users;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UsersRepository extends JpaRepository<Users, Integer> {
    Users findUsersByLoginAndHaslo(String login, String haslo);

    Users findUsersByLogin(String login);
}
