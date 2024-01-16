package com.jsp.food.app.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.food.app.dao.ItemDao;
import com.jsp.food.app.dao.ProductDao;
import com.jsp.food.app.dto.FoodOrder;
import com.jsp.food.app.dto.Item;
import com.jsp.food.app.dto.Products;
import com.jsp.food.app.dto.User;

@Controller
public class ItemController {
	
	@Autowired
	ItemDao idao;
	
	@Autowired
	ProductDao pdao;
	
	@RequestMapping("/additem")
	public ModelAndView addItem(@RequestParam("id") int id) {
		ModelAndView mav = new ModelAndView("additem");
		Products product  = pdao.findProductById(id);
		Item item = new Item();
		item.setName(product.getName());
		item.setCost(product.getCost());
		
		mav.addObject("item",item);
		
		return mav;
		
	}
	
	@RequestMapping("/saveitem")
	public ModelAndView saveItem(@ModelAttribute("item") Item item, HttpSession session) {
		item.setCost(item.getQuantity()*item.getCost());
		FoodOrder order = (FoodOrder)session.getAttribute("foodorder");
		List<Item>items = order.getItem();
		if(items!=null)
		{
			items.add(item);
			order.setItem(items);
			item.setFoodOrder(order);
		}
		else
		{
			List<Item>items1 = new ArrayList<Item>();
			items1.add(item);
			order.setItem(items1);
			item.setFoodOrder(order);
		}
		ModelAndView mav = new ModelAndView("redirect:/viewAllProduct");
		return mav;
	}
	
//	@RequestMapping("/itemupdate")
//	public ModelAndView update(@RequestParam("id") int id)
//	{
//		ModelAndView mav = new ModelAndView("updateitem");
//		Item item =  idao.findItemById(id);
//		mav.addObject("iteminfo",item);
//		return mav;
//	}
//	
//	@RequestMapping("/additems")
//	public ModelAndView additems()
//	{
//		ModelAndView mav = new ModelAndView("additemform");
//		Item i = new Item();
//		mav.addObject("item",i);
//		return mav;
//	}
//	
//	@RequestMapping("/saveitems")
//	public ModelAndView saveitems(@ModelAttribute("item") Item i)
//	{
//		ModelAndView mav = new ModelAndView("adminoptions");
//		idao.saveitem(i);
//		mav.addObject("message","Item saved successfully");
//		return mav;
//	}

}
