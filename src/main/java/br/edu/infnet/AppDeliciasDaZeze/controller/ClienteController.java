package br.edu.infnet.AppDeliciasDaZeze.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import br.edu.infnet.AppDeliciasDaZeze.model.negocio.Cliente;
import br.edu.infnet.AppDeliciasDaZeze.model.service.ClienteService;

@Controller
public class ClienteController {

	@Autowired
	private ClienteService clienteService;
	
	@GetMapping(value = "/cliente")
	public String cadastrar(Model model) {
		
		model.addAttribute("clientes", clienteService.obterLista());
		
		return "cliente/detalhe";
	}
	
	@PostMapping(value = "/cliente/incluir")
	public String incluir(Cliente cliente) {
		
		clienteService.incluir(cliente);
		return "redirect:/cliente";
	}
	
	
	
	@GetMapping(value = "/cliente/{id}/excluir")
	public String excluir(Model model, @PathVariable Integer id) {
			
		try {
			clienteService.excluir(id);
			
		} catch (Exception e) {
			model.addAttribute("mensagem", "Impossível excluir o cliente " + e.getMessage());
			return cadastrar(model);
		}
				
		return "redirect:/cliente";
	}
}
