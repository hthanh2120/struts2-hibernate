package model;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Data
@Entity
@Table(name = "order_bill")
public class OrderBill implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    Integer id;

    @Column(name = "client_name")
    String clientName;

    @Column(name = "amount")
    Long amount;

    public OrderBill() {
    }

    public OrderBill(Integer id, String clientName, Long amount) {
        this.id = id;
        this.clientName = clientName;
        this.amount = amount;
    }
}
