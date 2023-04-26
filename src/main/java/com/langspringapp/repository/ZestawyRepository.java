package com.langspringapp.repository;

import com.langspringapp.model.Zestawy;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ZestawyRepository extends JpaRepository<Zestawy, Integer> {
}
