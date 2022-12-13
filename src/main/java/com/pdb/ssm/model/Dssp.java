package com.pdb.ssm.model;

public class Dssp {
    private String pdbchain;

    private Integer ptmpositioninchain;

    private String tco;

    private String kappa;

    private String alpha;

    private String phi;

    private String psi;

    private String xCa;

    private String yCa;

    private String zCa;

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

    public String getTco() {
        return tco;
    }

    public void setTco(String tco) {
        this.tco = tco == null ? null : tco.trim();
    }

    public String getKappa() {
        return kappa;
    }

    public void setKappa(String kappa) {
        this.kappa = kappa == null ? null : kappa.trim();
    }

    public String getAlpha() {
        return alpha;
    }

    public void setAlpha(String alpha) {
        this.alpha = alpha == null ? null : alpha.trim();
    }

    public String getPhi() {
        return phi;
    }

    public void setPhi(String phi) {
        this.phi = phi == null ? null : phi.trim();
    }

    public String getPsi() {
        return psi;
    }

    public void setPsi(String psi) {
        this.psi = psi == null ? null : psi.trim();
    }

    public String getxCa() {
        return xCa;
    }

    public void setxCa(String xCa) {
        this.xCa = xCa == null ? null : xCa.trim();
    }

    public String getyCa() {
        return yCa;
    }

    public void setyCa(String yCa) {
        this.yCa = yCa == null ? null : yCa.trim();
    }

    public String getzCa() {
        return zCa;
    }

    public void setzCa(String zCa) {
        this.zCa = zCa == null ? null : zCa.trim();
    }
}