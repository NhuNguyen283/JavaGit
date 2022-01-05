package com.example.demo.controller.salesMilkteaController;

import com.example.demo.dao.agency2.ModalDAO;
import com.example.demo.model.ModalMilkteaModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/modalMilktea2")
public class ModalServlet2 extends HttpServlet {
    private ModalDAO modalDAO;

    public void init() {
        modalDAO = new ModalDAO();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String id = req.getParameter("sid");
            ModalMilkteaModel modalModel = modalDAO.getModalMilkteaById(id);
            req.setAttribute("modalMilktea", modalModel);
            req.getRequestDispatcher("modalMilktea2.jsp").forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String id = req.getParameter("id");
            String quantity = req.getParameter("quantity");
            modalDAO.updateMilkteaModal(id, quantity);
            resp.sendRedirect("salesMilktea2");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
