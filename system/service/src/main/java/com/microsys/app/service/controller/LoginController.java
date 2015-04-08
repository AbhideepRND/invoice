package com.microsys.app.service.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.microsys.app.model.dto.LoginDto;

@Controller
public class LoginController {

	@RequestMapping("/login")
	public String loginAction(Model model){
		
		final LoginDto login = new LoginDto();
		model.addAttribute("login", login);
		return "login";
	}
	
}
