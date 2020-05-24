package Modelo;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Telefono implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	private int tel_id;
	private String tel_numero;
	private String tel_tipo;
	private String tel_operadora;
	@ManyToOne
	@JoinColumn
	private Persona persona;
	
	public Telefono() {
		
	}
	
	public Telefono(String tel_numero, String tel_tipo, String tel_operadora, Persona persona) {
		this.tel_numero = tel_numero;
		this.tel_tipo = tel_tipo;
		this.tel_operadora = tel_operadora;
		this.persona = persona;
	}

	public int getTel_id() {
		return tel_id;
	}

	public void setTel_id(int tel_id) {
		this.tel_id = tel_id;
	}

	public String getTel_numero() {
		return tel_numero;
	}

	public void setTel_numero(String tel_numero) {
		this.tel_numero = tel_numero;
	}

	public String getTel_tipo() {
		return tel_tipo;
	}

	public void setTel_tipo(String tel_tipo) {
		this.tel_tipo = tel_tipo;
	}

	public String getTel_operadora() {
		return tel_operadora;
	}

	public void setTel_operadora(String tel_operadora) {
		this.tel_operadora = tel_operadora;
	}

	public Persona getPersona() {
		return persona;
	}

	public void setPersona(Persona persona) {
		this.persona = persona;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((persona == null) ? 0 : persona.hashCode());
		result = prime * result + tel_id;
		result = prime * result + ((tel_numero == null) ? 0 : tel_numero.hashCode());
		result = prime * result + ((tel_operadora == null) ? 0 : tel_operadora.hashCode());
		result = prime * result + ((tel_tipo == null) ? 0 : tel_tipo.hashCode());
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
		Telefono other = (Telefono) obj;
		if (persona == null) {
			if (other.persona != null)
				return false;
		} else if (!persona.equals(other.persona))
			return false;
		if (tel_id != other.tel_id)
			return false;
		if (tel_numero == null) {
			if (other.tel_numero != null)
				return false;
		} else if (!tel_numero.equals(other.tel_numero))
			return false;
		if (tel_operadora == null) {
			if (other.tel_operadora != null)
				return false;
		} else if (!tel_operadora.equals(other.tel_operadora))
			return false;
		if (tel_tipo == null) {
			if (other.tel_tipo != null)
				return false;
		} else if (!tel_tipo.equals(other.tel_tipo))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Telefono [tel_id=" + tel_id + ", tel_numero=" + tel_numero + ", tel_tipo=" + tel_tipo
				+ ", tel_operadora=" + tel_operadora + ", persona=" + persona + "]";
	}


}