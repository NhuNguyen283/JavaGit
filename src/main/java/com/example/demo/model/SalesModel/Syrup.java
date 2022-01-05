package com.example.demo.model.SalesModel;

public class Syrup {
    private String typeofSyrup;
    private int totalSyrup;
    private String imgSyrup;
    private String remain;
    private int importNumber;

    public Syrup() {
    }

    public Syrup(String typeofSyrup, int totalSyrup, String imgSyrup, String remain, int importNumber) {
        this.typeofSyrup = typeofSyrup;
        this.totalSyrup = totalSyrup;
        this.imgSyrup = imgSyrup;
        this.remain = remain;
        this.importNumber = importNumber;
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

    public String getImgSyrup() {
        return imgSyrup;
    }

    public void setImgSyrup(String imgSyrup) {
        this.imgSyrup = imgSyrup;
    }

    public String getRemain() {
        return remain;
    }

    public void setRemain(String remain) {
        this.remain = remain;
    }

    public int getImportNumber() {
        return importNumber;
    }

    public void setImportNumber(int importNumber) {
        this.importNumber = importNumber;
    }
}
