package com.example.user16;

import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Label;

import java.net.URL;
import java.util.ResourceBundle;

public class Profile implements Initializable {
    @FXML
    private Label fio_user;
    @FXML
    private Label role_user;
    public  static String fio = "";
    public  static String role = "";
    @Override
    public void initialize(URL location, ResourceBundle resources) {
        fio_user.setText("Здравствуйте, "+fio+" !");
        role_user.setText("Ваша должность: "+role);
    }
}
