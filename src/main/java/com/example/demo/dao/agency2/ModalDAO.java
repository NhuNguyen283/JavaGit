package com.example.demo.dao.agency2;

import com.example.demo.connectDB.ConnectDB;
import com.example.demo.model.ModalCoffeeModel;
import com.example.demo.model.ModalMilkteaModel;

import java.sql.*;

public class ModalDAO {

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

    public ModalCoffeeModel getModalById(String id) throws Exception {
        String sql = "SELECT id,name,price,grCoffee,freshMilk,condensedMilk,sugar,quantity FROM salesCoffee2 WHERE id=?";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, id);
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    return new ModalCoffeeModel(resultSet.getInt("id"),
                            resultSet.getString("name"),
                            resultSet.getInt("price"),
                            resultSet.getInt("grCoffee"),
                            resultSet.getInt("freshMilk"),
                            resultSet.getInt("condensedMilk"),
                            resultSet.getInt("sugar"),
                            resultSet.getInt("quantity")
                    );
                }
            }
        }
        return null;
    }

    public ModalMilkteaModel getModalMilkteaById(String id) throws Exception {
        String sql = "SELECT id,name,price,typeofTea,mlTea,condensedMilk,typeofSyrup,mlSyrup,quantity FROM salesMilktea2 WHERE id=?";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, id);
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    return new ModalMilkteaModel(resultSet.getInt("id"),
                            resultSet.getString("name"),
                            resultSet.getInt("price"),
                            resultSet.getString("typeofTea"),
                            resultSet.getInt("mlTea"),
                            resultSet.getInt("condensedMilk"),
                            resultSet.getString("typeofSyrup"),
                            resultSet.getInt("mlSyrup"),
                            resultSet.getInt("quantity")
                    );
                }
            }
        }
        return null;
    }

    public void updateModal(String id, String quantity) throws Exception {
        String sql = "UPDATE salesCoffee2 SET quantity = ?,\n" +
                "grCoffee = grCoffee/quantityNew * quantity,\n" +
                "freshMilk = freshMilk/quantityNew *quantity,\n" +
                "condensedMilk=condensedMilk/quantityNew*quantity,\n" +
                "sugar=sugar/quantityNew*quantity,\n" +
                "total=0+price*quantity,\n" +
                "quantityNew = quantity\n" +
                "WHERE id=?;";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, quantity);
            statement.setString(2, id);
            statement.executeUpdate();
        }
    }
    public void updateMilkteaModal(String id, String quantity) throws Exception {
        String sql = "UPDATE salesMilktea2 SET quantity = ?,\n" +
                "mlTea = mlTea/quantityNew * quantity,\n" +
                "condensedMilk=condensedMilk/quantityNew*quantity,\n" +
                "mlSyrup=mlSyrup/quantityNew*quantity,\n" +
                "total=0+price*quantity,\n" +
                "quantityNew = quantity\n" +
                "WHERE id=?;";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, quantity);
            statement.setString(2, id);
            statement.executeUpdate();
        }
    }

}
