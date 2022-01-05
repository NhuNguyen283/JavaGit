package com.example.demo.model;

public class MilkteaModel {
    private int id;
    private String code;
    private String image;
    private String name;
    private String size;
    private int price;
    private String typeofTea;
    private int mlTea;
    private int condensedMilk;
    private String typeofSyrup;
    private int mlSyrup;

    public MilkteaModel(int id, String code, String image, String name, String size, int price, String typeofTea, int mlTea, int condensedMilk, String typeofSyrup, int mlSyrup) {
        this.id = id;
        this.code = code;
        this.image = image;
        this.name = name;
        this.size = size;
        this.price = price;
        this.typeofTea = typeofTea;
        this.mlTea = mlTea;
        this.condensedMilk = condensedMilk;
        this.typeofSyrup = typeofSyrup;
        this.mlSyrup = mlSyrup;
    }

    public MilkteaModel() {
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

    @Override
    public String toString() {
        return "MilkteaModel{" +
                "id=" + id +
                ", code='" + code + '\'' +
                ", image='" + image + '\'' +
                ", name='" + name + '\'' +
                ", size='" + size + '\'' +
                ", price=" + price +
                ", typeofTea='" + typeofTea + '\'' +
                ", mlTea=" + mlTea +
                ", condensedMilk=" + condensedMilk +
                ", typeofSyrup='" + typeofSyrup + '\'' +
                ", mlSyrup=" + mlSyrup +
                '}';
    }
}
