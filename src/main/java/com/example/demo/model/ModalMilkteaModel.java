package com.example.demo.model;

public class ModalMilkteaModel {
    private int id;
    private String name;
    private int price;
    private String typeofTea;
    private int mlTea;
    private int condensedMilk;
    private String typeofSyrup;
    private int mlSyrup;
    private int quantity;

    public ModalMilkteaModel(int id, String name, int price, String typeofTea, int mlTea, int condensedMilk, String typeofSyrup, int mlSyrup, int quantity) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.typeofTea = typeofTea;
        this.mlTea = mlTea;
        this.condensedMilk = condensedMilk;
        this.typeofSyrup = typeofSyrup;
        this.mlSyrup = mlSyrup;
        this.quantity = quantity;
    }

    public ModalMilkteaModel() {
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

    public String getTypeofTea() {
        return typeofTea;
    }

    public void setTypeofTea(String typeofTea) {
        this.typeofTea = typeofTea;
    }

    public int getMlTea() {
        return mlTea;
    }

    public void setMlTea(int mlTea) {
        this.mlTea = mlTea;
    }

    public int getCondensedMilk() {
        return condensedMilk;
    }

    public void setCondensedMilk(int condensedMilk) {
        this.condensedMilk = condensedMilk;
    }

    public String getTypeofSyrup() {
        return typeofSyrup;
    }

    public void setTypeofSyrup(String typeofSyrup) {
        this.typeofSyrup = typeofSyrup;
    }

    public int getMlSyrup() {
        return mlSyrup;
    }

    public void setMlSyrup(int mlSyrup) {
        this.mlSyrup = mlSyrup;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
