package br.com.PersistStruts.actions;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import com.opensymphony.xwork2.ActionSupport;

import br.com.PersistStruts.modelo.Produto;
import br.com.PersistStruts.servicos.ProdutoServico;


public class ProdutoAction extends ActionSupport {
	
	private static final long serialVersionUID = 1L;

	private Produto produto;
	private List<Produto> listaProduto;
	
	
	@Autowired
	ProdutoServico produtoServico;
	
	public String cadastraProduto(){
		this.addActionMessage(this.produtoServico.salvar(this.getProduto()));
		return SUCCESS;
	}

	public String pesquisarProdutoNome(){
		this.setListaProduto(this.produtoServico.pesquisarProdutoNome(this.getProduto()));
		return SUCCESS;
	}

	public Produto getProduto() {
		return produto;
	}

	public void setProduto(Produto produto) {
		this.produto = produto;
	}

	public List<Produto> getListaProduto() {
		return listaProduto;
	}

	public void setListaProduto(List<Produto> listaProduto) {
		this.listaProduto = listaProduto;
	}

	
	

}
