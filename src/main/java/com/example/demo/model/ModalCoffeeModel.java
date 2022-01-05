package com.example.demo.model;

public class ModalCoffeeModel {
    private int id;
    private String name;
    private int price;
    private int grCoffee;
    private int freshMilk;
    private int condensedMilk;
    private int sugar;
    private int quantity;

    public ModalCoffeeModel(int id, String name, int price, int grCoffee, int freshMilk, int condensedMilk, int sugar, int quantity) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.grCoffee = grCoffee;
        this.freshMilk = freshMilk;
        this.condensedMilk = condensedMilk;
        this.sugar = sugar;
        this.quantity = quantity;
    }

    public ModalCoffeeModel() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    @Override
    public String toString() {
        return "ModalModel{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", grCoffee=" + grCoffee +
                ", freshMilk=" + freshMilk +
                ", condensedMilk=" + condensedMilk +
                ", sugar=" + sugar +
                ", quantity=" + quantity +
                '}';
    }
}
