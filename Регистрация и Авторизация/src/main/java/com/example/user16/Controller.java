package com.example.user16;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.stage.Stage;
import javafx.stage.Window;

import java.io.IOException;
import java.sql.*;

public class Controller {
    @FXML
    TextField loginField;
    @FXML
    PasswordField passwordField;
    @FXML
    TextField passwordFieldHidden;
    @FXML
    CheckBox checkbox;
    @FXML
    Button authButton;
    @FXML
    Label error_wrongData;
    @FXML
    Label error_emptyData;

    //Маска пароля
    public void visiblePass(ActionEvent event) {
        if (checkbox.isSelected()) {
            passwordFieldHidden.setText(passwordField.getText());
            passwordFieldHidden.setVisible(true);
            passwordField.setVisible(false);
            return;
        }
        passwordField.setText(passwordField.getText());
        passwordField.setVisible(true);
        passwordFieldHidden.setVisible(false);
    }

    //Авторизация
    public void login(ActionEvent event) throws SQLException, IOException {
        Window window = authButton.getScene().getWindow();

        if (passwordField.getText().isEmpty()) {
            error_emptyData.setVisible(true);
        }
        if (loginField.getText().isEmpty()) {
            error_emptyData.setVisible(true);
        }

        String login = loginField.getText();
        String password = passwordField.getText();

        DB db = new DB();
        boolean flag = db.validate(login, password);

        //Если ввели данные неправильно
        if (!flag) {
            error_wrongData.setVisible(true);
        }
        //Переход на Profile.fxml в случае успешной авторизации
        else{
            db.getEmpInfo(login, password);
            Stage stage = new Stage();
            Parent root = FXMLLoader.load(getClass().getResource("profile.fxml"));
            stage.setTitle("Салон красоты");
            stage.setScene(new Scene(root, 600, 600));
            stage.show();
            stage.setResizable(false);
            ((Node)(event.getSource())).getScene().getWindow().hide();
        }
    }
}
