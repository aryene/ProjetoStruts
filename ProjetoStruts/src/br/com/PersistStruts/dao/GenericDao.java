package br.com.PersistStruts.dao;

import java.io.Serializable; 
import java.util.List; 
import javax.persistence.EntityManager; 
import javax.persistence.PersistenceContext; 
import javax.persistence.TypedQuery; 
import javax.persistence.criteria.CriteriaBuilder; 
import javax.persistence.criteria.CriteriaQuery; 
import java.lang.reflect.ParameterizedType; 
 

 
import org.springframework.transaction.annotation.Transactional; 
 
 
 
public abstract class GenericDao<T, ID extends Serializable> { 
 
      private final Class<T> classe; 
 
      @PersistenceContext(unitName = "JPA") 
      EntityManager entityManager; 
       
      @SuppressWarnings("unchecked") 
      public GenericDao() { 
          this.classe = (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];   
      } 
 
      public GenericDao(final Class<T> classe) { 
        this.classe = classe; 
      } 
       
       
      @Transactional 
      public T save(T entidade) { 
        return this.entityManager.merge(entidade); 
      } 
       
 
      @Transactional 
      public void delete(T entity) { 
        this.entityManager.remove(this.entityManager.contains(entity) ? entity : this.entityManager.merge(entity)); 
      } 
       
      public List<T> findAll() { 
          final CriteriaBuilder cb = this.entityManager.getCriteriaBuilder(); 
            final CriteriaQuery<T> query = cb.createQuery(this.classe); 
            query.from(this.classe); 
            return this.entityManager.createQuery(query).getResultList(); 
      } 
 
      public T findById(final ID id) { 
        return this.entityManager.find(this.classe, id); 
      } 
 
      public List<T> findByNamedQuery(final String namedQuery, Object... params) { 
        final TypedQuery<T> query = this.entityManager.createNamedQuery(namedQuery, this.classe); 
        for (int i = 0; i < params.length; i++) { 
          query.setParameter(i + 1, params[i]); 
        } 
        final List<T> resultado = query.getResultList(); 
        return resultado; 
      } 
 
   
}
