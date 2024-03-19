package DataBase;

import com.microsoft.sqlserver.jdbc.SQLServerDataSource;
import com.microsoft.sqlserver.jdbc.SQLServerException;

import java.sql.*;

public class DataBase {
    //private final String URL = "jdbc:sqlserver://localhost:1433;databaseName=LTNC";
    Connection connection;

    public DataBase() {
    }

    public void Connection() {

        //copy file mssql-jdbc to /WEB-INF/lib to fix fub
        SQLServerDataSource sqlServerDataSource = new SQLServerDataSource();
        sqlServerDataSource.setUser("sa");
        sqlServerDataSource.setPassword("123456789");
        sqlServerDataSource.setServerName("BO-DINH");
        sqlServerDataSource.setPortNumber(1433);
        sqlServerDataSource.setDatabaseName("LTNC");

        try {
            connection = sqlServerDataSource.getConnection();
        } catch (SQLServerException throwables) {
            throwables.printStackTrace();
        }
    }

    public int QueryUpdate(String query) throws SQLException {
        int result = connection.prepareStatement(query).executeUpdate();
        return result;
    }

    public ResultSet QueryGetData(String query) throws SQLException {
        PreparedStatement preparedStatement = connection.prepareStatement(query);
        return preparedStatement.executeQuery();
    }

    public void Close() throws SQLException {
        connection.close();
    }
}
