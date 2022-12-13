package com.pdb.ssm.model;

/**
 * Created by firstmetcs on 2018/5/15.
 */
public class Pdbchain {

    private int id;
    private String PDBID;
    private String PDBChain;
    private int PDBPosition;
    private String UniProtID;
    private String UniProtPosition;
    private String PTMType;
    private String Resolution;
    private String UniProtKBID;
    private String ProteinName;
    private String GeneName;
    private String Organism;
    private Integer num;
    private String fullName;
    private String type;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPDBID() {
        return PDBID;
    }

    public void setPDBID(String PDBID) {
        this.PDBID = PDBID;
    }

    public String getPDBChain() {
        return PDBChain;
    }

    public void setPDBChain(String PDBChain) {
        this.PDBChain = PDBChain;
    }

    public int getPDBPosition() {
        return PDBPosition;
    }

    public void setPDBPosition(int PDBPosition) {
        this.PDBPosition = PDBPosition;
    }

    public String getUniProtID() {
        return UniProtID;
    }

    public void setUniProtID(String uniProtID) {
        UniProtID = uniProtID;
    }

    public String getUniProtPosition() {
        return UniProtPosition;
    }

    public void setUniProtPosition(String uniProtPosition) {
        UniProtPosition = uniProtPosition;
    }

    public String getPTMType() {
        return PTMType;
    }

    public void setPTMType(String PTMType) {
        this.PTMType = PTMType;
    }

    public String getResolution() {
        return Resolution;
    }

    public void setResolution(String resolution) {
        Resolution = resolution;
    }

    public String getUniProtKBID() {
        return UniProtKBID;
    }

    public void setUniProtKBID(String uniProtKBID) {
        UniProtKBID = uniProtKBID;
    }

    public String getProteinName() {
        return ProteinName;
    }

    public void setProteinName(String proteinName) {
        ProteinName = proteinName;
    }

    public String getGeneName() {
        return GeneName;
    }

    public void setGeneName(String geneName) {
        GeneName = geneName;
    }

    public String getOrganism() {
        return Organism;
    }

    public void setOrganism(String organism) {
        Organism = organism;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Pdbchain{" +
                "id=" + id +
                ", PDBID='" + PDBID + '\'' +
                ", PDBChain='" + PDBChain + '\'' +
                ", PDBPosition=" + PDBPosition +
                ", UniProtID='" + UniProtID + '\'' +
                ", UniProtPosition='" + UniProtPosition + '\'' +
                ", PTMType='" + PTMType + '\'' +
                ", Resolution='" + Resolution + '\'' +
                ", UniProtKBID='" + UniProtKBID + '\'' +
                ", ProteinName='" + ProteinName + '\'' +
                ", GeneName='" + GeneName + '\'' +
                ", Organism='" + Organism + '\'' +
                ", num=" + num +
                ", fullName='" + fullName + '\'' +
                ", type='" + type + '\'' +
                '}';
    }
}
