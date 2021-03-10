package br.edu.infnet.appsdin.model.testes;

import br.edu.infnet.appsdin.model.negocio.Pessoa;

public class PessoaTeste {

	public static void main(String[] args) {
		
		Pessoa huguinho = new Pessoa();
		huguinho.setId(1);
		huguinho.setNome("hugo");
		huguinho.setEmail("hugo@huguinho.com");
		huguinho.setSalario(1000);
		huguinho.setQtdeMeses(20);
		System.out.println("Pato " + huguinho);
		
		Pessoa zezinho = new Pessoa("jose", "jose@zezinho.com");
		zezinho.setId(2);
		zezinho.setSalario(1500);
		zezinho.setQtdeMeses(15);
		System.out.println("Pato " + zezinho);
		
		Pessoa luizinho = new Pessoa("luis", "luis@luizinho.com", 2000, 10);
		luizinho.setId(3);
		System.out.println("Pato " + luizinho);
	}
}