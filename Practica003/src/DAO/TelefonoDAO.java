package DAO;

import Modelo.Telefono;

public interface TelefonoDAO extends GenericDAO<Telefono, Integer> {
	public Telefono findByUserId(int userId);
}
