package com.lg.ejb.library.service;

import com.lg.library.model.Customer;
import com.lg.library.service.CustomerService;

import javax.ejb.Local;
import javax.ejb.Stateless;
import java.util.Collection;

/**
 * Created by Benek on 2015-09-29.
 */
@Stateless(name = "customerService", mappedName = "customerService")
@Local(CustomerService.class)
public class CustomerServiceImpl extends  BaseServiceImpl implements CustomerService{

    @Override
    public Customer find(Long id) {
        return entityManager.find(Customer.class, id);
    }

    @Override
    public Collection<Customer> getAll() {
        return entityManager. createQuery("select c from Customer c").getResultList();
    }

    @Override
    public Customer find(Customer customer) {
        return null;
    }

    @Override
    public void add(Customer customer) {
        entityManager.persist(customer);
    }

    @Override
    public void delete(Customer customer) {
        entityManager.remove(entityManager.merge(customer));
    }
}
