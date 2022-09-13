package actions;

import com.opensymphony.xwork2.ActionSupport;
import lombok.Data;
import model.OrderBill;
import service.OrderService;

import java.util.List;

@Data
public class OrderAction extends ActionSupport {

    private List<OrderBill> lst;
    private Integer id;
    private OrderBill orderBill;
    private String action;
    private String name;

    private OrderService ordersService = new OrderService();

    public String save() {
        action = "ADD";
        ordersService.save(getOrderBill());
        addActionMessage("OrderBill saved successfully");
        return SUCCESS;
    }

    public String viewFormAdd() {
        return SUCCESS;
    }

    @Override
    public String execute() {
        lst = ordersService.getAll();
        return SUCCESS;
    }

    public String updateView() {
        orderBill = ordersService.getOrderById(id);
        return SUCCESS;
    }

    public String edit() {
        ordersService.update(orderBill);
        lst = ordersService.getAll();
        return SUCCESS;
    }

    public String del() {
        ordersService.remove(id);
        addActionMessage("OrderBill deleted successfully");
        return SUCCESS;
    }

    public String search() {
        lst = ordersService.searchOrder(name);
        return SUCCESS;
    }


//    @Override
//    public void validate() {
//        if (orderBill.getClientName().length() == 0) {
//            addFieldError("clientName", "Client name is required");
//        } else if (orderBill.getClientName().contains("[^a-zA-Z0-9]")) {
//            addFieldError("clientName", "Client name cannot contain special characters");
//        }
//    }
}
