package com.lg.servlet.library.action.rental;

import com.lg.library.model.Rental;
import com.lg.library.service.RentalService;
import com.lg.servlet.library.util.LookupUtil;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

/**
 * Created by Benek on 2015-10-02.
 */
public class RentalStatusBoardAction extends ActionSupport {

    private int id;

    private List<Rental> rentals;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public List<Rental> getRentals() {
        return rentals;
    }

    public void setRentals(List<Rental> rentals) {
        this.rentals = rentals;
    }

    @Override
    public String execute() throws Exception {
        try {
            RentalService service = null;
            service = (RentalService) LookupUtil.lookupServiceInLocalContext("rentalServiceLocal");
            rentals = (List<Rental>) service.getAll();
        } catch (Exception e) {
            addActionError(e.getMessage());
            return "failure";
        }

        return "success";

    }
}
