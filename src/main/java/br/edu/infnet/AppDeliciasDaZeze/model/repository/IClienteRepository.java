package br.edu.infnet.AppDeliciasDaZeze.model.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.edu.infnet.AppDeliciasDaZeze.model.negocio.Cliente;

@Repository
public interface IClienteRepository extends CrudRepository<Cliente, Integer>{

}
