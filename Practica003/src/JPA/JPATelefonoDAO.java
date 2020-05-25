package JPA;

import javax.persistence.Persistence;

import DAO.TelefonoDAO;
import Modelo.Telefono;

public class JPATelefonoDAO extends JPAGenericDAO<Telefono, String> implements TelefonoDAO {

	public JPATelefonoDAO() {
		super(Telefono.class);
		this.em = Persistence.createEntityManagerFactory("jpa2").createEntityManager();
	}
	/*
	 * @Override public Telefono findByUserId(int userId) { // TODO Auto-generated
	 * method stub return null; }
	 */
}
