package com.example.demo.controller.adminController;

import com.example.demo.dao.employee.AgencyDAO;
import com.example.demo.model.EmployeeModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(value = "/adminEmployee")
public class AgencyServlet extends HttpServlet {
    private AgencyDAO agencyDAO;

    public void init() {
        agencyDAO = new AgencyDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String name = request.getParameter("name");
            List<EmployeeModel> list = agencyDAO.getAllAgency(name);
            request.setAttribute("agency", name);
            request.setAttribute("listAgency", list);
            request.getRequestDispatcher("adminEmployee.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
