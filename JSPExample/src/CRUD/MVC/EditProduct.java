package CRUD.MVC;

import Model.PhoneDataBaseContext;
import Model.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "EditProduct",urlPatterns = {"/EditProduct"})
public class EditProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PhoneDataBaseContext phoneDataBaseContext = new PhoneDataBaseContext();
        //Edit product
        if(request.getParameter("id") != null){
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            long price = Long.parseLong(request.getParameter("price"));
            String moTa = request.getParameter("description");
            String origin = request.getParameter("country");
            try {
                phoneDataBaseContext.editProductSave(new Product(id, name, price, moTa, origin));
                response.sendRedirect("Home");
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }else {
            //===========

            //Show info product


            Product product = phoneDataBaseContext.getProduct(Integer.parseInt(request.getParameter("idProduct")));
            request.setAttribute("product",product);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("editProduct.jsp");
            requestDispatcher.forward(request,response);


            //=================
        }

    }
}
