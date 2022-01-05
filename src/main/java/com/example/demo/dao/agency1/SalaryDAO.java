package com.example.demo.dao.agency1;

import com.example.demo.connectDB.ConnectDB;
import com.example.demo.model.CoffeeModel;
import com.example.demo.model.SalaryModel;
import com.example.demo.model.TotalMilkteaModal.TotalSumModal;
import com.example.demo.model.TotalSalaryModal;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SalaryDAO {
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

    public List<SalaryModel> getAll() throws Exception {
        List<SalaryModel> list = new ArrayList<>();
        String sql = "SELECT * FROM agency1";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                list.add(new SalaryModel(resultSet.getInt("id"),
                        resultSet.getString("code"),
                        resultSet.getString("name"),
                        resultSet.getString("position"),
                        resultSet.getInt("pay1H"),
                        resultSet.getInt("payOT"),
                        resultSet.getInt("workingHours"),
                        resultSet.getInt("hoursOT"),
                        resultSet.getDouble("salary"))
                );
            }
        }
        return list;
    }

    public SalaryModel getByID(String id) throws Exception {
        String sql = "SELECT * FROM agency1 WHERE id = ?";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, id);
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    return new SalaryModel(resultSet.getInt("id"),
                            resultSet.getString("code"),
                            resultSet.getString("name"),
                            resultSet.getString("position"),
                            resultSet.getInt("pay1H"),
                            resultSet.getInt("payOT"),
                            resultSet.getInt("workingHours"),
                            resultSet.getInt("hoursOT"),
                            resultSet.getDouble("salary")
                    );
                }
            }
        }
        return null;
    }
    public void updateSalaryModal(String id, String workingHours,String hoursOT) throws Exception {
        String sql = "UPDATE agency1 SET workingHours = ?,\n" +
                "hoursOT=?,\n" +
                "salary = workingHours*pay1h + hoursOT*payOT\n" +
                "WHERE id=?;";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, workingHours);
            statement.setString(2,hoursOT);
            statement.setString(3, id);
            statement.executeUpdate();
        }
    }

    public TotalSalaryModal getSum() throws Exception{
        String sql = "SELECT SUM(workingHours) AS totalWH, SUM(hoursOT) AS totalOT,SUM(salary) AS total FROM agency1;";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    return new TotalSalaryModal(resultSet.getString("totalWH"),
                            resultSet.getString("totalOT"),
                            resultSet.getString("total"));
                }
            }
        }
        return null;
    }
}
