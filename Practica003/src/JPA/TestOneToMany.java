package JPA;

import DAO.DAOFactory;
import DAO.PersonaDAO;
import Modelo.Persona;
import Modelo.Telefono;

public class TestOneToMany {

	public static void main(String[] args) {
		PersonaDAO perDAO = DAOFactory.getFactory().getPersonaDAO();
		Persona persona = new Persona(2, "0105534615", "Antonio", "Torres", "prueba01@gmail.com", "12345.a");

		Telefono telefonos = new Telefono("0995296638","Celular","Movistar",persona);
		
		persona.addTelefonos(telefonos);
		persona.addTelefonos(new Telefono("2839484","Fijo","Etapa",persona));
		persona.addTelefonos(new Telefono("2838494","Fijo","Epapa",persona));
		perDAO.create(persona);

		// Error: Se debe elimiar el producto de la entidad
		persona.removeTelefonos(telefonos);
		perDAO.update(persona);

		// Se debe eliminar manualmente
		DAOFactory.getFactory().getTelefonoDAO().deleteByID(2);
	}

}
