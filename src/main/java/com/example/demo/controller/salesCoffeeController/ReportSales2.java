package com.example.demo.controller.salesCoffeeController;

import com.example.demo.dao.agency2.SalesDAO;
import com.example.demo.model.SalesCoffeeModel;
import com.example.demo.model.TotalCoffeeModal;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet( value = "/salesCoffee2")
public class ReportSales2 extends HttpServlet {
    private SalesDAO salesDAO;

    public void init() {
        salesDAO = new SalesDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<SalesCoffeeModel> list = salesDAO.getAllSales();
            request.setAttribute("listCoffee", list);
            TotalCoffeeModal totalModal = salesDAO.getSum();
            request.setAttribute("sum",totalModal);
            request.getRequestDispatcher("salesCoffee2.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
