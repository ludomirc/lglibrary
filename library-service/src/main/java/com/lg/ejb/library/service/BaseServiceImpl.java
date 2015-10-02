package com.lg.ejb.library.service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;

/**
 * Created by Benek on 2015-10-02.
 */
public abstract class BaseServiceImpl {

    @PersistenceContext(unitName = "lg-library-persistence-unit", type = PersistenceContextType.TRANSACTION)
    protected EntityManager entityManager;

}
