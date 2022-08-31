package model;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "order")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    String id;

    @Column(name = "client_name")
    String name;

    @Column(name = "amount")
    Long amount;

    public Order() {
    }

    public Order(String id, String name, Long amount) {
        this.id = id;
        this.name = name;
        this.amount = amount;
    }
}
