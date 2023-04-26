package com.langspringapp.model;

import jakarta.persistence.*;

import java.util.Objects;

@Entity
@Table(name="slowka")
public class Slowka {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id")
    private int id;
    @Basic
    @Column(name = "slowko")
    private String slowko;
    @Basic
    @Column(name = "tlumaczenie")
    private String tlumaczenie;
    @Basic
    @Column(name = "jezyk")
    private int jezyk;
    @Basic
    @Column(name = "zestaw")
    private int zestaw;
    @Basic
    @Column(name = "kategoria")
    private int kategoria;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSlowko() {
        return slowko;
    }

    public void setSlowko(String slowko) {
        this.slowko = slowko;
    }

    public String getTlumaczenie() {
        return tlumaczenie;
    }

    public void setTlumaczenie(String tlumaczenie) {
        this.tlumaczenie = tlumaczenie;
    }

    public int getJezyk() {
        return jezyk;
    }

    public void setJezyk(int jezyk) {
        this.jezyk = jezyk;
    }

    public int getZestaw() {
        return zestaw;
    }

    public void setZestaw(int zestaw) {
        this.zestaw = zestaw;
    }

    public int getKategoria() {
        return kategoria;
    }

    public void setKategoria(int kategoria) {
        this.kategoria = kategoria;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Slowka slowka = (Slowka) o;
        return id == slowka.id && jezyk == slowka.jezyk && zestaw == slowka.zestaw && kategoria == slowka.kategoria && Objects.equals(slowko, slowka.slowko) && Objects.equals(tlumaczenie, slowka.tlumaczenie);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, slowko, tlumaczenie, jezyk, zestaw, kategoria);
    }
}
