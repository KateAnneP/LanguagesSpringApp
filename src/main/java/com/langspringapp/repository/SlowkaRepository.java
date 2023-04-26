package com.langspringapp.repository;

import com.langspringapp.model.Slowka;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SlowkaRepository extends JpaRepository<Slowka, Integer> {
}
