package com.example.demo.model.TotalMilkteaModal;

public class TotalSumModal {
    private int sumMilk;
    private double sumTotal;

    public TotalSumModal(int sumMilk, double sumTotal) {
        this.sumMilk = sumMilk;
        this.sumTotal = sumTotal;
    }

    public TotalSumModal() {
    }

    public int getSumMilk() {
        return sumMilk;
    }

    public void setSumMilk(int sumMilk) {
        this.sumMilk = sumMilk;
    }

    public double getSumTotal() {
        return sumTotal;
    }

    public void setSumTotal(double sumTotal) {
        this.sumTotal = sumTotal;
    }
}
