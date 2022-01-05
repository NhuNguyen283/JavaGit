package com.example.demo.controller.coffeeController;

import com.example.demo.dao.agency2.CoffeeDAO;
import com.example.demo.model.CoffeeModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/updateCoffee2")
public class ServletCoffeeUpdate2 extends HttpServlet {
    private CoffeeDAO coffeeDAO;

    public void init() {
        coffeeDAO = new CoffeeDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String id = request.getParameter("sid");
            CoffeeModel coffeeModel = coffeeDAO.getCoffeeByID(id);
            request.setAttribute("coffeeU", coffeeModel);
            request.getRequestDispatcher("updateCoffee2.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String id = request.getParameter("id");
            String code = request.getParameter("code");
            String image = request.getParameter("image");
            String name = request.getParameter("name");
            String size = request.getParameter("size");
            String price = request.getParameter("price");
            String grCoffee = request.getParameter("grCoffee");
            String freshMilk = request.getParameter("freshMilk");
            String condensedMilk = request.getParameter("condensedMilk");
            String sugar = request.getParameter("sugar");
            coffeeDAO.updateCoffee(id, code, image, name, size, price, grCoffee, freshMilk, condensedMilk, sugar);
            response.sendRedirect("coffee2");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
