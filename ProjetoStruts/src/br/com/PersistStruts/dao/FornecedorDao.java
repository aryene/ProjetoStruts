package br.com.PersistStruts.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.PersistStruts.modelo.Fornecedor;


@Repository
public class FornecedorDao {
	
	
	@PersistenceContext(unitName ="JPA")
	protected EntityManager entityManager;
	
	 @Transactional
	  public void salvar(Fornecedor fornecedor) throws Exception {
		 entityManager.persist(fornecedor);
		
	     
	  }
	 
	 public List<Fornecedor> buscar(){
		return entityManager.createNamedQuery("Fornecedor.findAll", Fornecedor.class).getResultList();
		
		 
	 }
	 public List<Fornecedor> buscar(Fornecedor fornecedor){
			return entityManager.createNamedQuery("Fornecedor.buscaNome", Fornecedor.class).setParameter(1,fornecedor.getNome()+"%").getResultList();
			
			 
		 }
		 
	
	
}
