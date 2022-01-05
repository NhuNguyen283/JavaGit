package com.example.demo.model.TotalMilkteaModal;

public class TotalSyrypModal {
    private String typeofSyrup;
    private int totalSyrup;

    public TotalSyrypModal(String typeofSyrup, int totalSyrup) {
        this.typeofSyrup = typeofSyrup;
        this.totalSyrup = totalSyrup;
    }

    public TotalSyrypModal() {
    }

    public String getTypeofSyrup() {
        return typeofSyrup;
    }

    public void setTypeofSyrup(String typeofSyrup) {
        this.typeofSyrup = typeofSyrup;
    }

    public int getTotalSyrup() {
        return totalSyrup;
    }

    public void setTotalSyrup(int totalSyrup) {
        this.totalSyrup = totalSyrup;
    }
}
