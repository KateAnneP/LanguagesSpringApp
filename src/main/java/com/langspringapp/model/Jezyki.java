package com.langspringapp.model;

import jakarta.persistence.*;

import java.util.Objects;

@Entity
@Table(name="jezyki")
public class Jezyki {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id")
    private int id;
    @Basic
    @Column(name = "jezyk")
    private String jezyk;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getJezyk() {
        return jezyk;
    }

    public void setJezyk(String jezyk) {
        this.jezyk = jezyk;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Jezyki jezyki = (Jezyki) o;
        return id == jezyki.id && Objects.equals(jezyk, jezyki.jezyk);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, jezyk);
    }
}
