package com.example.demo.model;

public class SalaryModel {
    private int id;
    private String code;
    private String name;
    private String position;
    private int pay1h;
    private int payOT;
    private int workingHours;
    private int hoursOT;
    private double salary;


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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public int getPay1h() {
        return pay1h;
    }

    public void setPay1h(int pay1h) {
        this.pay1h = pay1h;
    }

    public int getPayOT() {
        return payOT;
    }

    public void setPayOT(int payOT) {
        this.payOT = payOT;
    }

    public int getWorkingHours() {
        return workingHours;
    }

    public void setWorkingHours(int workingHours) {
        this.workingHours = workingHours;
    }

    public int getHoursOT() {
        return hoursOT;
    }

    public void setHoursOT(int hoursOT) {
        this.hoursOT = hoursOT;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public SalaryModel() {
    }

    public SalaryModel(int id, String code, String name, String position, int pay1h, int payOT, int workingHours, int hoursOT, double salary) {
        this.id = id;
        this.code = code;
        this.name = name;
        this.position = position;
        this.pay1h = pay1h;
        this.payOT = payOT;
        this.workingHours = workingHours;
        this.hoursOT = hoursOT;
        this.salary = salary;
    }
}
