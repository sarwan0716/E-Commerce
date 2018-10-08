package com.niit.controllers;




import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.dao.CartItemDao;
import com.niit.dao.ProductDao;
import com.niit.model.CartItem;




@Controller
public class HomeController {
	
	@Autowired
	private ProductDao productDao;
	@Autowired
	private CartItemDao cartItemDao;
	
	
	
	
public HomeController(){
		
		System.out.println("HomeController  bean is created ");
	}


@RequestMapping(value="/home")   //  /home - KEY in Handler Map
public String homePage(HttpSession session,@AuthenticationPrincipal Principal principal){  //  getHomePage() is the Value in Handler map
	
session.setAttribute("categories",productDao.getAllCategories());
if (principal == null)
	return "login";
String email=principal.getName();
List<CartItem> cartItems=cartItemDao.getCart(email);
session.setAttribute("cartSize",cartItems.size());
	return "homepage";   //logical view name
}
	

@RequestMapping(value="/aboutus")
public String aboutUs(){
	return "aboutuspage";
}
@RequestMapping(value="/login") 
public String login()
{
	return "login";
}

@RequestMapping(value="/loginerror") 
public String loginFailed(Model model)
{
	model.addAttribute("error","invalid credentials........");
	return "login";
}

@RequestMapping(value="/logout") 
public String logout(Model model){
	model.addAttribute("msg","Loggedout successfully.....");
	
	return "login";
}


}
