package br.edu.infnet.appsdin.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.appsdin.model.negocio.Pessoa;
import br.edu.infnet.appsdin.model.repository.IPessoaRepository;

@Service
public class PessoaService {
	
	@Autowired
	private IPessoaRepository pessoaRepository;
	
	public void incluir(Pessoa pessoa) {
		pessoaRepository.save(pessoa);
	}
	
	public List<Pessoa> obterLista(){
		return (List<Pessoa>)pessoaRepository.findAll();
	}
	
	public String obterStatus(Pessoa pessoa) {
		
		if(pessoa.calcularSalarioAnual() > 500000) {
			return pessoa.getNome() + ", que pessoa rica";
		} 

		return "Poxa, "+ pessoa.getNome() +"!!! Tá difícil, né?!";
	}
}