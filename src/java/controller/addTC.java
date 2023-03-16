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
@WebServlet(name="addTC", urlPatterns={"/addTC"})
public class addTC extends HttpServlet {
   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        String xNameT,ximgT,sPriceT ,sIdChef;int xIdChef, xPriceT;
        xNameT = request.getParameter("nameT");
        xNameT = xNameT.trim();
        TiecCuoiDAO u = new TiecCuoiDAO();
        TiecCuoi x = u.getTiecCuoi(xNameT);
        if(x != null) {
           pr.print("<h3> The cake " + xNameT + " already exists!");
           request.getRequestDispatcher("../admin/addTC.jsp").include(request, response);
           return;
        }
        if(xNameT==null ||xNameT.trim().length()==0) {
           pr.print("<h3> The cake's name must not be empty!");
           request.getRequestDispatcher("../admin/addTC.jsp").include(request, response);
           return;
         }
        ximgT = request.getParameter("imgT");
        if(ximgT==null || ximgT.trim().length()==0) {
           pr.print("<h3> The cake's img must not be empty!");
           request.getRequestDispatcher("../admin/addTC.jsp").include(request, response);
           return;
         }
        
        sIdChef = request.getParameter("IdChef");
        if(sIdChef.trim().length()==0)
          xIdChef=0;
        else {
          xIdChef = Integer.parseInt(sIdChef);
         }
        
        sPriceT = request.getParameter("priceT");
        if(sPriceT.trim().length()==0)
          xPriceT=0;
        else {
          xPriceT = Integer.parseInt(sPriceT);
         }
        x = new TiecCuoi(xNameT, xPriceT, ximgT, xIdChef);
        u.insertTC(x);
        response.sendRedirect("admin/menu.jsp");

    }

}
