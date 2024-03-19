package CRUD.MVC;

import Model.PhoneDataBaseContext;
import Model.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "Home",urlPatterns = {"/Home"})
public class Home extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PhoneDataBaseContext phoneDataBaseContext = new PhoneDataBaseContext();
        //add product
        if(request.getParameter("id") != null){
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            long price = Long.parseLong(request.getParameter("price"));
            String moTa = request.getParameter("description");
            String origin = request.getParameter("country");
            try {
                phoneDataBaseContext.addNewProduct(new Product(id,name,price,moTa,origin));
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        //===========


        //get all product
        List<Product> products = new ArrayList<>();
        try {
            products = phoneDataBaseContext.getAllProducts();
            request.setAttribute("listProduct",products);


            RequestDispatcher requestDispatcher = request.getRequestDispatcher("Home.jsp");
            requestDispatcher.forward(request,response);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
