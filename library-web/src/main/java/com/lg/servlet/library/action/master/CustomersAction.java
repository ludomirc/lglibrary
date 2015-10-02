package com.lg.servlet.library.action.master;

import com.lg.library.model.Customer;
import com.lg.library.service.CustomerService;
import com.lg.servlet.library.util.LookupUtil;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

/**
 * Created by Benek on 2015-10-02.
 */
public class CustomersAction extends ActionSupport {

    private int id;

    private List<Customer> customers;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public List<Customer> getCustomers() {
        return customers;
    }

    public void setCustomers(List<Customer> customers) {
        this.customers = customers;
    }

    public String listAllCustomers() {

        try {
            CustomerService service = null;
            service = (CustomerService) LookupUtil.lookupServiceInLocalContext("customerServiceLocal");
            customers = (List<Customer>) service.getAll();
        } catch (Exception e) {
            addActionError(e.getMessage());
            return "failure";
        }

        return "success";
    }
}
