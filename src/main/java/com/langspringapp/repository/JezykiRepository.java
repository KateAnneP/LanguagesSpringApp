package com.langspringapp.repository;

import com.langspringapp.model.Jezyki;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface JezykiRepository extends JpaRepository<Jezyki, Integer> {
}
