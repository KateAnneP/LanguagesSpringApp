package com.langspringapp.model;

import jakarta.persistence.*;

import java.util.Objects;

@Entity
@Table(name="kategorie")
public class Kategorie {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id")
    private int id;
    @Basic
    @Column(name = "nazwa")
    private String nazwa;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNazwa() {
        return nazwa;
    }

    public void setNazwa(String nazwa) {
        this.nazwa = nazwa;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Kategorie kategorie = (Kategorie) o;
        return id == kategorie.id && Objects.equals(nazwa, kategorie.nazwa);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, nazwa);
    }
}
