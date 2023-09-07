import java.sql.*;
import java.util.Scanner;

public class Lacteos {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {

        Scanner scanner = new Scanner(System.in);
        System.out.println("***SISTEMA DE COMPRAS***");
        System.out.println("Productos disponibles para eliminar: ");
        Select();

        System.out.println("Ingrese codigo de producto que desea eliminar: ");
        String codigo = scanner.nextLine();
        Eliminar(codigo);

    }

    public static void Select() throws ClassNotFoundException, SQLException {
        String driver2 = "com.mysql.cj.jdbc.Driver";
        String url2 = "jdbc:mysql://localhost:3306/productoslacteos";
        String username2 = "root";
        String pass2 = "";

        Class.forName(driver2);
        Connection connection2 = DriverManager.getConnection(url2, username2, pass2);

        Statement statement2 = connection2.createStatement();

        ResultSet resultSet2 = statement2.executeQuery("SELECT * FROM lacteos");

        while (resultSet2.next()) {
            String codigo = resultSet2.getString("codigo");
            String nombre = resultSet2.getString("nombre");
            int cantidad = resultSet2.getInt("cantidad_disponible");

            System.out.println("este es el codigo " + codigo + " nombre " + nombre + " cantidad disponible: " + cantidad);
        }
    }

    public static void Eliminar(String codigo) throws ClassNotFoundException, SQLException {
        String driver2 = "com.mysql.cj.jdbc.Driver";
        String url2 = "jdbc:mysql://localhost:3306/productoslacteos";
        String username2 = "root";
        String pass2 = "";

        Class.forName(driver2);
        Connection connection2 = DriverManager.getConnection(url2, username2, pass2);

        String sentenciaSQL = "DELETE FROM lacteos WHERE codigo = ?";
        PreparedStatement prepareStatement = connection2.prepareStatement(sentenciaSQL);
        prepareStatement.setString(1, codigo);

        int filasActualizadas = prepareStatement.executeUpdate();
        if (filasActualizadas > 0) {
            System.out.println("Producto eliminado exitosamente");
        } else {
            System.out.println("No se encontró un producto con el codigo ingresado");
        }

    }
}
