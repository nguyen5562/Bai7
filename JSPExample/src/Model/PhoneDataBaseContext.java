package Model;

import DataBase.DataBase;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class PhoneDataBaseContext {

    private DataBase dataBase;

    public PhoneDataBaseContext() {
        dataBase = new DataBase();
        dataBase.Connection();
    }

    public List<Product> getAllProducts() throws SQLException {
        List<Product> products = new ArrayList<>();
        ResultSet resultSet = dataBase.QueryGetData("select * from Product");
        while (resultSet.next()) {
            products.add(new Product(resultSet.getInt(1), resultSet.getString(2), resultSet.getLong(3), resultSet.getString(4), resultSet.getString(5)));
        }
        return products;
    }

    public Product getProduct(int idProduct) {
        ResultSet resultSet = null;
        try {
            resultSet = dataBase.QueryGetData("select * from Product where IdProduct=" + idProduct + "");
            resultSet.next();
            return new Product(resultSet.getInt(1), resultSet.getString(2), resultSet.getLong(3), resultSet.getString(4), resultSet.getString(5));
        } catch (SQLException throwables) {
            return null;
        }
    }

    public int addNewProduct(Product product) throws SQLException {
        Product prd = getProduct(product.getIdProduct());
        if(prd != null){
            return 0;
        }else {
            dataBase.QueryUpdate("insert into Product values("+product.getIdProduct()+",'"+product.getName()+"',"+product.getPrice()+",'"+product.getDescription()+"','"+product.getMadeOfProduct()+"')");
            return 1;
        }
    }

    public void editProductSave(Product product) throws SQLException {
        dataBase.QueryUpdate("UPDATE dbo.Product SET Name='"+product.getName()+"',Price="+product.getPrice()+",Description='"+product.getDescription()+"',MadeOfProduct='"+product.getMadeOfProduct()+"' WHERE IdProduct="+product.getIdProduct()+"");
    }

    public void deleteProduct(int idProduct) throws SQLException {
        dataBase.QueryUpdate("delete from Product where  idProduct="+idProduct+"");
    }
}
