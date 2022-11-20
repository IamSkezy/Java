package com.example.taxi_app;

import java.sql.*;
import java.util.ArrayList;
//Подключение к DB
public class DB {
    public static final String DATABASE_URL = "jdbc:mysql://127.0.0.1:3306/user17?useSSL=false";
    public static final String DATABASE_USERNAME = "admin";
    public static final String DATABASE_PASSWORD = "12345";
    public static final String SELECT_QUERY = "SELECT * FROM `employee` WHERE login = ? and password = ?";

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
            Profile.name = resultSet.getString(2);
            Profile.post = resultSet.getString(3);
        }
        connection.close();
        return "Failed";
    }

    //Метод для получения информации об истории входа сотрудников
    public static ArrayList<String> getHist() throws SQLException {
        String query = "select fio, last_enter from employee";
        Connection connection = DriverManager.getConnection(DATABASE_URL, DATABASE_USERNAME, DATABASE_PASSWORD);
        PreparedStatement preparedStatement = connection.prepareStatement(SELECT_QUERY);
        ResultSet res = preparedStatement.executeQuery(query);
        ArrayList<String> hist = new ArrayList<>();
        while(res.next()){
            hist.add(res.getString(1));
            hist.add(res.getString(2));
        }
        return hist;
    }
    //Метод для получения информации о сотрудниках
    public static ArrayList<String> getEmp() throws SQLException {
        String query = "select * from employee";
        Connection connection = DriverManager.getConnection(DATABASE_URL, DATABASE_USERNAME, DATABASE_PASSWORD);
        PreparedStatement preparedStatement = connection.prepareStatement(SELECT_QUERY);
        ResultSet res = preparedStatement.executeQuery(query);
        ArrayList<String> empdata = new ArrayList<>();
        while(res.next()){
            empdata.add(res.getString(1));
            empdata.add(res.getString(2));
            empdata.add(res.getString(3));
            empdata.add(res.getString(4));
            empdata.add(res.getString(5));
            empdata.add(res.getString(6));
            empdata.add(res.getString(7));
            empdata.add(res.getString(8));
        }
        return empdata;
    }
    //Метод для получения информации о клиентах
    public static ArrayList<String> getClients() throws SQLException {
        String query = "select * from clients";
        Connection connection = DriverManager.getConnection(DATABASE_URL, DATABASE_USERNAME, DATABASE_PASSWORD);
        PreparedStatement preparedStatement = connection.prepareStatement(SELECT_QUERY);
        ResultSet res = preparedStatement.executeQuery(query);
        ArrayList<String> clientsdata = new ArrayList<>();
        while(res.next()){
            clientsdata.add(res.getString(1));
            clientsdata.add(res.getString(2));
            clientsdata.add(res.getString(3));
            clientsdata.add(res.getString(4));
            clientsdata.add(res.getString(5));
            clientsdata.add(res.getString(6));
        }
        return clientsdata;
    }
}
