package com.example.demo.model.SalesModel;

public class Tea {
    private String typeofTea;
    private int totalTea;
    private String imgTea;
    private String remain;
    private int importNumber;

    public Tea() {
    }

    public Tea(String typeofTea, int totalTea, String imgTea, String remain, int importNumber) {
        this.typeofTea = typeofTea;
        this.totalTea = totalTea;
        this.imgTea = imgTea;
        this.remain = remain;
        this.importNumber = importNumber;
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

    public String getImgTea() {
        return imgTea;
    }

    public void setImgTea(String imgTea) {
        this.imgTea = imgTea;
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
