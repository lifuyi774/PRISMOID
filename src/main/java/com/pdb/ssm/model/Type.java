package com.pdb.ssm.model;

public class Type {
    private String dbid;

    private String pdbchain;

    private String proteinname;

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

    public String getProteinname() {
        return proteinname;
    }

    public void setProteinname(String proteinname) {
        this.proteinname = proteinname == null ? null : proteinname.trim();
    }
}