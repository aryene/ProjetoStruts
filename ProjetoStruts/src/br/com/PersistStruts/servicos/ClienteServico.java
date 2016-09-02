package br.com.PersistStruts.servicos;

import java.util.List;

import javax.inject.Inject;
import javax.inject.Named;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.PersistStruts.dao.ClienteDao;
import br.com.PersistStruts.modelo.Cliente;

@Service
public class ClienteServico  {

	@Autowired
	ClienteDao clienteDao; 
	
	
	
	public String salvar(Cliente cliente){
		String msg ="Cadastro Efetuado";
		try {
			clienteDao.save(cliente);
		} catch (Exception e) {
			e.printStackTrace();
			msg = e.getMessage();
		}

		return msg;

	}

	public List<Cliente> pesquisarCliente(){
		return clienteDao.findAll();

	}
	public Cliente pesquisarClienteId(Cliente cliente){
		return clienteDao.findById(cliente.getId());

	}
	
	public List<Cliente> pesquisarClienteNome(Cliente cliente){
		return clienteDao.findByNamedQuery("Cliente.buscaNome",cliente.getNome());

	}





}
