module com.carmanager {
    requires javafx.controls;
    requires javafx.fxml;
    requires java.sql;
    requires jbcrypt;

    opens com.carmanager.dao to javafx.fxml;
    exports com.carmanager.dao;

    opens com.carmanager.util to javafx.fxml;
    exports com.carmanager.util;
}