package com.jsp.food.app.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.food.app.dto.Products;
import com.jsp.food.app.dto.User;

@Repository
public class UserDao {
	@Autowired
	EntityManagerFactory emf;
	
	public void saveUser(User u)
	{
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		
		et.begin();
		em.persist(u);
		et.commit();
	}
	
	public User fetchUserByEmailAndPassword(String email,String password)
	{
		EntityManager em = emf.createEntityManager();
//		Query query = em.createQuery("select u from User u where u.email=?1 and u.password=?2");
		Query query = em.createQuery("select u from User u where u.email=?1 and u.password=?2");
		
		query.setParameter(1, email);
		query.setParameter(2, password);
		
		try
		{
			return (User) query.getSingleResult();
		}
		catch(NoResultException e)
		{
			return null;
		}
		
	}
	
	//View all Users
	public List<User> fetchAllUsers()
	{
		EntityManager em = emf.createEntityManager();
		Query query = em.createQuery("select u from User u");
		return query.getResultList();
	}
	
	public User findUserById(int id)
	{
		EntityManager em = emf.createEntityManager();
		return em.find(User.class, id);
	}
	
	public void updateUser(User user)
	{
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		
		et.begin();
		em.merge(user);
		et.commit();
	}
	
	public void deleteUserById(int id)
	{
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		User user = em.find(User.class, id);
		et.begin();
		em.remove(user);
		et.commit();
	}

}
