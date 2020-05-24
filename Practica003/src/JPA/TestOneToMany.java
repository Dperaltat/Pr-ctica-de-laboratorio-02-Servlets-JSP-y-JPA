package JPA;

import DAO.DAOFactory;
import DAO.PersonaDAO;
import Modelo.Persona;
import Modelo.Telefono;

public class TestOneToMany {

	public static void main(String[] args) {
		PersonaDAO perDAO = DAOFactory.getFactory().getPersonaDAO();
		Persona persona = new Persona(1, "0105534614", "Daniel", "Peralta", "prueba01@gmail.com", "12345.a");

		Telefono telefonos = new Telefono("0995296639","Celular","Movistar",persona);
		
	}

}
