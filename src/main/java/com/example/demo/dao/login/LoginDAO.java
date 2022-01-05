package com.example.demo.dao.login;

import com.example.demo.connectDB.ConnectDB;
import com.example.demo.model.LoginModel;

import java.sql.*;

public class LoginDAO {
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

    public LoginModel checkLogin(String username, String password) throws Exception {
        String sql = "SELECT * FROM account WHERE username=? AND password=?;";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, username);
            statement.setString(2, password);
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    return new LoginModel(resultSet.getString("username"),
                            resultSet.getString("password"),
                            resultSet.getString("role")
                    );
                }
            }
        }
        return null;
    }
}
