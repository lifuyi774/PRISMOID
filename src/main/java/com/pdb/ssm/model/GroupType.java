package com.pdb.ssm.model;

public class GroupType {
    Integer value;
    String name;
    String note;

    public Integer getValue() {
        return value;
    }

    public void setValue(Integer value) {
        this.value = value;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "GroupType{" +
                "value=" + value +
                ", name='" + name + '\'' +
                ", note='" + note + '\'' +
                '}';
    }
}
