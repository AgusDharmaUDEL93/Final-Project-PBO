/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.kelompok3;
import java.sql.*;

/**
 *
 * @author agusdharma
 */

public class App {
    public static void main (String[] args){
         try{
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/testjava", "admin", "admin");
            Statement stmt =con.createStatement();  
            System.out.println("Koneksi Berhasil");
        }catch (Exception e){
            System.out.println(e);
        }
    }
}
