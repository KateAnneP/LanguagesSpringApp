package com.langspringapp.model;

import jakarta.persistence.*;

import java.util.Objects;

@Entity
@Table(name="users")
public class Users {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id")
    private int id;
    @Basic
    @Column(name = "login")
    private String login;
    @Basic
    @Column(name = "haslo")
    private String haslo;
    @Basic
    @Column(name = "rola")
    private int rola;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getHaslo() {
        return haslo;
    }

    public void setHaslo(String haslo) {
        this.haslo = haslo;
    }

    public int getRola() {
        return rola;
    }

    public void setRola(int rola) {
        this.rola = rola;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Users users = (Users) o;
        return id == users.id && rola == users.rola && Objects.equals(login, users.login) && Objects.equals(haslo, users.haslo);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, login, haslo, rola);
    }
}
