package com.example.demo.controller.milkteaController;

import com.example.demo.dao.agency1.MilkteaDAO;
import com.example.demo.model.MilkteaModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Milktea", value = "/milktea")
public class MilkteaServlet extends HttpServlet {
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
            request.getRequestDispatcher("milktea.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
try {
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

    milkteaDAO.addMilktea(code,image,name,size,price,typeofTea,mlTea,condensedMilk,typeofSyrup,mlSyrup);
    response.sendRedirect("milktea");
}catch (Exception e){
    e.printStackTrace();
}
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) {
        try {
            resp.setContentType("application/json");
            String id=req.getParameter("sid"); // lay thong so
            milkteaDAO.deleteMilktea(id);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
