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
@WebServlet(name="updateSN", urlPatterns={"/updateSN"})
public class updateSN extends HttpServlet {
   
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        String xNameS = request.getParameter("nameS");
        SinhNhatDAO u = new SinhNhatDAO();
        SinhNhat x = u.getSinhNhat(xNameS);
        SinhNhatDAO sinhnhatDAO = new SinhNhatDAO();
        request.setAttribute("x", x);
        request.getRequestDispatcher("updateSN.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        String xNameS, ximgS;
        int xIdChef, xPriceS;
        xNameS = request.getParameter("nameS");
        xPriceS = Integer.parseInt(request.getParameter("priceS"));
        ximgS= request.getParameter("imgS");
        xIdChef = Integer.parseInt(request.getParameter("IdChef"));
        SinhNhatDAO u = new SinhNhatDAO();
        u.updateSN(xNameS, xPriceS, ximgS, xIdChef);
        response.sendRedirect("./admin/menu.jsp");
    }
}
