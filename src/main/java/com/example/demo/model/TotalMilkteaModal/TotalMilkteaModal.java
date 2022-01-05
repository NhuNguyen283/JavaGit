package com.example.demo.model.TotalMilkteaModal;

public class TotalMilkteaModal {
    private String typeofTea;
    private int totalTea;

    public TotalMilkteaModal() {
    }

    public TotalMilkteaModal(String typeofTea, int totalTea) {
        this.typeofTea = typeofTea;
        this.totalTea = totalTea;
    }


    public String getTypeofTea() {
        return typeofTea;
    }

    public void setTypeofTea(String typeofTea) {
        this.typeofTea = typeofTea;
    }

    public int getTotalTea() {
        return totalTea;
    }

    public void setTotalTea(int totalTea) {
        this.totalTea = totalTea;
    }

}
