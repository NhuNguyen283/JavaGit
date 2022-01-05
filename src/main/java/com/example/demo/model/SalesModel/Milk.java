package com.example.demo.model.SalesModel;

public class Milk {
    private int sumFreshMilk;
    private String imgFreshMilk;
    private String remain;
    private int importNumber;


    public Milk(int sumFreshMilk, String imgFreshMilk,String remain,int importNumber) {
        this.sumFreshMilk = sumFreshMilk;
        this.imgFreshMilk = imgFreshMilk;
        this.remain=remain;
        this.importNumber=importNumber;

    }

    public Milk() {
    }

    public int getSumFreshMilk() {
        return sumFreshMilk;
    }

    public void setSumFreshMilk(int sumFreshMilk) {
        this.sumFreshMilk = sumFreshMilk;
    }

    public String getImgFreshMilk() {
        return imgFreshMilk;
    }

    public void setImgFreshMilk(String imgFreshMilk) {
        this.imgFreshMilk = imgFreshMilk;
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

