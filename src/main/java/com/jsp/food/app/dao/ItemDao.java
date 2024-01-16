package com.jsp.food.app.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.food.app.dto.Item;
import com.jsp.food.app.dto.User;

@Repository
public class ItemDao {
	@Autowired
	EntityManagerFactory emf;
	
	public List<Item> fetchPlacedItem()
	{
		EntityManager em = emf.createEntityManager();
		Query query = em.createQuery("SELECT i FROM Item i WHERE i.foodOrder.id = (SELECT MAX(f.id) FROM FoodOrder f)");
		return query.getResultList();
	}
	
//	public Item findItemById(int id)
//	{
//		EntityManager em = emf.createEntityManager();
//		return em.find(Item.class, id);
//	}
//	
//	public void saveitem(Item item)
//	{
//		EntityManager em = emf.createEntityManager();
//		EntityTransaction et = em.getTransaction();
//		
//		et.begin();
//		em.persist(item);
//		et.commit();
//	}

}
