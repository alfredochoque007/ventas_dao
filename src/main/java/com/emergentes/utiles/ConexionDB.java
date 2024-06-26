
package com.emergentes.utiles;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionDB {
    
    static String driver = "com.mysql.jdbc.Driver";
    static String url = "jdbc:mysql://localhost:3306/bd_ventas";
    static String usuario = "luis";
    static String password = "123456";
    
    protected   Connection conn = null;
    public ConexionDB(){
        try{
            //Especificaion del Driver
            Class.forName(driver);
            //Establece la conexion a la base de datos
            conn = DriverManager.getConnection(url, usuario, password);
            //verificar si la conexion fue exitosa
            if(conn !=null){
                System.out.println("Conexion ok" +  conn);
            }
        
        }catch (SQLException ex){
            System.out.println("Error de SQL"+ex.getMessage());
        }catch(ClassNotFoundException e){
            
            System.out.println("Error en Driver"+e.getMessage());
        }
    
    }
    
    public Connection conectar(){
        return conn;
    
    }
    
    public void desconectar(){
        try{
            conn.close();
          
        }catch(SQLException ex){
            System.out.println("Error de SQL"+ex.getMessage());
        }
    
    }
    
}