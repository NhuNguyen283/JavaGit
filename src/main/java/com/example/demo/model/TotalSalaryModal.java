package com.example.demo.model;

public class TotalSalaryModal {
    private String totalWH;
    private String totalOT;
    private String total;

    public TotalSalaryModal() {
    }

    public TotalSalaryModal(String totalWH, String totalOT, String total) {
        this.totalWH = totalWH;
        this.totalOT = totalOT;
        this.total = total;
    }

    public String getTotalWH() {
        return totalWH;
    }

    public void setTotalWH(String totalWH) {
        this.totalWH = totalWH;
    }

    public String getTotalOT() {
        return totalOT;
    }

    public void setTotalOT(String totalOT) {
        this.totalOT = totalOT;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }
}
