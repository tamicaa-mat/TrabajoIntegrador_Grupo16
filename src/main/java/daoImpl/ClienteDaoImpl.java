package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.time.LocalDate;

import com.mysql.cj.xdevapi.Statement;

import dao.ClienteDao;
import dominio.Cliente;


public class ClienteDaoImpl implements ClienteDao{

	private static final String readall = "SELECT * FROM cliente";
	
	public Cliente getCliente(ResultSet resultSet) throws SQLException {
	    int idCliente = resultSet.getInt("IdCliente");
	    String dni = resultSet.getString("Dni");
	    String cuil = resultSet.getString("Cuil");
	    String nombre = resultSet.getString("Nombre");
	    String apellido = resultSet.getString("Apellido");
	    String sexo = resultSet.getString("Sexo");
	    String nacionalidad = resultSet.getString("Nacionalidad");
	    LocalDate fechaNacimiento = resultSet.getDate("FechaNacimiento").toLocalDate();
	    String direccion = resultSet.getString("Direccion");
	    String correoElectronico = resultSet.getString("CorreoElectronico");
	    String telefono = resultSet.getString("Telefono");
	    int idLocalidad = resultSet.getInt("IdLocalidad");
	    int idUsuario = resultSet.getInt("IdUsuario");
	    boolean estado = resultSet.getBoolean("Estado");

	    Localidad localidad = new Localidad(idLocalidad);
	    Usuario usuario = new Usuario(idUsuario);

	    return new Cliente(
	        idCliente, dni, cuil, nombre, apellido, sexo, nacionalidad,
	        fechaNacimiento, direccion, localidad, correoElectronico,
	        telefono, usuario, estado
	    );
	}


	
	public List<Cliente> readAll() {
	    PreparedStatement statement = null;
	    ResultSet resultSet = null;
	    ArrayList<Cliente> clientes = new ArrayList<>();
	    Conexion conexion = Conexion.getConexion();
	    
	    try {
	        Connection conn = conexion.getSQLConexion();
	        if (conn == null) {
	            throw new SQLException("No se pudo obtener la conexión a la base de datos.");
	        }

	        statement = conn.prepareStatement(readall);
	        resultSet = statement.executeQuery();

	        while(resultSet.next()) {
	            clientes.add(getCliente(resultSet));
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (resultSet != null) resultSet.close();
	            if (statement != null) statement.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	    return clientes;
	}


}

	

