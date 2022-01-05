package com.example.demo.controller.employee;

import com.example.demo.dao.employee.AgencyDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Delete", value = "/delete")
public class DeleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String eid = request.getParameter("eid");
        String agency = request.getParameter("agency");
        AgencyDAO agencyDAO =new AgencyDAO();
        agencyDAO.deleteEmployee(agency,eid);
        response.sendRedirect("agency?name="+agency);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
