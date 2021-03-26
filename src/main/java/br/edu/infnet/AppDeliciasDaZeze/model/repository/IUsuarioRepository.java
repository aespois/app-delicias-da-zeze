package br.edu.infnet.AppDeliciasDaZeze.model.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.edu.infnet.AppDeliciasDaZeze.model.negocio.Usuario;

@Repository
public interface IUsuarioRepository extends CrudRepository<Usuario, Integer>{
	
	@Query("from Usuario u where u.email=:email and u.senha=:senha")
	Usuario autenticacao(String email, String senha);

}
