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
import java.util.List;
import model.*;

/**
 *
 * @author pc
 */
@WebServlet(name = "updatechef", urlPatterns = {"/updatechef"})
public class updatechef extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        String xChef = request.getParameter("Chef");
        DauBepDAO u = new DauBepDAO();
        DauBep x = u.getDauBep(xChef);
        request.setAttribute("x", x);
        request.getRequestDispatcher("updatechef.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        String xChef, ximg, xChuyenMon, xGender;
        int xrate, xIdChef;
        xChef = request.getParameter("Chef");
        ximg = request.getParameter("img");
        xChuyenMon = request.getParameter("ChuyenMon");
        xGender = request.getParameter("Gender");
        xrate = Integer.parseInt(request.getParameter("rate"));
        xIdChef = Integer.parseInt(request.getParameter("IdChef"));
        DauBepDAO u = new DauBepDAO();
        u.updatechef(xChef, ximg, xChuyenMon, xGender, xrate, xIdChef);
        response.sendRedirect("./admin/team.jsp");
    }

}
