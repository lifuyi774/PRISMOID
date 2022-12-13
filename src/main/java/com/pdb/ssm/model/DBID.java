package com.pdb.ssm.model;

public class DBID {
    private String dbid;

    private String pdbchain;

    private Integer clickcount;

    public String getDbid() {
        return dbid;
    }

    public void setDbid(String dbid) {
        this.dbid = dbid == null ? null : dbid.trim();
    }

    public String getPdbchain() {
        return pdbchain;
    }

    public void setPdbchain(String pdbchain) {
        this.pdbchain = pdbchain == null ? null : pdbchain.trim();
    }

    public Integer getClickcount() {
        return clickcount;
    }

    public void setClickcount(Integer clickcount) {
        this.clickcount = clickcount;
    }
}