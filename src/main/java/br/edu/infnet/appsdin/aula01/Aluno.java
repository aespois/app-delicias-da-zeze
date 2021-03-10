package br.edu.infnet.appsdin.aula01;

public class Aluno {
	
	private int id;
	private String nome;
	private String email;
	
	public Aluno() {
		//
	}
	public Aluno(String nome, String email) {
		this();
		this.nome = nome;
		this.email = email;
	}
	public Aluno(int id, String nome, String email) {
		this(nome, email);
		this.id = id;
	}
	
	@Override
	public String toString() {
		return this.id + " - " + this.nome + " - " + this.email;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}