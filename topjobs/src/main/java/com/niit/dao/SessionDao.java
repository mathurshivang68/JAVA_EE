package com.niit.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class SessionDao {

public Session getSession() {
		
		try{
			Configuration configuration = new Configuration().configure();
		
		StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties());
		SessionFactory factory = configuration.buildSessionFactory(builder.build());
		Session session = factory.openSession();
		return session;
		}
		catch(Exception e) {
			System.out.println("Error::"+e);
			return null;
		}
}
		
		
}