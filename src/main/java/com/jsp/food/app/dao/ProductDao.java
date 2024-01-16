package com.jsp.food.app.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.food.app.dto.Products;
import com.jsp.food.app.dto.User;

@Repository
public class ProductDao {
	
	@Autowired
	EntityManagerFactory emf;
	
	public void saveProduct(Products p)
	{
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		
		et.begin();
		em.persist(p);
		et.commit();
	}
	
	//View all Users
	public List<Products> fetchAllproducts()
	{
		EntityManager em = emf.createEntityManager();
		Query query = em.createQuery("select p from Products p");

		return query.getResultList();
	}
	
	public Products findProductById(int id)
	{
		EntityManager em = emf.createEntityManager();
		return em.find(Products.class, id);
	}
	
	public void updateProduct(Products product)
	{
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		
		et.begin();
		em.merge(product);
		et.commit();
	}
	
	public void deleteProductById(int id)
	{
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		Products product = em.find(Products.class, id);
		et.begin();
		em.remove(product);
		et.commit();
	}
		

}
