package com.pdb.ssm.model;

public class PTMSitesMutation {
    private String gene;

    private String refseq;

    private Integer mutationposition;

    private String mutationalt;

    private String mutationsummary;

    private Integer siteposition;

    private String siteresidue;

    private String uniprotacc;

    private String uniprotid;

    public String getGene() {
        return gene;
    }

    public void setGene(String gene) {
        this.gene = gene == null ? null : gene.trim();
    }

    public String getRefseq() {
        return refseq;
    }

    public void setRefseq(String refseq) {
        this.refseq = refseq == null ? null : refseq.trim();
    }

    public Integer getMutationposition() {
        return mutationposition;
    }

    public void setMutationposition(Integer mutationposition) {
        this.mutationposition = mutationposition;
    }

    public String getMutationalt() {
        return mutationalt;
    }

    public void setMutationalt(String mutationalt) {
        this.mutationalt = mutationalt == null ? null : mutationalt.trim();
    }

    public String getMutationsummary() {
        return mutationsummary;
    }

    public void setMutationsummary(String mutationsummary) {
        this.mutationsummary = mutationsummary == null ? null : mutationsummary.trim();
    }

    public Integer getSiteposition() {
        return siteposition;
    }

    public void setSiteposition(Integer siteposition) {
        this.siteposition = siteposition;
    }

    public String getSiteresidue() {
        return siteresidue;
    }

    public void setSiteresidue(String siteresidue) {
        this.siteresidue = siteresidue == null ? null : siteresidue.trim();
    }

    public String getUniprotacc() {
        return uniprotacc;
    }

    public void setUniprotacc(String uniprotacc) {
        this.uniprotacc = uniprotacc == null ? null : uniprotacc.trim();
    }

    public String getUniprotid() {
        return uniprotid;
    }

    public void setUniprotid(String uniprotid) {
        this.uniprotid = uniprotid == null ? null : uniprotid.trim();
    }

    @Override
    public String toString() {
        return "PTMSitesMutation{" +
                "gene='" + gene + '\'' +
                ", refseq='" + refseq + '\'' +
                ", mutationposition=" + mutationposition +
                ", mutationalt='" + mutationalt + '\'' +
                ", mutationsummary='" + mutationsummary + '\'' +
                ", siteposition=" + siteposition +
                ", siteresidue='" + siteresidue + '\'' +
                ", uniprotacc='" + uniprotacc + '\'' +
                ", uniprotid='" + uniprotid + '\'' +
                '}';
    }
}