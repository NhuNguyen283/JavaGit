package com.example.demo.controller.salaryController;

import com.example.demo.dao.agency2.SalaryDAO;
import com.example.demo.model.SalaryModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/salary2")
public class ModalServlet2 extends HttpServlet {
    private SalaryDAO salaryDAO;

    public void init() {
        salaryDAO = new SalaryDAO();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String id = req.getParameter("sid");
            SalaryModel salaryModel = salaryDAO.getByID(id);
            req.setAttribute("modal", salaryModel);
            req.getRequestDispatcher("salary2.jsp").forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String id = req.getParameter("id");
            String workingHours = req.getParameter("workingHours");
            String hoursOT = req.getParameter("hoursOT");
            salaryDAO.updateSalaryModal(id, workingHours,hoursOT);
            resp.sendRedirect("reportSalary2");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
