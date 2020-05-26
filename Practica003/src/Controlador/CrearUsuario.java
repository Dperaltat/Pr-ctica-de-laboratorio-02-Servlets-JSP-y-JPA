package Controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DAOFactory;
import DAO.UsuarioDAO;
import Modelo.Usuario;


@WebServlet("/CrearUsuario")
public class CrearUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public CrearUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		String id="";
		String nombre="";
		String apellido="";
		String correo="";
		String pwd = "";
		
		Usuario user = new Usuario();
		
		String resp = request.getParameter("resp");
		UsuarioDAO users = DAOFactory.getFactory().getUsuarioDAO();
		
		if(resp.equals("Registrarse")) {
			nombre = request.getParameter("nombre");
			apellido = request.getParameter("apellido");
			id = request.getParameter("cdi");
			correo = request.getParameter("email");
			pwd = request.getParameter("password");
			
			user = new Usuario(id, nombre, apellido, correo, pwd);
			
			System.out.println("Usuario a ser creado: " +user);
			users.create(user);
		}
		
		getServletContext().getRequestDispatcher("/JSPs/Registrado.jsp").forward(request, response);
	}

}
