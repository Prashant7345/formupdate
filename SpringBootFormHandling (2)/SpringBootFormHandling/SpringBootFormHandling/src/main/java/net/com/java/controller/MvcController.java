package net.com.java.controller;

import java.util.Arrays;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.code.java.service.UserService;
import net.codejava.entity.User;

@Controller
public class MvcController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/")
	public String home() {
		System.out.println("Going home...");
		return "index";
	}
	
	public void Standard(Model model){

		List<Integer> standardList = Arrays.asList(1,2,3);
		model.addAttribute("standardList", standardList);
	}
	
	@GetMapping("/register")
	public String showForm(Model model) {
		User user = new User();
		model.addAttribute("user", user);
//		
		Standard(model);
	
		return "register_form";
	}
	
	@PostMapping("/register")
	public String submitForm(@Valid @ModelAttribute("user") User user, BindingResult bindingResult, Model model) {
		if (bindingResult.hasErrors()) {  
			Standard(model);
	        return "register_form";
	    } else {
	    	userService.createUser(user);
			model.addAttribute("listUsers", userService.getUsers());
	        return "register_success";
	        
	    }
	}
	
	@GetMapping("/getusers")
	public String getUsers(Model model) {
		model.addAttribute("listUsers", userService.getUsers());
		return "register_success";
	}
	
	
}
