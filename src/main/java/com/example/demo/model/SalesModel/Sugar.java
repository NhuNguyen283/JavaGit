package com.example.demo.model.SalesModel;

public class Sugar {
    private int sumSugar;
    private String imgSugar;
    private String remain;
    private int importNumber;


    public Sugar(int sumSugar, String imgSugar,String remain,int importNumber) {
        this.sumSugar = sumSugar;
        this.imgSugar = imgSugar;
        this.remain=remain;
        this.importNumber=importNumber;

    }

    public Sugar() {
    }

    public int getSumSugar() {
        return sumSugar;
    }

    public void setSumSugar(int sumSugar) {
        this.sumSugar = sumSugar;
    }

    public String getImgSugar() {
        return imgSugar;
    }

    public void setImgSugar(String imgSugar) {
        this.imgSugar = imgSugar;
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
