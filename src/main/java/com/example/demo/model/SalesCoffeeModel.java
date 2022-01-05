package com.example.demo.model;

public class SalesCoffeeModel {
    private int id;
    private String code;
    private String image;
    private String name;
    private String size;
    private int price;
    private int grCoffee;
    private int freshMilk;
    private int condensedMilk;
    private int sugar;
    private int quantity;
    private double total;

    public SalesCoffeeModel(int id, String code, String image, String name, String size, int price, int grCoffee, int freshMilk, int condensedMilk, int sugar, int quantity, double total) {
        this.id = id;
        this.code = code;
        this.image = image;
        this.name = name;
        this.size = size;
        this.price = price;
        this.grCoffee = grCoffee;
        this.freshMilk = freshMilk;
        this.condensedMilk = condensedMilk;
        this.sugar = sugar;
        this.quantity = quantity;
        this.total = total;
    }

    public SalesCoffeeModel() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getGrCoffee() {
        return grCoffee;
    }

    public void setGrCoffee(int grCoffee) {
        this.grCoffee = grCoffee;
    }

    public int getFreshMilk() {
        return freshMilk;
    }

    public void setFreshMilk(int freshMilk) {
        this.freshMilk = freshMilk;
    }

    public int getCondensedMilk() {
        return condensedMilk;
    }

    public void setCondensedMilk(int condensedMilk) {
        this.condensedMilk = condensedMilk;
    }

    public int getSugar() {
        return sugar;
    }

    public void setSugar(int sugar) {
        this.sugar = sugar;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }


}
