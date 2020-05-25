package JPA;

import java.util.List;
import javax.persistence.Query;

import DAO.UsuarioDAO;
import Modelo.Usuario;

public class JPAUsuarioDAO extends JPAGenericDAO<Usuario, String> implements UsuarioDAO {

	// private Class<T> persistentClass;

	public JPAUsuarioDAO() {
		super(Usuario.class);

	}
	/*
	 * @Override public List<Persona> getByCedula(String cedula) { Query query =
	 * em.createNamedQuery("getbyCedula"); query.setParameter("usu_cedula", cedula);
	 * 
	 * @SuppressWarnings("unchecked") List<Persona> res3 = query.getResultList();
	 * 
	 * return res3; }
	 */
}