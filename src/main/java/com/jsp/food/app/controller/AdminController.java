package com.jsp.food.app.controller;

import java.util.List;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.food.app.dao.AdminDao;
import com.jsp.food.app.dto.Admin;
//import com.jsp.food.app.dto.Products;
import com.jsp.food.app.dto.User;

@Controller
public class AdminController {
	
	@Autowired
	AdminDao adminDao;
	
	@RequestMapping("/addadmin")
	public ModelAndView m1()
	{
		ModelAndView mav = new ModelAndView("adminloginform");
		Admin a = new Admin();
		a.setEmail("admin");
		a.setPassword("admin");
		
		adminDao.saveAdmin(a);
		
	
		return mav;
		
	}
	
	@RequestMapping("/validate")
	public ModelAndView login(HttpServletRequest request)
	{
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		Admin admin = adminDao.fetchAdminByEmailAndPassword(email,password); 
		
		if(admin!=null)
		{
			ModelAndView mav = new ModelAndView("adminoptions");
			return mav;
		}
		else
		{
			ModelAndView mav = new ModelAndView("adminloginform");
			mav.addObject("msg","invalid credentials");
			return mav;
		}
	}
	
//	@RequestMapping("/addProduct")
//	public ModelAndView addproduct()
//	{
//		ModelAndView mav = new ModelAndView("addproductform");
//		Products p = new Products();
//		mav.addObject("product",p);
//		return mav;
//	}
//	
//	@RequestMapping("/saveProduct")
//	public ModelAndView saveUser(@ModelAttribute("product") Products p)
//	{
//		ModelAndView mav = new ModelAndView("adminoptions");
//		adminDao.saveProduct(p);
//		mav.addObject("message","Product saved successfully");
//		return mav;
//	}
	
//	@RequestMapping("/viewAllUsers")
//	public ModelAndView viewUsers()
//	{
//		ModelAndView mav = new ModelAndView("allusers");
//		List<User> user = adminDao.fetchAllUsers();
//		mav.addObject("userList",user);
//		return mav;
//	}
	
	
	
	
}
