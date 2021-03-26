package br.edu.infnet.AppDeliciasDaZeze.model.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import br.edu.infnet.AppDeliciasDaZeze.model.negocio.Cliente;
import br.edu.infnet.AppDeliciasDaZeze.model.repository.IClienteRepository;

@Service
public class ClienteService {
	
	@Autowired
	private IClienteRepository clienteRepository;
	
	public void incluir(Cliente cliente) {				
		clienteRepository.save(cliente);
	}
	
	public List<Cliente> obterLista() {
		return (List<Cliente>)clienteRepository.findAll();
	}

	public void excluir(Integer id) {
		clienteRepository.deleteById(id);		
	}
	

}
