package br.com.PersistStruts.actions;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import com.opensymphony.xwork2.ActionSupport;
import br.com.PersistStruts.modelo.Cliente;
import br.com.PersistStruts.servicos.ClienteServico;

public class ClienteAction extends ActionSupport {
	
	private static final long serialVersionUID = 1L;
	
	private Cliente cliente;
	
	private List<Cliente> listaCliente;
	
	@Autowired
	ClienteServico clienteServico;

	public String cadastraCliente(){
		this.addActionMessage(this.clienteServico.salvar(this.getCliente()));
		return SUCCESS;
	}

	public String pesquisarClienteNome(){
		this.setListaCliente(this.clienteServico.pesquisarClienteNome(this.getCliente()));
		return SUCCESS;
	}

	
	public List<Cliente> getListaCliente() {
		return listaCliente;
	}

	public void setListaCliente(List<Cliente> listaCliente) {
		this.listaCliente = listaCliente;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

}
