package com.example.demo.controller.adminController;

import com.example.demo.dao.agency2.MilkteaDAO;
import com.example.demo.model.MilkteaModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(value = "/adminMilktea2")
public class MilkteaServlet2 extends HttpServlet {
    private MilkteaDAO milkteaDAO;

    @Override
    public void init() {
        milkteaDAO = new MilkteaDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<MilkteaModel> list = milkteaDAO.getAllMilktea();
            request.setAttribute("listMilktea", list);
            request.getRequestDispatcher("adminMilktea2.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
