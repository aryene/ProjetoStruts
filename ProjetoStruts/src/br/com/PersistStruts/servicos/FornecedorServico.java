package br.com.PersistStruts.servicos;

import java.util.List;

import javax.inject.Inject;
import javax.inject.Named;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.PersistStruts.dao.FornecedorDao;
import br.com.PersistStruts.modelo.Cliente;
import br.com.PersistStruts.modelo.Fornecedor;

@Service
public class FornecedorServico  {

	@Autowired
	FornecedorDao fornecedorDao; 
	
	
	
	public String salvar(Fornecedor fornecedor){
		String msg ="Cadastro Efetuado!";
		try {
			fornecedorDao.salvar(fornecedor);
		} catch (Exception e) {
			e.printStackTrace();
			msg = e.getMessage();
		}

		return msg;

	}

	public List<Fornecedor> pesquisarFornecedor(){
		return fornecedorDao.buscar();

	}
	
	public List<Fornecedor> pesquisarFornecedorNome(Fornecedor fornecedor){
		return fornecedorDao.buscar(fornecedor);

	}





}
