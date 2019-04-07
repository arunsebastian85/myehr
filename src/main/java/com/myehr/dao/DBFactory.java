package com.myehr.dao;

import org.apache.commons.dbcp.BasicDataSource;

import java.sql.Connection;
import java.sql.SQLException;

public class DBFactory {

    private static final BasicDataSource dataSource = new BasicDataSource();

    static {
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3306/data");
        dataSource.setUsername("app_user");
        dataSource.setPassword("PASSWORD");
    }

    private DBFactory() {
        //
    }

    public static Connection getConnection() throws SQLException {
        return dataSource.getConnection();
    }
}
