package com.example.demo.model.SalesModel;

public class CondensedMilk {
    private int totalMilk;
    private String imgMilk;
    private String remain;
    private int importNumber;

    public CondensedMilk(int totalMilk, String imgMilk,String remain,int importNumber) {
        this.totalMilk = totalMilk;
        this.imgMilk = imgMilk;
        this.remain=remain;
        this.importNumber=importNumber;

    }

    public CondensedMilk() {
    }

    public int getTotalMilk() {
        return totalMilk;
    }

    public void setTotalMilk(int totalMilk) {
        this.totalMilk = totalMilk;
    }

    public String getImgMilk() {
        return imgMilk;
    }

    public void setImgMilk(String imgMilk) {
        this.imgMilk = imgMilk;
    }

    public int getImportNumber() {
        return importNumber;
    }

    public void setImportNumber(int importNumber) {
        this.importNumber = importNumber;
    }

    public String getRemain() {
        return remain;
    }

    public void setRemain(String remain) {
        this.remain = remain;
    }
}
