package br.com.PersistStruts.servicos;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.PersistStruts.dao.ProdutoDao;
import br.com.PersistStruts.modelo.Produto;


@Service
public class ProdutoServico  {

	@Autowired
	ProdutoDao produtoDao;
	
	public String salvar(Produto produto){
		String msg ="Cadastro Efetuado com Sucesso!";
		try {
			produtoDao.salvar(produto);
		} catch (Exception e) {
			e.printStackTrace();
			msg = e.getMessage();
		}

		return msg;

	}

	public List<Produto> pesquisarProduto(){
		return produtoDao.buscar();

	}
	
	public List<Produto> pesquisarProdutoNome(Produto produto){
		return produtoDao.buscar(produto);

	}





}
