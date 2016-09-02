package br.com.PersistStruts.dao;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.PersistStruts.modelo.Cliente;


@Repository
public class ClienteDao extends GenericDao<Cliente, Integer> {

}
