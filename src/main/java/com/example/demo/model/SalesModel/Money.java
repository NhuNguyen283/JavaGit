package com.example.demo.model.SalesModel;

public class Money {
    private int total;
    private String imgMoney;

    public Money(int total, String imgMoney) {
        this.total = total;
        this.imgMoney = imgMoney;
    }

    public Money() {
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public String getImgMoney() {
        return imgMoney;
    }

    public void setImgMoney(String imgMoney) {
        this.imgMoney = imgMoney;
    }
}
