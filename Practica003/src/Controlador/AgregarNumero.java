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
import Modelo.Telefono;
import Modelo.Usuario;


@WebServlet("/AgregarNumero")
public class AgregarNumero extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AgregarNumero() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String numero="";
		String operadora="";
		String tipo="";

		HttpSession sesion = request.getSession();
		
		System.out.print("ID sesion: "+ String.valueOf(sesion.getId()));
		System.out.print("ID sesionRetornada: "+String.valueOf(sesion.getAttribute("accesos")));
		
		//System.out.println("ingresados" +request.getParameter("numero"));
		
		Telefono telefono = new Telefono();
		Usuario user = new Usuario();
		String resp = request.getParameter("agregar");
		
		TelefonoDAO telfDAO = DAOFactory.getFactory().getTelefonoDAO();
		UsuarioDAO usuDAO = DAOFactory.getFactory().getUsuarioDAO();
		
		if(resp.equals("ingresar")) {
			numero = request.getParameter("numero");
			//System.out.println("numero "+numero);
			
			operadora = request.getParameter("operadora");
			tipo = request.getParameter("tipo");
			user = usuDAO.read(request.getParameter("ced"));
			System.out.println("datos recolectados "+numero +", "+operadora+", "+tipo+ user);
			
			
			System.out.println("Cedula: " + request.getParameter("ced"));
			telefono = new Telefono(numero, tipo, operadora, user);
			
			telfDAO.create(telefono);
			
			System.out.println("Agregando");
			
		}
		try {
			
			request.setAttribute("usuario", user);
			request.setAttribute("telefono", telfDAO.buscarCedula(request.getParameter("ced")));
			
			System.out.println("ingresando telefono");
			
			getServletContext().getRequestDispatcher("/JSPs/Usuario.jsp").forward(request, response);
		}catch(Exception e) {
			System.out.println("Error en agregar "+e.getMessage());
		}
		
	}

}
