package com.jsp.food.app.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.food.app.dao.UserDao;
import com.jsp.food.app.dto.Products;
import com.jsp.food.app.dto.User;

@Controller
public class UserController {
	@Autowired
	UserDao userDao;
	
	@RequestMapping("/adduser")
	public ModelAndView adduser()
	{
		ModelAndView mav = new ModelAndView("adduserform");
		User u = new User();
		mav.addObject("user",u);
		return mav;
	}
	
	@RequestMapping("/saveuser")
	public ModelAndView saveUser(@ModelAttribute("user") User u)
	{
		ModelAndView mav = new ModelAndView("adminoptions");
		userDao.saveUser(u);
		mav.addObject("message","User saved successfully");
		return mav;
	}
	
	@RequestMapping("/userlogin")
	public ModelAndView userLogin(HttpServletRequest request)
	{
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		User user = userDao.fetchUserByEmailAndPassword(email,password); 
		
		if(user!=null)
		{
			ModelAndView mav = new ModelAndView("useroptions");
			HttpSession hs = request.getSession();
			hs.setAttribute("user", user);
			return mav;
		}
		else
		{
			ModelAndView mav = new ModelAndView("loginuser");
			mav.addObject("msg","invalid credentials");
			return mav;
		}
	}
	
	@RequestMapping("/viewAllUsers")
	public ModelAndView viewUsers()
	{
		ModelAndView mav = new ModelAndView("allusers");
		List<User> user = userDao.fetchAllUsers();
		mav.addObject("userList",user);
		return mav;
	}
	
	@RequestMapping("/userupdate")
	public ModelAndView update(@RequestParam("id") int id)
	{
		ModelAndView mav = new ModelAndView("updateuser");
		User user =  userDao.findUserById(id);
		mav.addObject("userinfo",user);
		return mav;
	}
	
	@RequestMapping("/updateuser")
	public ModelAndView updateUser(@ModelAttribute("userinfo") User u)
	{
		ModelAndView mav = new ModelAndView("redirect:/viewAllUsers");
		userDao.updateUser(u);
		return mav;
	}
	
	@RequestMapping("/userdelete")
	public ModelAndView delete(@RequestParam("id") int id)
	{
		ModelAndView mav = new ModelAndView("redirect:/viewAllUsers");
//		Products product =  productDao.findProductById(id);
		userDao.deleteUserById(id);
		return mav;
	}
	
	@RequestMapping("/viewUserProfile")
	public ModelAndView viewUserProfile(HttpServletRequest request) {
	    ModelAndView mav = new ModelAndView("viewuserprofile");
	    HttpSession session = request.getSession();
	    User user = (User) session.getAttribute("user");

	    if (user != null) {
	        mav.addObject("user", user);
	        return mav;
	    } else {
//	        mav = new ModelAndView("redirect:/loginuser.jsp");
	        mav.addObject("msg", "User not found");
	        return mav;
	    }
	}
	
	@RequestMapping("goBackToViewAllUsers")
	public String goBackToViewAllUsers() {
		return "redirect:/viewAllUsers";
	}



}
