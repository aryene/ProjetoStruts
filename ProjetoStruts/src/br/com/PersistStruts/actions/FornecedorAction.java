package br.com.PersistStruts.actions;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import com.opensymphony.xwork2.ActionSupport;
import br.com.PersistStruts.modelo.Cliente;
import br.com.PersistStruts.modelo.Fornecedor;
import br.com.PersistStruts.servicos.ClienteServico;
import br.com.PersistStruts.servicos.FornecedorServico;

public class FornecedorAction extends ActionSupport {
	
	private static final long serialVersionUID = 1L;
	
	private Fornecedor fornecedor;
	
	private List<Fornecedor> listaFornecedor;
		
	@Autowired
	FornecedorServico fornecedorServico;

	public String cadastraFornecedor(){
		System.out.println("e ai doido");
		this.addActionMessage(this.fornecedorServico.salvar(this.getFornecedor()));
		return SUCCESS;
	}

	public String pesquisarFornecedorNome(){
		this.setListaFornecedor(this.fornecedorServico.pesquisarFornecedorNome(this.getFornecedor()));
		return SUCCESS;
	}
	
	

	public List<Fornecedor> getListaFornecedor() {
		return listaFornecedor;
	}

	public void setListaFornecedor(List<Fornecedor> listaFornecedor) {
		this.listaFornecedor = listaFornecedor;
	}

	public FornecedorServico getFornecedorServico() {
		return fornecedorServico;
	}

	public void setFornecedorServico(FornecedorServico fornecedorServico) {
		this.fornecedorServico = fornecedorServico;
	}

	public Fornecedor getFornecedor() {
		return fornecedor;
	}

	public void setFornecedor(Fornecedor fornecedor) {
		this.fornecedor = fornecedor;
	}

}
