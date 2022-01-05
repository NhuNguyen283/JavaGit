package com.example.demo.dao.agency2;


import com.example.demo.connectDB.ConnectDB;
import com.example.demo.model.CoffeeModel;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CoffeeDAO {

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

    public List<CoffeeModel> getAllCoffee() throws Exception {
        List<CoffeeModel> list = new ArrayList<>();
        String sql = "SELECT * FROM coffee2";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                list.add(new CoffeeModel(resultSet.getInt("id"),
                        resultSet.getString("code"),
                        resultSet.getString("image"),
                        resultSet.getString("name"),
                        resultSet.getString("size"),
                        resultSet.getInt("price"),
                        resultSet.getInt("grCoffee"),
                        resultSet.getInt("freshMilk"),
                        resultSet.getInt("condensedMilk"),
                        resultSet.getInt("sugar"))
                );
            }
        }
        return list;
    }

    public void deleteCoffee(String id) throws Exception {
        String sql = "DELETE FROM coffee2 WHERE id = ?";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, id);
            statement.executeUpdate();
        }
    }

    public List<CoffeeModel> search(String name) throws Exception {
        List<CoffeeModel> list = new ArrayList<>();
        String sql = "SELECT * FROM coffee2 WHERE name LIKE ?";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, "%" + name + "%");
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    list.add(new CoffeeModel(resultSet.getInt("id"),
                            resultSet.getString("code"),
                            resultSet.getString("image"),
                            resultSet.getString("name"),
                            resultSet.getString("size"),
                            resultSet.getInt("price"),
                            resultSet.getInt("grCoffee"),
                            resultSet.getInt("freshMilk"),
                            resultSet.getInt("condensedMilk"),
                            resultSet.getInt("sugar"))
                    );
                }
            }
        }
        return list;
    }

    public CoffeeModel getCoffeeByID(String id) throws Exception {
        String sql = "SELECT * FROM coffee2 WHERE id = ?";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, id);
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    return new CoffeeModel(resultSet.getInt("id"),
                            resultSet.getString("code"),
                            resultSet.getString("image"),
                            resultSet.getString("name"),
                            resultSet.getString("size"),
                            resultSet.getInt("price"),
                            resultSet.getInt("grCoffee"),
                            resultSet.getInt("freshMilk"),
                            resultSet.getInt("condensedMilk"),
                            resultSet.getInt("sugar")
                    );
                }
            }
        }
        return null;
    }

    public void updateCoffee(String id, String code, String image, String name, String size, String price, String grCoffee, String freshMilk, String condensedMilk, String sugar) throws Exception {
        String sql = "UPDATE coffee2 SET code=?, image=?,name=?,size=?,price=?,grCoffee=?,freshMilk=?,condensedMilk=?,sugar=? WHERE id=?";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, code);
            statement.setString(2, image);
            statement.setString(3, name);
            statement.setString(4, size);
            statement.setString(5, price);
            statement.setString(6, grCoffee);
            statement.setString(7, freshMilk);
            statement.setString(8, condensedMilk);
            statement.setString(9, sugar);
            statement.setString(10, id);
            statement.executeUpdate();
        }
    }

    public void addCoffee(String code, String image, String name, String size, String price, String grCoffee, String freshMilk, String condensedMilk, String sugar) throws Exception {
        String sql="INSERT INTO coffee2(CODE,image,NAME,size,price,grCoffee,freshMilk,condensedMilk,sugar) VALUES(?,?,?,?,?,?,?,?,?)";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, code);
            statement.setString(2, image);
            statement.setString(3, name);
            statement.setString(4, size);
            statement.setString(5, price);
            statement.setString(6, grCoffee);
            statement.setString(7, freshMilk);
            statement.setString(8, condensedMilk);
            statement.setString(9, sugar);
            statement.executeUpdate();
        }
    }
}
