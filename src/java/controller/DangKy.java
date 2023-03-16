package controller;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import model.*;
@WebServlet(name = "DangKy", urlPatterns = {"/DangKy"})

public class DangKy extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        String xName,xPass;
        xName = request.getParameter("name");
        xName = xName.trim();
        xPass = request.getParameter("pass");
        xPass = xPass.trim();
        UserDAO u = new UserDAO();
        User x = u.getUser(xName, xPass);
        if(x != null) {
           pr.print("The name " + xName + " already exists!");
           request.getRequestDispatcher("/DangKy.jsp").include(request, response);
           return;
        }
        
        if(xPass==null || xPass.trim().length()==0) {
           pr.print(" The pass must not be empty!");
           request.getRequestDispatcher("/DangKy.jsp").include(request, response);
           return;
         }
        
        x = new User(xName, xPass, 3);
        u.insert(x);
        if (x == null) {
            
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("acc", x);

            response.sendRedirect("index.jsp");
        }

    }
}

