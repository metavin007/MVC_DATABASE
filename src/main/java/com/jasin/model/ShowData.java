/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jasin.model;

import com.jasin.controler.ConnectDatabase;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Jasin007
 */
public class ShowData {
    
     ArrayList<String> id ;
     ArrayList<String> firstname;
     ArrayList<String> lastname;
     ArrayList<String> email;
     ArrayList<String> phonenumber;
     ArrayList<String> salary;
    
    public void CreateData(String searchby , String key) throws SQLException, ClassNotFoundException
    {
        
        String sqlShow = "";
        Connection conn = new ConnectDatabase().getConnection();
        if(searchby.length() != 0)
        {
            System.out.println("not null");
            sqlShow = "SELECT * FROM employees ";
        }
        else
        {
            System.out.println("Data is null");
            sqlShow = "SELECT * FROM employees order by employee_id asc";
        }
        ResultSet rs = conn.createStatement().executeQuery(sqlShow);
        
        id          =     new ArrayList<String>();
        firstname   =     new ArrayList<String>();
        lastname    =     new ArrayList<String>();
        email       =     new ArrayList<String>();
        phonenumber =     new ArrayList<String>();
        salary      =     new ArrayList<String>();
        
        while(rs.next()){
            id.add(rs.getString("employee_id"));
            firstname.add(rs.getString("first_name"));
            lastname.add(rs.getString("last_name"));
            email.add(rs.getString("email"));
            phonenumber.add(rs.getString("phone_number"));
            salary.add(rs.getString("salary"));
            
        }
     } 

    public ArrayList<String> getId() {
        return id;
    }

    public void setId(ArrayList<String> id)  {
        this.id = id;
    }

    public ArrayList<String> getFirstname() {
        return firstname;
    }

    public void setFirstname(ArrayList<String> firstname)  {
        this.firstname = firstname;
    }

    public ArrayList<String> getLastname() {
        return lastname;
    }

    public void setLastname(ArrayList<String> lastname)  {
        this.lastname = lastname;
    }

    public ArrayList<String> getEmail() {
        return email;
    }

    public void setEmail(ArrayList<String> email)  {
        this.email = email;
    }

    public ArrayList<String> getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(ArrayList<String> phonenumber) throws SQLException {
        this.phonenumber = phonenumber;
    }

    public ArrayList<String> getSalary() {
        return salary;
    }

    public void setSalary(ArrayList<String> salary) throws SQLException {
        this.salary = salary;
    }
     
     public static void main(String[] args) throws SQLException, ClassNotFoundException {
        ShowData sh = new ShowData();
        sh.CreateData("", "");
        
        for(int i = 0 ; i < sh.getId().size() ; i++){
            System.out.println(sh.getFirstname().get(i));
        }
    }
}
