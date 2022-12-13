package com.pdb.ssm.model;

public class Naccess {
    private String pdbchain;

    private Integer ptmpositioninchain;

    private String allAtomsAbsolute;

    private String allAtomsRelative;

    private String totalSideAbsolute;

    private String totalSideRelative;

    private String mainChainAbsolute;

    private String mainChainRelative;

    private String nonPolarAbsolute;

    private String nonPolarRelative;

    private String allPolarAbsolute;

    private String allPolarRelative;

    public String getPdbchain() {
        return pdbchain;
    }

    public void setPdbchain(String pdbchain) {
        this.pdbchain = pdbchain == null ? null : pdbchain.trim();
    }

    public Integer getPtmpositioninchain() {
        return ptmpositioninchain;
    }

    public void setPtmpositioninchain(Integer ptmpositioninchain) {
        this.ptmpositioninchain = ptmpositioninchain;
    }

    public String getAllAtomsAbsolute() {
        return allAtomsAbsolute;
    }

    public void setAllAtomsAbsolute(String allAtomsAbsolute) {
        this.allAtomsAbsolute = allAtomsAbsolute == null ? null : allAtomsAbsolute.trim();
    }

    public String getAllAtomsRelative() {
        return allAtomsRelative;
    }

    public void setAllAtomsRelative(String allAtomsRelative) {
        this.allAtomsRelative = allAtomsRelative == null ? null : allAtomsRelative.trim();
    }

    public String getTotalSideAbsolute() {
        return totalSideAbsolute;
    }

    public void setTotalSideAbsolute(String totalSideAbsolute) {
        this.totalSideAbsolute = totalSideAbsolute == null ? null : totalSideAbsolute.trim();
    }

    public String getTotalSideRelative() {
        return totalSideRelative;
    }

    public void setTotalSideRelative(String totalSideRelative) {
        this.totalSideRelative = totalSideRelative == null ? null : totalSideRelative.trim();
    }

    public String getMainChainAbsolute() {
        return mainChainAbsolute;
    }

    public void setMainChainAbsolute(String mainChainAbsolute) {
        this.mainChainAbsolute = mainChainAbsolute == null ? null : mainChainAbsolute.trim();
    }

    public String getMainChainRelative() {
        return mainChainRelative;
    }

    public void setMainChainRelative(String mainChainRelative) {
        this.mainChainRelative = mainChainRelative == null ? null : mainChainRelative.trim();
    }

    public String getNonPolarAbsolute() {
        return nonPolarAbsolute;
    }

    public void setNonPolarAbsolute(String nonPolarAbsolute) {
        this.nonPolarAbsolute = nonPolarAbsolute == null ? null : nonPolarAbsolute.trim();
    }

    public String getNonPolarRelative() {
        return nonPolarRelative;
    }

    public void setNonPolarRelative(String nonPolarRelative) {
        this.nonPolarRelative = nonPolarRelative == null ? null : nonPolarRelative.trim();
    }

    public String getAllPolarAbsolute() {
        return allPolarAbsolute;
    }

    public void setAllPolarAbsolute(String allPolarAbsolute) {
        this.allPolarAbsolute = allPolarAbsolute == null ? null : allPolarAbsolute.trim();
    }

    public String getAllPolarRelative() {
        return allPolarRelative;
    }

    public void setAllPolarRelative(String allPolarRelative) {
        this.allPolarRelative = allPolarRelative == null ? null : allPolarRelative.trim();
    }
}