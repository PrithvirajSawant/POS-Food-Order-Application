package com.jsp.food.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.food.app.dao.ProductDao;
import com.jsp.food.app.dto.Products;
import com.jsp.food.app.dto.User;

@Controller
public class ProductController {

	@Autowired
	ProductDao productDao;

	@RequestMapping("/addProduct")
	public ModelAndView addproduct() {
		ModelAndView mav = new ModelAndView("addproductform");
		Products p = new Products();
		mav.addObject("product", p);
		return mav;
	}

	@RequestMapping("/saveProduct")
	public ModelAndView saveUser(@ModelAttribute("product") Products p) {
		ModelAndView mav = new ModelAndView("adminoptions");
		productDao.saveProduct(p);
		mav.addObject("msg", "Product saved successfully");
		return mav;
	}

	@RequestMapping("/viewAllProducts")
	public ModelAndView viewUsers() {
		ModelAndView mav = new ModelAndView("allproduct");
		List<Products> product = productDao.fetchAllproducts();
		mav.addObject("productList", product);
		return mav;
	}

	@RequestMapping("/update")
	public ModelAndView update(@RequestParam("id") int id) {
		ModelAndView mav = new ModelAndView("updateproduct");
		Products product = productDao.findProductById(id);
		mav.addObject("productinfo", product);
		return mav;
	}

	@RequestMapping("/updateproduct")
	public ModelAndView updateProduct(@ModelAttribute("productinfo") Products p) {
//		ModelAndView mav = new ModelAndView("adminoptions"); //this will redirect to adminoptions 
		ModelAndView mav = new ModelAndView("redirect:/viewAllProducts");
		productDao.updateProduct(p);
		return mav;
	}

	@RequestMapping("/delete")
	public ModelAndView delete(@RequestParam("id") int id) {
		ModelAndView mav = new ModelAndView("redirect:/viewAllProducts");
//		Products product =  productDao.findProductById(id);
		productDao.deleteProductById(id);
		return mav;
	}

	@RequestMapping("/viewAllProduct")
	public ModelAndView viewAllProduct() {
		ModelAndView mav = new ModelAndView("displayallproducts");
		List<Products> product = productDao.fetchAllproducts();
		mav.addObject("productList", product);
		return mav;
	}

	@RequestMapping("/goBackToViewAllProducts")
	public String goBackToViewAllProducts() {
		// Redirect to the viewAllProduct mapping
		return "redirect:/viewAllProducts";
	}
	@RequestMapping("/goBackToViewAllProduct")
	public String goBackToViewAllProduct() {
		// Redirect to the viewAllProduct mapping
		return "redirect:/viewAllProduct";
	}

}
