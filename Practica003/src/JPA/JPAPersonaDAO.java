package JPA;

import java.util.List;
import javax.persistence.Query;

import DAO.PersonaDAO;
import Modelo.Persona;

public class JPAPersonaDAO extends JPAGenericDAO<Persona, Integer> implements PersonaDAO {

    public JPAPersonaDAO() {
	super(Persona.class);
    }

    @Override
    public List<Persona> getByCedula(String cedula) {
	Query query = em.createNamedQuery("getbyCedula");
	query.setParameter("usu_cedula", cedula);
	@SuppressWarnings("unchecked")
	List<Persona> res3 = query.getResultList();

	return res3;
    }
}