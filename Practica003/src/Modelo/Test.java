package Modelo;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;


public class Test {

	public static void main(String[] args) {
		EntityManager em = Persistence.createEntityManagerFactory("JPA").createEntityManager();
		Usuario u1 = new Usuario("0105534614", "Antonio", "Torres", "test02@gmail.com", "12345.a");
		Telefono t1 = new Telefono("2839484", "Etapa", "Fijo", u1);	
		//Telefono t2 = new Telefono("2839485", "Etapa", "Fijo", u1);	
		
		
		System.out.println("Creando entidades");
		em.getTransaction().begin();
		em.persist(u1);
		em.persist(t1);
		//em.persist(t2);
		em.getTransaction().commit();
		
		//Leer
		System.out.println("Buscando...");
		Usuario e = em.find(Usuario.class, "0105534614");
		Telefono t = em.find(Telefono.class, "0105534614");
		System.out.println("Entidad encontrada: " + e );
		
		//Update
		System.out.println("Actualizando...");
		e.setApellido("Nuevo...");
		e.setNombre("Nuevo2...");
		t.setNumero("0995296639");
		t.setOperadora("Movistar");
		em.getTransaction().begin();
		em.merge(e);
		em.merge(t);
		em.getTransaction().commit();
		
		//Delete
		System.out.println("Eliminadno...");
		em.getTransaction().begin();
		em.remove(u1);
		//em.remove(t2);
		em.getTransaction().commit();
		
		//List
		System.out.println("Listando...");
		String jpql = "SELECT e FROM Usuario e";
		String jpql2 = "SELECT t FROM Telefono t";
		List<Usuario> res = (List<Usuario>) em.createQuery(jpql, Usuario.class).getResultList();
		List<Telefono> res2 = (List<Telefono>) em.createQuery(jpql2, Telefono.class).getResultList();
		System.out.println(res);
		System.out.println(res2);
		
		//Unique
		/*System.out.println("Creando...");
		try{
			em.getTransaction().begin();
			em.persist(new Usuario("0105534620", "Antonio3", "Torres3", "test@gmail.com", "12345.a"));
			//em.persist(new Telefono("2839488", "Etapa", "Fijo", u1));
			em.getTransaction().commit();
			System.out.println("Creado");
		}catch(Exception ex) {
			if(ex.getMessage().contains("1062")) {
				System.out.println("Error al insertar: Correo ya esiste!!");
			}
		}*/
	}

}
