package br.edu.infnet.appsdin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AppController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String telaInicial() {
		return "home";
	}
	
	@RequestMapping(value = "/cad", method = RequestMethod.GET)
	public String telaCadastro() {
		return "cadastro";
	}
}