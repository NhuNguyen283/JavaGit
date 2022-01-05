package com.example.demo.controller.adminController;

import com.example.demo.dao.agency2.CoffeeDAO;
import com.example.demo.model.CoffeeModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(value = "/adminCoffee2")
public class CoffeeServlet2 extends HttpServlet {
    private CoffeeDAO coffeeDAO;

    public void init() {
        coffeeDAO = new CoffeeDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<CoffeeModel> list = coffeeDAO.getAllCoffee();
            request.setAttribute("listCoffee", list);
            request.getRequestDispatcher("adminCoffee2.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    }
