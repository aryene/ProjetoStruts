package br.com.PersistStruts.dao;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.PersistStruts.modelo.Produto;



@Repository
public class ProdutoDao {
	
	
	@PersistenceContext(unitName ="JPA")
	protected EntityManager entityManager;
	
	 @Transactional
	  public void salvar(Produto produto) throws Exception {
		 entityManager.merge(produto);
		
	     
	  }
	 
	 public List<Produto> buscar(){
		return entityManager.createNamedQuery("Produto.findAll", Produto.class).getResultList();
		
		 
	 }
	 public List<Produto> buscar(Produto produto){
			return entityManager.createNamedQuery("Produto.buscaNome", Produto.class).setParameter(1,produto.getDescricao()+"%").getResultList();
			
			 
		 }
	
}
