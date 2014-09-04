package reclame.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

import reclame.entidades.Empresa;
import reclame.entidades.Onibus;
import reclame.entidades.Reclamacao;
import reclame.entidades.Rota;
import reclame.entidades.Usuario;


public class HibernateUtil {

	private static SessionFactory sessionFactory;

	static {
		
		Configuration configuration = new Configuration();
		
		configuration.addAnnotatedClass(Usuario.class);
		configuration.addAnnotatedClass(Empresa.class);
		configuration.addAnnotatedClass(Rota.class);
		configuration.addAnnotatedClass(Onibus.class);
		configuration.addAnnotatedClass(Reclamacao.class);
		
		configuration.configure();
		ServiceRegistryBuilder serviceRegistryBuilder = new ServiceRegistryBuilder()
				.applySettings(configuration.getProperties());
		ServiceRegistry serviceRegistry = serviceRegistryBuilder
				.buildServiceRegistry();
		sessionFactory = configuration.buildSessionFactory(serviceRegistry);
	}

	public static Session getSession() {
		Session session = sessionFactory.openSession();
		return session;
	}

}