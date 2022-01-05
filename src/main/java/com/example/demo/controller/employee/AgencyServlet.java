package com.example.demo.controller.employee;

import com.example.demo.dao.employee.AgencyDAO;
import com.example.demo.model.EmployeeModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Agency", value = "/agency")
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
            request.getRequestDispatcher("agency.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
