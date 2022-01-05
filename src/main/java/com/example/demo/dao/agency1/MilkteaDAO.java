package com.example.demo.dao.agency1;

import com.example.demo.connectDB.ConnectDB;
import com.example.demo.model.CoffeeModel;
import com.example.demo.model.MilkteaModel;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MilkteaDAO extends ConnectDB {
    public Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            connection = DriverManager.getConnection(ConnectDB.url,ConnectDB.user,ConnectDB.pw);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public List<MilkteaModel> getAllMilktea() throws Exception {
        List<MilkteaModel> list = new ArrayList<>();
        String sql = "SELECT * FROM milktea";
        try (
                Connection connection = getConnection();
                PreparedStatement statement = connection.prepareStatement(sql);
                ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                list.add(new MilkteaModel(resultSet.getInt("id"),
                        resultSet.getString("code"),
                        resultSet.getString("image"),
                        resultSet.getString("name"),
                        resultSet.getString("size"),
                        resultSet.getInt("price"),
                        resultSet.getString("typeofTea"),
                        resultSet.getInt("mlTea"),
                        resultSet.getInt("condensedMilk"),
                        resultSet.getString("typeofSyrup"),
                        resultSet.getInt("mlSyrup")));
            }
        }
        return list;
    }
    public void deleteMilktea(String id) throws Exception {
        String sql = "DELETE FROM milktea WHERE id = ?";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, id);
            statement.executeUpdate();
        }
    }
    public List<MilkteaModel> search(String name) throws Exception {
        List<MilkteaModel> list = new ArrayList<>();
        String sql = "SELECT * FROM milktea WHERE name LIKE ?";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, "%" + name + "%");
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    list.add(new MilkteaModel(resultSet.getInt("id"),
                            resultSet.getString("code"),
                            resultSet.getString("image"),
                            resultSet.getString("name"),
                            resultSet.getString("size"),
                            resultSet.getInt("price"),
                            resultSet.getString("typeofTea"),
                            resultSet.getInt("mlTea"),
                            resultSet.getInt("condensedMilk"),
                            resultSet.getString("typeofSyrup"),
                            resultSet.getInt("mlSyrup"))
                    );
                }
            }
        }
        return list;
    }
    public MilkteaModel getMilkteaByID(String id) throws Exception {
        String sql = "SELECT * FROM milktea WHERE id = ?";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, id);
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    return new MilkteaModel(resultSet.getInt("id"),
                            resultSet.getString("code"),
                            resultSet.getString("image"),
                            resultSet.getString("name"),
                            resultSet.getString("size"),
                            resultSet.getInt("price"),
                            resultSet.getString("typeofTea"),
                            resultSet.getInt("mlTea"),
                            resultSet.getInt("condensedMilk"),
                            resultSet.getString("typeofSyrup"),
                            resultSet.getInt("mlSyrup")
                    );
                }
            }
        }
        return null;
    }
    public void updateMilktea(String id, String code, String image, String name, String size, String price, String typeofTea, String mlTea, String condensedMilk, String typeofSyrup, String mlSyrup) throws Exception {
        String sql = "UPDATE milktea SET code=?, image=?,name=?,size=?,price=?,typeofTea=?,mlTea=?,condensedMilk=?,typeofSyrup=?,mlSyrup=? WHERE id=?";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, code);
            statement.setString(2, image);
            statement.setString(3, name);
            statement.setString(4, size);
            statement.setString(5, price);
            statement.setString(6, typeofTea);
            statement.setString(7, mlTea);
            statement.setString(8, condensedMilk);
            statement.setString(9, typeofSyrup);
            statement.setString(10, mlSyrup);
            statement.setString(11, id);
            statement.executeUpdate();
        }
    }

    public void addMilktea(String code, String image, String name, String size, String price, String typeofTea, String mlTea, String condensedMilk, String typeofSyrup, String mlSyrup) throws Exception {
        String sql="INSERT INTO milktea(CODE,image,NAME,size,price,typeofTea,mlTea,condensedMilk,typeofSyrup,mlSyrup) VALUES(?,?,?,?,?,?,?,?,?,?)";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, code);
            statement.setString(2, image);
            statement.setString(3, name);
            statement.setString(4, size);
            statement.setString(5, price);
            statement.setString(6, typeofTea);
            statement.setString(7, mlTea);
            statement.setString(8, condensedMilk);
            statement.setString(9, typeofSyrup);
            statement.setString(10,mlSyrup);
            statement.executeUpdate();
        }
    }
}
