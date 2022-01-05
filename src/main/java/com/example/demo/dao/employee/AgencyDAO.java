package com.example.demo.dao.employee;

import com.example.demo.connectDB.ConnectDB;
import com.example.demo.model.EmployeeModel;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AgencyDAO {

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

    public List<EmployeeModel> getAllAgency(String nameAgency) throws Exception {
        List<EmployeeModel> list = new ArrayList<>();
        String sql = "SELECT * FROM " + nameAgency;
        try {
            Connection connection = getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                list.add(new EmployeeModel(resultSet.getInt("id"), resultSet.getString("code"),
                        resultSet.getString("name"), resultSet.getString("position"), resultSet.getString("pay1h"),
                        resultSet.getString("payOT")));

            }
        } catch (Exception e) {

        }
        return list;
    }

    public EmployeeModel getEmployeeById(String agency, String id) {
        String query = "SELECT * FROM " + agency + " WHERE id = ?";
        try {
            Connection connection = getConnection();
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, id);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                return new EmployeeModel(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3),
                        resultSet.getString(4), resultSet.getString(5), resultSet.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void addEmployee(String agency, String code, String name, String position, String pay1h, String payOT) {
        String query = "INSERT INTO `dulieuquanlifb`.`" + agency
                + "` (`code`, `name`, `position`, `pay1h`, `payOT`) VALUES (?,?,?,?,?)";
        try {
            Connection connection = getConnection();
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, code);
            statement.setString(2, name);
            statement.setString(3, position);
            statement.setString(4, pay1h);
            statement.setString(5, payOT);
            statement.executeUpdate();
        } catch (Exception e) {

        }
    }

    public void editEmployee(String agency, String id, String code, String name, String position, String pay1h,
                             String payOT) {
        String query = "UPDATE `dulieuquanlifb`.`" + agency
                + "` SET `code`=?, `name`=?, `position`=?, `pay1h`=?, `payOT`=? WHERE `id`=?";
        try {
            Connection connection = getConnection();
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, code);
            statement.setString(2, name);
            statement.setString(3, position);
            statement.setString(4, pay1h);
            statement.setString(5, payOT);
            statement.setString(6, id);
            statement.executeUpdate();
        } catch (Exception e) {

        }
    }

    public void deleteEmployee(String agency, String id) {
        String query = "DELETE FROM " + agency + " WHERE id = ?";
        try {
            Connection connection = getConnection();
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, id);
            statement.executeUpdate();
        } catch (Exception e) {

        }
    }
}
