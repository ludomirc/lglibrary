package com.lg.servlet.library.action.master;

import com.lg.library.model.Item;
import com.lg.library.service.ItemService;
import com.lg.servlet.library.util.LookupUtil;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

/**
 * Created by Benek on 2015-10-01.
 */
public class ItemsAction extends ActionSupport {

    private int id;

    private List<Item> items;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }

    public String listAllItems() {

        try {
            ItemService service = null;
            service = (ItemService) LookupUtil.lookupServiceInLocalContext("itemServiceLocal");
            items = (List<Item>) service.getAll();
        } catch (Exception e) {
            addActionError(e.getMessage());
            return "failure";
        }

        return "success";
    }
}
