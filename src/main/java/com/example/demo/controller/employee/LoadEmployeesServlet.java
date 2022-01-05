package com.example.demo.controller.employee;

import com.example.demo.dao.employee.AgencyDAO;
import com.example.demo.model.EmployeeModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoadEmployees", value = "/loadEmployees")
public class LoadEmployeesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String agency = request.getParameter("agency");
        String eid = request.getParameter("eid");
        AgencyDAO agencyDAO = new AgencyDAO();
        EmployeeModel employeeModel = agencyDAO.getEmployeeById(agency, eid);
        request.setAttribute("employee", employeeModel);
        request.setAttribute("agency", agency);
        request.getRequestDispatcher("edit_employee.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
