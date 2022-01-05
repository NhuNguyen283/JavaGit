package com.example.demo.controller.employee;

import com.example.demo.dao.employee.AgencyDAO;
import com.example.demo.model.EmployeeModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/loadEmployees2")
public class LoadEmployeesServlet2 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String agency = request.getParameter("agency");
        String eid = request.getParameter("eid");
        AgencyDAO agencyDAO = new AgencyDAO();
        EmployeeModel employeeModel = agencyDAO.getEmployeeById(agency, eid);
        request.setAttribute("employee", employeeModel);
        request.setAttribute("agency", agency);
        request.getRequestDispatcher("edit_employee2.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
