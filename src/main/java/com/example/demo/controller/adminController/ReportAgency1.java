package com.example.demo.controller.adminController;

import com.example.demo.dao.agency1.ReportDAO;
import com.example.demo.dao.agency1.SalaryDAO;
import com.example.demo.model.SalesModel.*;
import com.example.demo.model.TotalSalaryModal;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(value = "/reportAgency1")
public class ReportAgency1 extends HttpServlet {
    private ReportDAO reportDAO;
    private SalaryDAO salaryDAO;

    @Override
    public void init() throws ServletException {
        reportDAO = new ReportDAO();
        salaryDAO = new SalaryDAO();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            List<Tea> getTea = reportDAO.getTea();
            req.setAttribute("tea",getTea);

            List<Syrup> getSyrup = reportDAO.getSyrup();
            req.setAttribute("syrup",getSyrup);

            Coffee coffee = reportDAO.getCoffee();
            req.setAttribute("coffee",coffee);

            Milk milk = reportDAO.getFreshMilk();
            req.setAttribute("milk",milk);

            CondensedMilk condensedMilk = reportDAO.getCondensedMilk();
            req.setAttribute("condensedMilk",condensedMilk);

            Sugar sugar = reportDAO.getSugar();
            req.setAttribute("sugar",sugar);

            Money moneyCoffee = reportDAO.getMoneyCoffee();
            req.setAttribute("moneyCoffee",moneyCoffee);

            Money moneyTea = reportDAO.getMoneyTea();
            req.setAttribute("moneyTea",moneyTea);

            TotalSalaryModal totalSalaryModal = salaryDAO.getSum();
            req.setAttribute("employee",totalSalaryModal);

            req.getRequestDispatcher("reportAgency1.jsp").forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
