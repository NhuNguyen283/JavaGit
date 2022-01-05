package com.example.demo.controller.coffeeController;

import com.example.demo.dao.agency1.CoffeeDAO;
import com.example.demo.model.CoffeeModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Coffee", value = "/coffee")
public class CoffeeServlet extends HttpServlet {
    private CoffeeDAO coffeeDAO;

    public void init() {
        coffeeDAO = new CoffeeDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<CoffeeModel> list = coffeeDAO.getAllCoffee();
            request.setAttribute("listCoffee", list);
            request.getRequestDispatcher("coffee.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String code = request.getParameter("code");
            String image = request.getParameter("image");
            String name = request.getParameter("name");
            String size = request.getParameter("size");
            String price = request.getParameter("price");
            String grCoffee = request.getParameter("grCoffee");
            String freshMilk = request.getParameter("freshMilk");
            String condensedMilk = request.getParameter("condensedMilk");
            String sugar = request.getParameter("sugar");

            coffeeDAO.addCoffee(code,image,name,size,price,grCoffee,freshMilk,condensedMilk,sugar);
            response.sendRedirect("coffee");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) {
        try {
            resp.setContentType("application/json");
            String id = req.getParameter("sid");
            coffeeDAO.deleteCoffee(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
