package com.pdb.ssm.model;

public class Mutation {
    private String maingenename;

    private String swissprotac;

    private String ftid;

    private String aachange;

    private String typeofvariant;

    private String dbsnp;

    private String diseasename;

    public String getMaingenename() {
        return maingenename;
    }

    public void setMaingenename(String maingenename) {
        this.maingenename = maingenename == null ? null : maingenename.trim();
    }

    public String getSwissprotac() {
        return swissprotac;
    }

    public void setSwissprotac(String swissprotac) {
        this.swissprotac = swissprotac == null ? null : swissprotac.trim();
    }

    public String getFtid() {
        return ftid;
    }

    public void setFtid(String ftid) {
        this.ftid = ftid == null ? null : ftid.trim();
    }

    public String getAachange() {
        return aachange;
    }

    public void setAachange(String aachange) {
        this.aachange = aachange == null ? null : aachange.trim();
    }

    public String getTypeofvariant() {
        return typeofvariant;
    }

    public void setTypeofvariant(String typeofvariant) {
        this.typeofvariant = typeofvariant == null ? null : typeofvariant.trim();
    }

    public String getDbsnp() {
        return dbsnp;
    }

    public void setDbsnp(String dbsnp) {
        this.dbsnp = dbsnp == null ? null : dbsnp.trim();
    }

    public String getDiseasename() {
        return diseasename;
    }

    public void setDiseasename(String diseasename) {
        this.diseasename = diseasename == null ? null : diseasename.trim();
    }

    @Override
    public String toString() {
        return "Mutation{" +
                "maingenename='" + maingenename + '\'' +
                ", swissprotac='" + swissprotac + '\'' +
                ", ftid='" + ftid + '\'' +
                ", aachange='" + aachange + '\'' +
                ", typeofvariant='" + typeofvariant + '\'' +
                ", dbsnp='" + dbsnp + '\'' +
                ", diseasename='" + diseasename + '\'' +
                '}';
    }
}