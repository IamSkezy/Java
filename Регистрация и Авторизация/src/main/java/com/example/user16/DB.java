package com.example.user16;
import java.sql.*;

public class DB {
    public static final String DATABASE_URL = "jdbc:mysql://127.0.0.1:3306/user16?useSSL=false";
    public static final String DATABASE_USERNAME = "admin";
    public static final String DATABASE_PASSWORD = "12345";
    public static final String SELECT_QUERY = "SELECT * FROM `users` WHERE login = ? and password = ?";

    public boolean validate(String login, String password) throws SQLException {
        Connection connection = DriverManager.getConnection(DATABASE_URL, DATABASE_USERNAME, DATABASE_PASSWORD);

        PreparedStatement preparedStatement = connection.prepareStatement(SELECT_QUERY);
        preparedStatement.setString(1, login);
        preparedStatement.setString(2, password);

        System.out.println(preparedStatement);

        ResultSet resultSet = preparedStatement.executeQuery();

        if(resultSet.next()){
            connection.close();
            return true;

        }
        else { connection.close();
            return false;
        }
    }

    //Метод для получения информации о пользователе
    public  String getEmpInfo(String login, String password) throws SQLException {
        Connection connection = DriverManager.getConnection(DATABASE_URL, DATABASE_USERNAME, DATABASE_PASSWORD);
        PreparedStatement preparedStatement = connection.prepareStatement(SELECT_QUERY);
        preparedStatement.setString(1, login);
        preparedStatement.setString(2, password);
        System.out.println(preparedStatement);
        ResultSet resultSet = preparedStatement.executeQuery();
        if((resultSet.next()) && (!resultSet.wasNull())){
            Profile.role = resultSet.getString(2);
            Profile.fio = resultSet.getString(3);
        }
        connection.close();
        return "Failed";
    }
}
