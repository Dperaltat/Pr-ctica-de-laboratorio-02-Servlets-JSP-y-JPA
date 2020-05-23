package JPA;

import DAO.TelefonoDAO;
import Modelo.Telefono;

public class JPATelefonoDAO extends JPAGenericDAO<Telefono, Integer> implements TelefonoDAO {

    public JPATelefonoDAO() {
	super(Telefono.class);
    }

    @Override
    public Telefono findByUserId(int userId) {
	// TODO Auto-generated method stub
	return null;
    }
}
