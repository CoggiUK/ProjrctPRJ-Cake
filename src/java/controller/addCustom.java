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
@WebServlet(name="addCustom", urlPatterns={"/addCustom"})
public class addCustom extends HttpServlet {
   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        String xNameC,ximgC,sPriceC ,sIdChef;int xIdChef, xPriceC;
        xNameC = request.getParameter("nameC");
        xNameC = xNameC.trim();
        CustomDAO u = new CustomDAO();
        Custom x = u.getCustom(xNameC);
        if(x != null) {
           pr.print("<h3> The cake " + xNameC + " already exists!");
           request.getRequestDispatcher("../admin/addCustom.jsp").include(request, response);
           return;
        }
        if(xNameC==null ||xNameC.trim().length()==0) {
           pr.print("<h3> The cake's name must not be empty!");
           request.getRequestDispatcher("../admin/addCustom.jsp").include(request, response);
           return;
         }
        ximgC = request.getParameter("imgC");
        if(ximgC==null || ximgC.trim().length()==0) {
           pr.print("<h3> The cake's img must not be empty!");
           request.getRequestDispatcher("../admin/addCustom.jsp").include(request, response);
           return;
         }
        
        sIdChef = request.getParameter("IdChef");
        if(sIdChef.trim().length()==0)
          xIdChef=0;
        else {
          xIdChef = Integer.parseInt(sIdChef);
         }
        
        sPriceC = request.getParameter("priceC");
        if(sPriceC.trim().length()==0)
          xPriceC=0;
        else {
          xPriceC = Integer.parseInt(sPriceC);
         }
        x = new Custom(xNameC, xPriceC, ximgC, xIdChef);
        u.insertCustom(x);
        response.sendRedirect("admin/menu.jsp");

    }

}
