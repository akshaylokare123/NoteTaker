package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {
	public static SessionFactory factory;

	public static SessionFactory getFactory()
	{
		if (factory == null) {
			factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();

			return factory;
		} 
		else {
			System.out.println("Something went wrong");
			return factory;
		}
	}
	private static void closeFactory() 
	{
		if(factory.isOpen())
		{
			factory.close();
		}

	}

}






