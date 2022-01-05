package com.example.demo.controller.employee;

import com.example.demo.dao.employee.AgencyDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/delete2")
public class DeleteServlet2 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String eid = request.getParameter("eid");
        String agency = request.getParameter("agency");
        AgencyDAO agencyDAO =new AgencyDAO();
        agencyDAO.deleteEmployee(agency,eid);
        response.sendRedirect("agency2?name="+agency);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
