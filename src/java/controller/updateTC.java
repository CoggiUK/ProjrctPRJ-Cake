/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.*;

/**
 *
 * @author pc
 */
@WebServlet(name = "updateTC", urlPatterns = {"/updateTC"})
public class updateTC extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        String xNameT = request.getParameter("nameT");
        TiecCuoiDAO u = new TiecCuoiDAO();
        TiecCuoi x = u.getTiecCuoi(xNameT);
        request.setAttribute("x", x);
        request.getRequestDispatcher("updateTC.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        String xNameT, ximgT;
        int xIdChef, xPriceT;
        xNameT = request.getParameter("nameT");
        xPriceT = Integer.parseInt(request.getParameter("priceT"));
        ximgT = request.getParameter("imgT");
        xIdChef = Integer.parseInt(request.getParameter("IdChef"));
        TiecCuoiDAO u = new TiecCuoiDAO();
        u.updateTC(xNameT, xPriceT, ximgT, xIdChef);
        response.sendRedirect("./admin/menu.jsp");
    }
}
