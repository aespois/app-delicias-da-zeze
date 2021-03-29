package br.edu.infnet.AppDeliciasDaZeze.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AcessoController {
	
	@GetMapping(value = "/")
	public String init() {		
		return "login";
	}
	
	@GetMapping(value = "/home")
	public String home() {		
		return "index";
	}
}
