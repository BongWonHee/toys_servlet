package com.example.toys_servlet.common;

import java.sql.Connection;
import java.util.Date;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.UUID;

public class Common {

    public Statement getStatement() {
        
<<<<<<< HEAD
        String url = "jdbc:mysql://192.168.0.46:3306/db_usersurvey";
        String user = "yojulab";
=======
        String url = "jdbc:mysql://127.0.0.1:3306/db_usersurvey";
        String user = "root";
>>>>>>> 198dfa8ffc01f89a2e2941b0faa7a0fe8eee64a2
        String password = "!yojulab*";
        System.out.println("성공");
        Statement statement = null;
        try {
            Connection connection = DriverManager.getConnection(url, user, password);
            statement = connection.createStatement();
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return statement;
    }

    public String getGeneratorID() {
        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("dd-M-yyyyhh:mm:ss");
        String strDate = formatter.format(date);
        return strDate;
    }

    public String generatUuid() {

        return UUID.randomUUID().toString();
    }
}


