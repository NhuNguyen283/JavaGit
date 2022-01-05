package com.example.demo.model.SalesModel;

public class Coffee {
    private int sumGrCoffee;
    private String imgCoffee;
    private String remain;
    private int importNumber;

    public Coffee(int sumGrCoffee, String imgCoffee,String remain,int importNumber) {
        this.sumGrCoffee = sumGrCoffee;
        this.imgCoffee = imgCoffee;
        this.remain=remain;
        this.importNumber=importNumber;
    }

    public Coffee() {
    }

    public String getRemain() {
        return remain;
    }

    public void setRemain(String remain) {
        this.remain = remain;
    }

    public int getSumGrCoffee() {
        return sumGrCoffee;
    }

    public void setSumGrCoffee(int sumGrCoffee) {
        this.sumGrCoffee = sumGrCoffee;
    }

    public String getImgCoffee() {
        return imgCoffee;
    }

    public void setImgCoffee(String imgCoffee) {
        this.imgCoffee = imgCoffee;
    }

    public int getImportNumber() {
        return importNumber;
    }

    public void setImportNumber(int importNumber) {
        this.importNumber = importNumber;
    }
}
