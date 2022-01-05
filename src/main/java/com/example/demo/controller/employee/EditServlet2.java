package com.example.demo.controller.employee;

import com.example.demo.dao.employee.AgencyDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/edit2")
public class EditServlet2 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String agency = request.getParameter("agency");
        String id = request.getParameter("id");
        String code = request.getParameter("code");
        String name = request.getParameter("name");
        String position = request.getParameter("position");
        String pay1h = request.getParameter("pay1h");
        String payOT = request.getParameter("payOT");
        AgencyDAO agencyDAO =new AgencyDAO();
        agencyDAO.editEmployee(agency,id,code,name,position,pay1h,payOT);
        response.sendRedirect("agency2?name="+agency);
    }
}
