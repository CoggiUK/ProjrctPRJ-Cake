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
@WebServlet(name = "addchef", urlPatterns = {"/addchef"})
public class addchef extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        String xChef,ximg,xChuyenMon,xGender,sIdChef, srate;int xrate, xIdChef;
        xChef = request.getParameter("Chef");
        xChef = xChef.trim();
        DauBepDAO u = new DauBepDAO();
        DauBep x = u.getDauBep(xChef);
        if(x != null) {
           pr.print("<h3> The Chef " + xChef + " already exists!");
           request.getRequestDispatcher("../admin/addchef.jsp").include(request, response);
           return;
        }
        if(xChef==null ||xChef.trim().length()==0) {
           pr.print("<h3> The Chef must not be empty!");
           request.getRequestDispatcher("../admin/addchef.jsp").include(request, response);
           return;
         }
        ximg = request.getParameter("img");
        if(ximg==null || ximg.trim().length()==0) {
           pr.print("<h3> The img must not be empty!");
           request.getRequestDispatcher("../admin/addchef.jsp").include(request, response);
           return;
         }
        xChuyenMon = request.getParameter("ChuyenMon");
        if(xChuyenMon==null || xChuyenMon.trim().length()==0) {
            request.getRequestDispatcher("../addchef.jsp").include(request, response);
           pr.print("<h3> The chuyen mon must not be empty!");
           
           return;
         }
        
        xGender = request.getParameter("Gender");
        if(xGender==null || xGender.trim().length()==0) {
            request.getRequestDispatcher("../addchef.jsp").include(request, response);
           pr.print("<h3> The gender must not be empty!");
           
           return;
         }
        sIdChef = request.getParameter("IdChef");
        if(sIdChef.trim().length()==0)
          xIdChef=0;
        else {
          xIdChef = Integer.parseInt(sIdChef);
         }
        
        srate = request.getParameter("rate");
        if(srate.trim().length()==0)
          xrate=0;
        else {
          xrate = Integer.parseInt(srate);
         }
        x = new DauBep(xChef, ximg, xChuyenMon, xGender, xrate, xIdChef);
        u.insertchef(x);
        response.sendRedirect("admin/team.jsp");

    }
}
