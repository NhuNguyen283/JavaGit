package com.example.demo.controller.milkteaController;

import com.example.demo.dao.agency1.MilkteaDAO;
import com.example.demo.model.MilkteaModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletMilkteaSearch", value = "/searchMilktea")
public class ServletMilkteaSearch extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            String name = request.getParameter("name");
            MilkteaDAO milkteaDAO = new MilkteaDAO();
            List<MilkteaModel> search = milkteaDAO.search(name);
            request.setAttribute("searchMilktea", search);
            request.getRequestDispatcher("milktea.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
