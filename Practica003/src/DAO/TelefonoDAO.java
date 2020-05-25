package DAO;

import java.util.List;

import Modelo.Telefono;

public interface TelefonoDAO extends GenericDAO<Telefono, String> {

	// List<Contacto> buscarCorreo(String correo);
	List<Telefono> buscarCedula(String cedula);

	public List<Telefono> buscarCedInv(String cedula);
	// List<Contacto> obtenerContacto();

}