package com.jsp.food.app.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.food.app.dto.FoodOrder;

@Repository
public class FoodOrderDao {
	
	@Autowired
	EntityManagerFactory emf;
	
	public FoodOrder fetchPlacedOrder() {
	    EntityManager em = emf.createEntityManager();
	    TypedQuery<FoodOrder> query = em.createQuery("SELECT e FROM FoodOrder e WHERE e.id = (SELECT MAX(e2.id) FROM FoodOrder e2)", FoodOrder.class);
	    FoodOrder placedOrder = query.getSingleResult();
	    return placedOrder;
	}
	
	public FoodOrder findOrderById(int id)
	{
		EntityManager em = emf.createEntityManager();
		return em.find(FoodOrder.class, id);
	}

}
