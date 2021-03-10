package br.edu.infnet.appsdin.aula01;

import java.util.HashMap;
import java.util.Map;

public class AlunoMapa {

	public static void main(String[] args) {
		Map<Integer, String> mapaAluno = new HashMap<Integer, String>();
		
		//incluir
		mapaAluno.put(1, "Elberth");
		mapaAluno.put(2, "Maria");
		mapaAluno.put(3, "Joao");		
		System.out.println(mapaAluno);
		
		//excluir
		String retorno = mapaAluno.remove(2);
		System.out.println(">>> " + retorno);		
		retorno = mapaAluno.remove(55);
		System.out.println(">>> " + retorno);		
		System.out.println(mapaAluno);
		
		//alterar
		mapaAluno.put(3, "Thiago");		
		System.out.println(mapaAluno);		
	}
}
