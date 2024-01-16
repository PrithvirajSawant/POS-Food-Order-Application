package com.jsp.food.app.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.food.app.dao.FoodOrderDao;
import com.jsp.food.app.dao.ItemDao;
import com.jsp.food.app.dao.UserDao;
import com.jsp.food.app.dto.FoodOrder;
import com.jsp.food.app.dto.Item;
import com.jsp.food.app.dto.User;

@Controller
public class FoodOrderController {
	
	@Autowired
	UserDao udao;
	
	@Autowired
	FoodOrderDao orderDao;
	
	@Autowired
	ItemDao idao;
	
	@RequestMapping("/addfoodorder")
	public ModelAndView addFoodOrder() {
		ModelAndView mav = new ModelAndView("addfoodorder");
		FoodOrder foodOrder = new FoodOrder() ;
		mav.addObject("foodorder", foodOrder);
		return mav;
	}
	
	@RequestMapping("/savefoodorder")
	public ModelAndView saveFoodOrder(@ModelAttribute("foodorder") FoodOrder order, HttpSession session) {
		ModelAndView mav = new ModelAndView("redirect:/viewAllProduct");
		session.setAttribute("foodorder", order);
		return mav;
		
	}
	
	@RequestMapping("/savefoodorders")
	public ModelAndView saveFoodOrders(HttpSession session) {
		User user = (User) session.getAttribute("user");
		FoodOrder foodorder = (FoodOrder) session.getAttribute("foodorder");
		List<FoodOrder> orders = user.getFoodOrder();
//		FoodOrder itemOrders = item.getFoodOrder();
		if(orders!=null)
		{
			orders.add(foodorder);
			double sum = 0;
			List<Item> items = foodorder.getItem();
			for(Item i : items)
			{
				sum=sum+i.getCost();
			}
			foodorder.setTotalCost(sum);
			user.setFoodOrder(orders);
//			foodorder.setItem(items);
			foodorder.setUser(user);
//			foodorder.setItem(items);//
			
		}
		else
		{
			List<FoodOrder> orders1 = new ArrayList<FoodOrder>();
			orders1.add(foodorder);
			double sum = 0;
			List<Item> items = foodorder.getItem();
			for(Item i : items)
			{
				sum=sum+i.getCost();
			}
			foodorder.setUser(user);
//			foodorder.setItem(items);//
			user.setFoodOrder(orders1);
			
		}
		
		udao.updateUser(user);
//		idao.saveitem(item);
		
		ModelAndView mav = new ModelAndView("displaybill");
		List<Item> item = idao.fetchPlacedItem();
		mav.addObject("placedItem",item);
		FoodOrder foodOrder = orderDao.fetchPlacedOrder();
		mav.addObject("placedOrder", foodOrder);
		
		return mav;
	}
	
	@RequestMapping("/viewallfoodorder")
	public ModelAndView viewFoodOrder(HttpSession session) {
		User user = (User) session.getAttribute("user");
	    
	    // Retrieve all previous food orders for the user
	    List<FoodOrder> orders = user.getFoodOrder();
	    
		ModelAndView mav = new ModelAndView("viewallfoodorder");
		
		// Add the list of previous food orders to the ModelAndView
	    mav.addObject("previousOrders", orders);
	    
	    return mav;
		
	}

}
