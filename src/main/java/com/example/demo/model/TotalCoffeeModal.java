package com.example.demo.model;

public class TotalCoffeeModal {
    private double totalSum;
    private int totalGrCoffee;
    private int totalFreshMilk;
    private int totalCondensedMilk;
    private int totalSugar;
    private int totalQuantity;

    public TotalCoffeeModal(double totalSum, int totalGrCoffee, int totalFreshMilk, int totalCondensedMilk, int totalSugar, int totalQuantity) {
        this.totalSum = totalSum;
        this.totalGrCoffee = totalGrCoffee;
        this.totalFreshMilk = totalFreshMilk;
        this.totalCondensedMilk = totalCondensedMilk;
        this.totalSugar = totalSugar;
        this.totalQuantity = totalQuantity;
    }

    public TotalCoffeeModal() {
    }

    public double getTotalSum() {
        return totalSum;
    }

    public void setTotalSum(double totalSum) {
        this.totalSum = totalSum;
    }

    public int getTotalGrCoffee() {
        return totalGrCoffee;
    }

    public void setTotalGrCoffee(int totalGrCoffee) {
        this.totalGrCoffee = totalGrCoffee;
    }

    public int getTotalFreshMilk() {
        return totalFreshMilk;
    }

    public void setTotalFreshMilk(int totalFreshMilk) {
        this.totalFreshMilk = totalFreshMilk;
    }

    public int getTotalCondensedMilk() {
        return totalCondensedMilk;
    }

    public void setTotalCondensedMilk(int totalCondensedMilk) {
        this.totalCondensedMilk = totalCondensedMilk;
    }

    public int getTotalSugar() {
        return totalSugar;
    }

    public void setTotalSugar(int totalSugar) {
        this.totalSugar = totalSugar;
    }

    public int getTotalQuantity() {
        return totalQuantity;
    }

    public void setTotalQuantity(int totalQuantity) {
        this.totalQuantity = totalQuantity;
    }
}
