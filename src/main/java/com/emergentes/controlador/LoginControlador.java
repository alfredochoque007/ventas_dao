package com.emergentes.controlador;

import com.emergentes.utiles.ConexionDB;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "LoginControlador", urlPatterns = {"/LoginControlador"})
public class LoginControlador extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession ses = request.getSession();

        String action = request.getParameter("action");
        action = (request.getParameter("action") == null) ? "view" : request.getParameter("action");

        if (action.equals("logout")) {
            ses.invalidate();
        }
        response.sendRedirect("login.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            ConexionDB canal = new ConexionDB();
            Connection cn = canal.conectar();
            PreparedStatement ps = cn.prepareStatement("select * from usuarios where email = ? and password = ?");
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs;
            rs = ps.executeQuery();
            // Si hay un registro
            if (rs.next()) {
                HttpSession ses = request.getSession();
                ses.setAttribute("logueado", "OK");
                //ses.setAttribute("usuario", rs.getString("usuario"));
                ses.setAttribute("email", rs.getString("email"));
                response.sendRedirect("ClienteControlador");
            } else {
                response.sendRedirect("login.jsp");
            }
        } catch (SQLException ex) {
            Logger.getLogger(LoginControlador.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
