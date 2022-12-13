package com.pdb.ssm.model;

public class MutationsAffectingStatistics {
    private Integer id;

    private String ptmsites;

    private Integer cancer;

    private Integer disease;

    private Integer population;

    private Integer total;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPtmsites() {
        return ptmsites;
    }

    public void setPtmsites(String ptmsites) {
        this.ptmsites = ptmsites == null ? null : ptmsites.trim();
    }

    public Integer getCancer() {
        return cancer;
    }

    public void setCancer(Integer cancer) {
        this.cancer = cancer;
    }

    public Integer getDisease() {
        return disease;
    }

    public void setDisease(Integer disease) {
        this.disease = disease;
    }

    public Integer getPopulation() {
        return population;
    }

    public void setPopulation(Integer population) {
        this.population = population;
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }
}