/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jasin.controler;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Jasin007
 */
public class ConnectDatabase {
    
    public static Connection getConnection()
    {
        String url = "jdbc:oracle:thin:@localhost:1521:orcl";
        String user = "hr";
        String password = "hr";
        String driver = "oracle.jdbc.OracleDriver"; 
        try {
            Class.forName(driver);
            return DriverManager.getConnection(url,user,password);
        } catch (Exception e) {
            return null;
        }
     }
   
    
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        ConnectDatabase conn = new ConnectDatabase();
       
        conn.getConnection();
        if(conn != null){
            System.out.println("Open Database Success");
        }
    }
    
}
