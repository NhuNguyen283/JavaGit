package com.example.demo.model;

public class EmployeeModel {
    private int id;
    private String code;
    private String name;
    private String position;
    private String pay1h;
    private String payOT;

    public EmployeeModel(int id, String code, String name, String position, String pay1h, String payOT) {
        this.id = id;
        this.code = code;
        this.name = name;
        this.position = position;
        this.pay1h = pay1h;
        this.payOT = payOT;
    }

    public int getId() {
        return id;
    }

    public String getCode() {
        return code;
    }

    public String getName() {
        return name;
    }

    public String getPosition() {
        return position;
    }

    public String getPay1h() {
        return pay1h;
    }

    public String getPayOT() {
        return payOT;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public void setPay1h(String pay1h) {
        this.pay1h = pay1h;
    }

    public void setPayOT(String payOT) {
        this.payOT = payOT;
    }

    @Override
    public String toString() {
        return "EmployeeModel{" + "id=" + id + ", code='" + code + '\'' + ", name='" + name + '\'' + ", position='"
                + position + '\'' + ", pay1h='" + pay1h + '\'' + ", payOT='" + payOT + '\'' + '}';
    }
}
