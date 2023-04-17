module com.example.user16 {
    requires javafx.controls;
    requires javafx.fxml;
    requires java.sql;


    opens com.example.user16 to javafx.fxml;
    exports com.example.user16;
}