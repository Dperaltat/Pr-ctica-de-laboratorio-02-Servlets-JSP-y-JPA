package DAO;

import java.util.List;

import Modelo.Persona;

public interface PersonaDAO extends GenericDAO<Persona, Integer> {
	public List<Persona> getByCedula(String cedula);
}
