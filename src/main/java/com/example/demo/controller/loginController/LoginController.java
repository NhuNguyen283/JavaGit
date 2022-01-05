package com.example.demo.controller.loginController;

import com.example.demo.dao.login.LoginDAO;
import com.example.demo.model.LoginModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Objects;

@WebServlet(value = "/login")
public class LoginController extends HttpServlet {
    private LoginDAO loginDAO;

    public void init(){
        loginDAO = new LoginDAO();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try{
            String username = req.getParameter("username");
            String password = req.getParameter("password");
            LoginModel check = loginDAO.checkLogin(username,password);
            if(Objects.equals(check.getRole(), "admin")){
                resp.sendRedirect("adminCoffee");
            }
            else if(Objects.equals(check.getRole(),"agency1")){
                resp.sendRedirect("coffee");
            }
            else if(Objects.equals(check.getRole(),"agency2")){
                resp.sendRedirect("coffee2");
            }
            else{
                resp.sendRedirect("login.jsp");
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }
}
