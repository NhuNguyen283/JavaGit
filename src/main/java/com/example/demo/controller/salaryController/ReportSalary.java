package com.example.demo.controller.salaryController;

import com.example.demo.dao.agency1.SalaryDAO;
import com.example.demo.model.SalaryModel;
import com.example.demo.model.TotalSalaryModal;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Sales", value = "/reportSalary")
public class ReportSalary extends HttpServlet {
    private SalaryDAO salaryDAO;

    public void init() {
        salaryDAO = new SalaryDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<SalaryModel> list = salaryDAO.getAll();
            request.setAttribute("list", list);
            TotalSalaryModal totalSalaryModal = salaryDAO.getSum();
            request.setAttribute("sum",totalSalaryModal);
            request.getRequestDispatcher("reportSalary.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
