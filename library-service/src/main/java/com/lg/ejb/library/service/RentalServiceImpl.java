package com.lg.ejb.library.service;

import com.lg.library.model.Rental;
import com.lg.library.service.RentalService;

import javax.ejb.Local;
import javax.ejb.Stateless;
import java.util.Collection;

/**
 * Created by Benek on 2015-10-02.
 */
@Stateless(name = "rentalService", mappedName = "rentalService")
@Local(RentalService.class)
public class RentalServiceImpl extends  BaseServiceImpl implements RentalService {

    @Override
    public Rental find(Long id) {
        return entityManager.find(Rental.class, id);
    }

    @Override
    public Collection<Rental> getAll() {
        return entityManager.createQuery("select r from Rental r").getResultList();
    }

    @Override
    public void delete(Rental rental) {
        entityManager.remove(entityManager.merge(rental));
    }

    @Override
    public void add(Rental rental) {
        entityManager.persist(rental);
    }

    @Override
    public Rental find(Rental rental) {
        return null;
    }
}
