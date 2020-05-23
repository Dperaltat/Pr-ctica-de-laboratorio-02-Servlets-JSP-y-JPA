package Modelo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Persona implements Serializable{
	
	private static final long serialVersionUID = 1L;
	@Id
	private int usu_id;
	private String usu_cedula;
	private String usu_nombre;
	private String usu_apellido;
	private String usu_correo;
	private String usu_contrasenia;
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "persona")
	private List<Telefono> telefonos = new ArrayList<Telefono>();
	
	
	public Persona(int usu_id, String usu_cedula, String usu_nombre, String usu_apellido, String usu_correo,
			String usu_contrasenia) {
		this.usu_id = usu_id;
		this.usu_cedula = usu_cedula;
		this.usu_nombre = usu_nombre;
		this.usu_apellido = usu_apellido;
		this.usu_correo = usu_correo;
		this.usu_contrasenia = usu_contrasenia;
	}

	public Persona(){
		
	}

	public int getUsu_id() {
		return usu_id;
	}

	public void setUsu_id(int usu_id) {
		this.usu_id = usu_id;
	}

	public String getUsu_cedula() {
		return usu_cedula;
	}

	public void setUsu_cedula(String usu_cedula) {
		this.usu_cedula = usu_cedula;
	}

	public String getUsu_nombre() {
		return usu_nombre;
	}

	public void setUsu_nombre(String usu_nombre) {
		this.usu_nombre = usu_nombre;
	}

	public String getUsu_apellido() {
		return usu_apellido;
	}

	public void setUsu_apellido(String usu_apellido) {
		this.usu_apellido = usu_apellido;
	}

	public String getUsu_correo() {
		return usu_correo;
	}

	public void setUsu_correo(String usu_correo) {
		this.usu_correo = usu_correo;
	}

	public String getUsu_contrasenia() {
		return usu_contrasenia;
	}

	public void setUsu_contrasenia(String usu_contrasenia) {
		this.usu_contrasenia = usu_contrasenia;
	}

	public List<Telefono> getTelefonos() {
		return telefonos;
	}

	public void setTelefonos(List<Telefono> telefonos) {
		this.telefonos = telefonos;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((telefonos == null) ? 0 : telefonos.hashCode());
		result = prime * result + ((usu_apellido == null) ? 0 : usu_apellido.hashCode());
		result = prime * result + ((usu_cedula == null) ? 0 : usu_cedula.hashCode());
		result = prime * result + ((usu_contrasenia == null) ? 0 : usu_contrasenia.hashCode());
		result = prime * result + ((usu_correo == null) ? 0 : usu_correo.hashCode());
		result = prime * result + usu_id;
		result = prime * result + ((usu_nombre == null) ? 0 : usu_nombre.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Persona other = (Persona) obj;
		if (telefonos == null) {
			if (other.telefonos != null)
				return false;
		} else if (!telefonos.equals(other.telefonos))
			return false;
		if (usu_apellido == null) {
			if (other.usu_apellido != null)
				return false;
		} else if (!usu_apellido.equals(other.usu_apellido))
			return false;
		if (usu_cedula == null) {
			if (other.usu_cedula != null)
				return false;
		} else if (!usu_cedula.equals(other.usu_cedula))
			return false;
		if (usu_contrasenia == null) {
			if (other.usu_contrasenia != null)
				return false;
		} else if (!usu_contrasenia.equals(other.usu_contrasenia))
			return false;
		if (usu_correo == null) {
			if (other.usu_correo != null)
				return false;
		} else if (!usu_correo.equals(other.usu_correo))
			return false;
		if (usu_id != other.usu_id)
			return false;
		if (usu_nombre == null) {
			if (other.usu_nombre != null)
				return false;
		} else if (!usu_nombre.equals(other.usu_nombre))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Persona [usu_id=" + usu_id + ", usu_cedula=" + usu_cedula + ", usu_nombre=" + usu_nombre
				+ ", usu_apellido=" + usu_apellido + ", usu_correo=" + usu_correo + ", usu_contrasenia="
				+ usu_contrasenia + ", telefonos=" + telefonos + "]";
	}

	
}