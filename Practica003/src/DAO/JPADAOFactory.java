package DAO;

import JPA.JPAPersonaDAO;
import JPA.JPATelefonoDAO;

public class JPADAOFactory extends DAOFactory {

    @Override
    public PersonaDAO getPersonaDAO() {
	return new JPAPersonaDAO();
    }

    @Override
    public TelefonoDAO getTelefonoDAO() {
	return new JPATelefonoDAO();
    }

}
