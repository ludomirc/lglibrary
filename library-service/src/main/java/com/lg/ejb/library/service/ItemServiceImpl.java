package com.lg.ejb.library.service;

import com.lg.library.model.Item;
import com.lg.library.service.ItemService;

import javax.ejb.Local;
import javax.ejb.Stateless;
import java.util.Collection;

/**
 * Created by Benek on 2015-10-01.
 */
@Stateless(name = "itemService", mappedName = "itemService")
@Local(ItemService.class)
public class ItemServiceImpl extends  BaseServiceImpl implements ItemService {

    @Override
    public Item find(Long id) {
        return entityManager.find(Item.class, id);
    }

    @Override
    public Collection<Item > getAll() {
        return entityManager. createQuery("select i from Item i").getResultList();
    }

    @Override
    public void delete(Item  item) {
        entityManager.remove(entityManager.merge(item));
    }

    @Override
    public void add(Item  item) {
        entityManager.persist(item);
    }

    @Override
    public Item  find(Item  item) {
        return null;
    }
}
