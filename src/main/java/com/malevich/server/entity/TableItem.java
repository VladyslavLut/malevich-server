package com.malevich.server.entity;

import com.fasterxml.jackson.annotation.JsonView;
import com.malevich.server.view.Views;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = TableItem.TABLE_NAME)
public class TableItem implements Serializable {

    public static final String TABLE_NAME = "tables";

    public static final String ID_COLUMN = "id";
    public static final String OPENED_COLUMN = "opened";

    @JsonView(Views.Public.class)
    @Id
    @Column(name = ID_COLUMN)
    private Integer id;

    @JsonView(Views.Public.class)
    @NotNull
    @Column(name = OPENED_COLUMN)
    private Boolean opened;

    @JsonView(Views.Internal.class)
    @OneToMany(mappedBy = "tableItem", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private List<Order> orders;

    @JsonView(Views.Internal.class)
    @OneToMany(mappedBy = "tableItem", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private List<Reservation> reservations;

    public TableItem() {
    }

    public TableItem(Integer id) {
        this(id, false);
    }

    public TableItem(Integer id, Boolean opened) {
        this.id = id;
        this.opened = opened;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public boolean isOpened() {
        return opened;
    }

    public void setOpened(boolean opened) {
        this.opened = opened;
    }

    public List<Order> getOrders() {
        return orders;
    }

    public void setOrders(List<Order> orders) {
        this.orders = orders;
    }

    public List<Reservation> getReservations() {
        return reservations;
    }

    public void setReservations(List<Reservation> reservations) {
        this.reservations = reservations;
    }
}
