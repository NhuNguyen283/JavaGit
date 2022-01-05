package com.example.demo.controller.coffeeController;

import com.example.demo.dao.agency2.CoffeeDAO;
import com.example.demo.model.CoffeeModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(value = "/searchCoffee2")
public class ServletCoffeeSearch2 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            String name = request.getParameter("name");
            CoffeeDAO coffeeDAO = new CoffeeDAO();
            List<CoffeeModel> search = coffeeDAO.search(name);
            request.setAttribute("searchCoffee", search);
            request.getRequestDispatcher("coffee2.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
