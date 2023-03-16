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
@WebServlet(name="updateCustom", urlPatterns={"/updateCustom"})
public class updateCustom extends HttpServlet {
   
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        String xNameC = request.getParameter("nameC");
        CustomDAO u = new CustomDAO();
        Custom x = u.getCustom(xNameC);
        request.setAttribute("x", x);
        request.getRequestDispatcher("updateCustom.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        String xNameC, ximgC;
        int xIdChef, xPriceC;
        xNameC = request.getParameter("nameC");
        xPriceC = Integer.parseInt(request.getParameter("priceC"));
        ximgC= request.getParameter("imgC");
        xIdChef = Integer.parseInt(request.getParameter("IdChef"));
        CustomDAO u = new CustomDAO();
        u.updateCustom(xNameC, xPriceC, ximgC, xIdChef);
        response.sendRedirect("./admin/menu.jsp");
    }

}
