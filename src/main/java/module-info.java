module com.carmanager.carmanager {
    requires javafx.controls;
    requires javafx.fxml;


    opens com.carmanager.carmanager to javafx.fxml;
    exports com.carmanager.carmanager;
}