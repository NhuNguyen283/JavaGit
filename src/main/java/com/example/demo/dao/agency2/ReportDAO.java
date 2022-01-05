package com.example.demo.dao.agency2;

import com.example.demo.connectDB.ConnectDB;
import com.example.demo.model.SalesModel.*;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ReportDAO {
    public Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            connection = DriverManager.getConnection(ConnectDB.url, ConnectDB.user, ConnectDB.pw);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public List<Tea> getTea() throws Exception {
        List<Tea> list = new ArrayList<>();
        String sql = "SELECT typeofTea,SUM(mlTea) AS totalTea,imgTea,ROUND(15-SUM(mlTea)/500,2) AS remain,\n" +
                "ROUND(SUM(mlTea)/500,0) AS importNumber FROM salesmilktea2\n" +
                "GROUP BY typeofTea;";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                list.add(new Tea(resultSet.getString("typeofTea"),
                        resultSet.getInt("totalTea"),
                        resultSet.getString("imgTea"),
                        resultSet.getString("remain"),
                        resultSet.getInt("importNumber"))
                );
            }
        }
        return list;
    }
    public List<Syrup> getSyrup() throws Exception {
        List<Syrup> list = new ArrayList<>();
        String sql = "SELECT typeofSyrup,SUM(mlSyrup) AS totalSyrup,imgSyrup,ROUND(15-SUM(mlSyrup)/750,2) AS remain,\n" +
                "ROUND(SUM(mlSyrup)/750,0) AS importNumber FROM salesmilktea2\n" +
                "GROUP BY typeofSyrup;";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                list.add(new Syrup(resultSet.getString("typeofSyrup"),
                        resultSet.getInt("totalSyrup"),
                        resultSet.getString("imgSyrup"),
                        resultSet.getString("remain"),
                        resultSet.getInt("importNumber"))
                );
            }
        }
        return list;
    }

    public Coffee getCoffee() throws Exception{
        String sql = "SELECT SUM(grCoffee) AS sumGrCoffee,imgCoffee,ROUND(10-SUM(grCoffee)/1000,2) AS remain,\n" +
                "round(SUM(grCoffee)/1000,0) AS importNumber FROM salescoffee2;";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    return new Coffee(resultSet.getInt("sumGrCoffee"),
                            resultSet.getString("imgCoffee"),
                            resultSet.getString("remain"),
                            resultSet.getInt("importNumber"));
                }
            }
        }
        return null;
    }
    public Milk getFreshMilk() throws Exception{
        String sql = "SELECT SUM(freshMilk) AS sumFreshMilk,imgFreshMilk,ROUND(25-SUM(freshMilk)/450,2) AS remain,\n" +
                "round(SUM(freshMilk)/450,0) AS importNumber FROM salescoffee2;";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    return new Milk(resultSet.getInt("sumFreshMilk"),
                            resultSet.getString("imgFreshMilk"),
                            resultSet.getString("remain"),
                            resultSet.getInt("importNumber"));
                }
            }
        }
        return null;
    }
    public Sugar getSugar() throws Exception{
        String sql = "SELECT SUM(sugar) AS sumSugar,imgSugar,ROUND(15-SUM(sugar)/750,2) AS remain,\n" +
                "round(SUM(sugar)/750,0) AS importNumber FROM salescoffee2;";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    return new Sugar(resultSet.getInt("sumSugar"),
                            resultSet.getString("imgSugar"),
                            resultSet.getString("remain"),
                            resultSet.getInt("importNumber"));
                }
            }
        }
        return null;
    }
    public CondensedMilk getCondensedMilk() throws Exception{
        String sql = "SELECT sum(condensedMilk) AS totalMilk,imgMilk,ROUND(10-sum(condensedMilk)/900,2) AS remain,\n" +
                "round(sum(condensedMilk)/900,0) AS importNumber FROM salesmilktea2;";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    return new CondensedMilk(resultSet.getInt("totalMilk"),
                            resultSet.getString("imgMilk"),
                            resultSet.getString("remain"),
                            resultSet.getInt("importNumber"));
                }
            }
        }
        return null;
    }
    public Money getMoneyCoffee() throws Exception{
        String sql = "SELECT SUM(total) AS total,imgMoney FROM salescoffee2";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    return new Money(resultSet.getInt("total"),
                            resultSet.getString("imgMoney"));
                }
            }
        }
        return null;
    }

    public Money getMoneyTea() throws Exception{
        String sql = "SELECT SUM(total) AS total, imgMoney FROM salesmilktea2";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    return new Money(resultSet.getInt("total"),
                            resultSet.getString("imgMoney"));
                }
            }
        }
        return null;
    }




}
