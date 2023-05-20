/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uts.isd.controller;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import uts.isd.model.Product;
import uts.isd.model.dao.ProductDBManagerDAO;
/**
 *
 * @author kishi
 */
public class BrowseProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // create product array
        ArrayList<Product> productList = new ArrayList<>();
        
        //get session
        HttpSession session = request.getSession();
        
        //get product manager
        ProductDBManagerDAO productDBManager = (ProductDBManagerDAO)session.getAttribute("productManager");
        
        try {
          productList = productDBManager.listAllProducts();
          if (!productList.isEmpty()) {
              session.setAttribute("products", productList);
              request.getRequestDispatcher("browsing.jsp").include(request, response);
          }
          else {
              session.setAttribute("empty", "Empty List");
              request.getRequestDispatcher("main.jsp").include(request, response);
          }
          } 
        catch (SQLException | NullPointerException ex) {
              System.out.println(ex.getMessage());
        }
        
    }
}
