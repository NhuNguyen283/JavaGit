package com.example.demo.controller.salesMilkteaController;

import com.example.demo.dao.agency1.SalesDAO;
import com.example.demo.model.SalesMilkteaModel;
import com.example.demo.model.TotalMilkteaModal.TotalMilkteaModal;
import com.example.demo.model.TotalMilkteaModal.TotalSumModal;
import com.example.demo.model.TotalMilkteaModal.TotalSyrypModal;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SalesMilktea", value = "/salesMilktea")
public class ReportSalesMilktea extends HttpServlet {
    private SalesDAO salesDAO;

    public void init() {
        salesDAO = new SalesDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<SalesMilkteaModel> list = salesDAO.getSalesMilktea();
            request.setAttribute("listMilktea", list);
            List<TotalMilkteaModal> getSumTea = salesDAO.getSumTea();
            request.setAttribute("getSumTea",getSumTea);
            List<TotalSyrypModal> getSumSyrup = salesDAO.getSumSyrup();
            request.setAttribute("getSumSyrup",getSumSyrup);
            TotalSumModal getSumTotal = salesDAO.getSumTotal();
            request.setAttribute("getSumTotal",getSumTotal);
            request.getRequestDispatcher("salesMilktea.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
