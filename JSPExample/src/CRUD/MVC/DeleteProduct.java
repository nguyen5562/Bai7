package CRUD.MVC;

import Model.PhoneDataBaseContext;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "DeleteProduct",urlPatterns = {"/DeleteProduct"})
public class DeleteProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PhoneDataBaseContext phoneDataBaseContext = new PhoneDataBaseContext();
        try {
            phoneDataBaseContext.deleteProduct(Integer.parseInt(request.getParameter("idProduct")));
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("Home");
        requestDispatcher.forward(request,response);
    }
}
