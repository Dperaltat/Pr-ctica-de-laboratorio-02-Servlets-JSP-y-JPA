package Controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.DAOFactory;
import DAO.TelefonoDAO;
import DAO.UsuarioDAO;
import Modelo.Usuario;


@WebServlet( name = "ControladorSesiones", urlPatterns= {"/ControladorSesiones"})
public class ControladorSesiones extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ControladorSesiones() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());

		HttpSession sesion = request.getSession();
		sesion.setAttribute("accesos", sesion.getAttribute("accesos"));
		System.out.println("Id de sesion del controlador "+ sesion.getAttribute("accesos"));
		TelefonoDAO telfDAO = DAOFactory.getFactory().getTelefonoDAO();
		Usuario usuario = new Usuario();
		UsuarioDAO usuarioDao = DAOFactory.getFactory().getUsuarioDAO();
		
		if(Integer.parseInt(request.getParameter("id"))==1) {
			
			usuario = usuarioDao.read(request.getParameter("c"));
			System.out.println("Cedula usar: "+request.getParameter("c"));
			
			request.setAttribute("idc", request.getParameter("c"));
			request.setAttribute("usuarios", usuario);
			
			getServletContext().getRequestDispatcher("/JSPs/Agregar.jsp").forward(request, response);
		}else if(Integer.parseInt(request.getParameter("id"))==2) {

			usuario = usuarioDao.read(request.getParameter("idU"));
			
			
			request.setAttribute("telefono", telfDAO.buscarCedula(usuario.getId()));
			request.setAttribute("usuario", usuario);
			
			getServletContext().getRequestDispatcher("/JSPs/Usuario.jsp").forward(request, response);
		}

		if(Integer.parseInt(request.getParameter("id"))==3) {
			System.out.println("Ingresando...");
			
			//probar para luego obtener todos los contactos con .obtenerContacto();
			request.setAttribute("telefonos", telfDAO.find());
			
			
			getServletContext().getRequestDispatcher("/JSPs/Invitado.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
