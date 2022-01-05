package com.example.demo.controller.coffeeController;

import com.example.demo.dao.agency1.CoffeeDAO;
import com.example .demo.model.CoffeeModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletCoffeeSearch", value = "/searchCoffee")
public class ServletCoffeeSearch extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            String name = request.getParameter("name");
            CoffeeDAO coffeeDAO = new CoffeeDAO();
            List<CoffeeModel> search = coffeeDAO.search(name);
            request.setAttribute("searchCoffee", search);
            request.getRequestDispatcher("coffee.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
