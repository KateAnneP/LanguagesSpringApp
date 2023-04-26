package com.langspringapp.model;

import jakarta.persistence.*;

import java.util.Objects;

@Entity
@Table(name="zestawy")
public class Zestawy {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id")
    private int id;
    @Basic
    @Column(name = "nazwa")
    private String nazwa;
    @Basic
    @Column(name = "owner")
    private int owner;
    @Basic
    @Column(name = "jezyk")
    private int jezyk;

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

    public int getOwner() {
        return owner;
    }

    public void setOwner(int owner) {
        this.owner = owner;
    }

    public int getJezyk() {
        return jezyk;
    }

    public void setJezyk(int jezyk) {
        this.jezyk = jezyk;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Zestawy zestawy = (Zestawy) o;
        return id == zestawy.id && owner == zestawy.owner && jezyk == zestawy.jezyk && Objects.equals(nazwa, zestawy.nazwa);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, nazwa, owner, jezyk);
    }
}
