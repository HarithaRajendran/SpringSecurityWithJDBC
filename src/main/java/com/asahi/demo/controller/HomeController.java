package com.asahi.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	@GetMapping("/")
	public String showHomePage() {
		System.out.println("hhhhhhhhhhhhhhhhh");
		return "Home";
	}
	
	@GetMapping("/leader")
	public String showForLeader() {
		return "leader";
	}
	
	@GetMapping("/system")
	public String showForAdmin() {
		return "system";
	}
	
	@GetMapping("/access-denied")
	public String accessdeniedPage() {
		
		return "access-denied";
	}
}
