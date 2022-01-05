package com.example.demo.controller.milkteaController;

import com.example.demo.dao.agency2.MilkteaDAO;
import com.example.demo.model.MilkteaModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/updateMilktea2")
public class ServletMilkteaUpdate2 extends HttpServlet {
    private MilkteaDAO milkteaDAO;

    public void init() {
        milkteaDAO = new MilkteaDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            String id = request.getParameter("sid");
            MilkteaModel milkteaModel = milkteaDAO.getMilkteaByID(id);
            request.setAttribute("milkteaU", milkteaModel);
            request.getRequestDispatcher("updateMilktea2.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String id = request.getParameter("id");
            String code = request.getParameter("code");
            String image = request.getParameter("image");
            String name = request.getParameter("name");
            String size = request.getParameter("size");
            String price = request.getParameter("price");
            String typeofTea = request.getParameter("typeofTea");
            String mlTea = request.getParameter("mlTea");
            String condensedMilk = request.getParameter("condensedMilk");
            String typeofSyrup = request.getParameter("typeofSyrup");
            String mlSyrup = request.getParameter("mlSyrup");

            milkteaDAO.updateMilktea(id, code, image, name, size, price, typeofTea, mlTea, condensedMilk, typeofSyrup, mlSyrup);
            response.sendRedirect("milktea2");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
