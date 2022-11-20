module com.example.taxi_app {
    requires javafx.controls;
    requires javafx.fxml;
    requires java.sql;
    requires itextpdf;
    requires java.desktop;
    requires javafx.swing;


    opens com.example.taxi_app to javafx.fxml;
    exports com.example.taxi_app;
}