package com.jsp.food.app.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.food.app.dto.Admin;
import com.jsp.food.app.dto.Products;
import com.jsp.food.app.dto.User;

@Repository
public class AdminDao {
	
	@Autowired
	EntityManagerFactory emf;
	
	public void saveAdmin(Admin admin)
	{
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		
		et.begin();
		em.persist(admin);
		et.commit();
	}
	
	public Admin fetchAdminByEmailAndPassword(String email,String password)
	{
		EntityManager em = emf.createEntityManager();
//		Query query = em.createQuery("select a from Admin a where a.email=?1 and a.password=?2");
		Query query = em.createQuery("select a from Admin a where a.email=?1 and a.password=?2");
		
		query.setParameter(1, email);
		query.setParameter(2, password);
		
		try
		{
			return (Admin)query.getSingleResult();
		}
		catch(NoResultException e)
		{
			return null;
		}
		
	}
	
	public void saveProduct(Products p)
	{
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		
		et.begin();
		em.persist(p);
		et.commit();
	}
//	
//	//View all Users
//	public List<User> fetchAllUsers()
//	{
//		EntityManager em = emf.createEntityManager();
//		Query query = em.createQuery("select u from User u");
//		return query.getResultList();
//	}
}
