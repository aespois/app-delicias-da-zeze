package br.edu.infnet.AppDeliciasDaZeze.model.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;
import br.edu.infnet.AppDeliciasDaZeze.model.negocio.Usuario;
import br.edu.infnet.AppDeliciasDaZeze.model.repository.IUsuarioRepository;

@Service
public class UsuarioService {
	
	@Autowired
	private IUsuarioRepository usuarioRepository;
	
	public Usuario autenticacao(String email, String senha) {
		return usuarioRepository.autenticacao(email, senha);
	}
	
	public void incluir(Usuario usuario) {				
		usuarioRepository.save(usuario);
	}
	
	public List<Usuario> obterLista() {
		return (List<Usuario>)usuarioRepository.findAll();
	}
	
	public List<Usuario> obterLista(String nome) {
		return (List<Usuario>)usuarioRepository.obterLista(nome, Sort.by(Direction.ASC, "nome"));
	}

	public void excluir(Integer id) {
		usuarioRepository.deleteById(id);		
	}
	

}
