package br.edu.infnet.AppDeliciasDaZeze.model.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import br.edu.infnet.AppDeliciasDaZeze.model.negocio.Pedido;
import br.edu.infnet.AppDeliciasDaZeze.model.negocio.Usuario;
import br.edu.infnet.AppDeliciasDaZeze.model.repository.IPedidoRepository;

@Service
public class PedidoService {
	
	@Autowired
	private IPedidoRepository pedidoRepository;
	
	public List<Pedido> obterLista() {
		return (List<Pedido>)pedidoRepository.findAll();
	}
		
	public List<Pedido> obterLista(Usuario usuario) {
		return (List<Pedido>)pedidoRepository.obterLista(usuario.getId(), Sort.by(Sort.Direction.ASC, "nomeProduto"));
	}	
	
	public void incluir(Pedido pedido) {				
		pedidoRepository.save(pedido);
	}

	public void excluir(Integer id) {
		pedidoRepository.deleteById(id);		
	}
}