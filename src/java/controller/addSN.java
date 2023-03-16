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
@WebServlet(name="addSN", urlPatterns={"/addSN"})
public class addSN extends HttpServlet {
   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        String xNameS,ximgS,sPriceS ,sIdChef;int xIdChef, xPriceS;
        xNameS = request.getParameter("nameS");
        xNameS = xNameS.trim();
        SinhNhatDAO u = new SinhNhatDAO();
        SinhNhat x = u.getSinhNhat(xNameS);
        if(x != null) {
           pr.print("<h3> The cake " + xNameS + " already exists!");
           request.getRequestDispatcher("../admin/addSN.jsp").include(request, response);
           return;
        }
        if(xNameS==null ||xNameS.trim().length()==0) {
           pr.print("<h3> The cake's name must not be empty!");
           request.getRequestDispatcher("../admin/addSN.jsp").include(request, response);
           return;
         }
        ximgS = request.getParameter("imgS");
        if(ximgS==null || ximgS.trim().length()==0) {
           pr.print("<h3> The cake's img must not be empty!");
           request.getRequestDispatcher("../admin/addSN.jsp").include(request, response);
           return;
         }
        
        sIdChef = request.getParameter("IdChef");
        if(sIdChef.trim().length()==0)
          xIdChef=0;
        else {
          xIdChef = Integer.parseInt(sIdChef);
         }
        
        sPriceS = request.getParameter("priceS");
        if(sPriceS.trim().length()==0)
          xPriceS=0;
        else {
          xPriceS = Integer.parseInt(sPriceS);
         }
        x = new SinhNhat(xNameS, xPriceS, ximgS, xIdChef);
        u.insertSN(x);
        response.sendRedirect("admin/menu.jsp");

    }

}
