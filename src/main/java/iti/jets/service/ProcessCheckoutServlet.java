package iti.jets.service;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import iti.jets.dao.impl.*;
import iti.jets.entity.Cart;
import iti.jets.entity.Order;
import iti.jets.entity.OrderDetails;
import iti.jets.entity.User;
import iti.jets.enums.OrderStatus;
import iti.jets.enums.PayType;
import jakarta.persistence.EntityManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/processCheckout")
public class ProcessCheckoutServlet extends HttpServlet {

    @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    HttpSession session = request.getSession(false);
    
    EntityManager entityManager = GenericRepoImpl.getEntityManagerFactory().createEntityManager();
    CartRepoImpl cartRepo = new CartRepoImpl(entityManager);
    UserRepoImpl userRepo = new UserRepoImpl(entityManager);
    OrderRepoImpl orderRepo = new OrderRepoImpl(entityManager);
    OrderDetailsRepoImpl orderDetailsRepo = new OrderDetailsRepoImpl(entityManager);

    
    try {

        entityManager.getTransaction().begin();
        if (session == null || session.getAttribute("login") == null ||
                !(Boolean) session.getAttribute("login")) {
            response.sendRedirect(request.getContextPath() + "/login.jsp");
            return;
        }

//        cartRepo = new CartRepoImpl(entityManager);
//        userRepo = new UserRepoImpl(entityManager);
//        orderRepo = new OrderRepoImpl(entityManager);
//        orderDetailsRepo = new OrderDetailsRepoImpl(entityManager);

        Integer userId = (Integer) session.getAttribute("id");
        if (userId == null) {
            throw new ServletException("User ID not found in session");
        }
        User user = userRepo.findById(userId);
        if (user == null) {
            throw new ServletException("User not found");
        }

        List<Cart> cartItems = cartRepo.getCartItemsByUserId(userId);
        if (cartItems == null || cartItems.isEmpty()) {
            response.sendRedirect(request.getContextPath() + "/cart");
            return;
        }

        int totalPrice = cartRepo.calculateCartTotal(userId);

    
        String customerName = request.getParameter("customerName");
        String city = request.getParameter("city");
        String area = request.getParameter("area");
        String street = request.getParameter("street");
        String buildingNum = request.getParameter("buildingNum");
        String phone = request.getParameter("phone");
        String paymentMethod = request.getParameter("payment");

        String fullAddress = String.format("%s, %s, %s, Building %s", street, area, city, buildingNum);

        Order order = new Order();
        order.setUser(user);
        order.setAddress(fullAddress);
        order.setPrice(totalPrice);
        order.setDate(new Date());
        order.setStatus(OrderStatus.PROCESSING);

        if ("cash".equals(paymentMethod)) {
            order.setPayType(PayType.CASH);
        } else {
            order.setPayType(PayType.CREDIT);
        }
        
      
        order = orderRepo.insert(order);
        System.out.println("Order saved with ID: " + order.getOrderId());

      
        for (Cart cartItem : cartItems) {
            try {
                OrderDetails orderDetails = new OrderDetails();
                orderDetails.setOrder(order);
                orderDetails.setProduct(cartItem.getProduct());
                orderDetails.setQuantity(cartItem.getQuantity());
                orderDetails.setPrice((int) cartItem.getProduct().getPrice());
                
                System.out.println("Saving order detail for product: " + 
                                  cartItem.getProduct().getProductName() +
                                  " with quantity: " + cartItem.getQuantity());
                                  
                orderDetailsRepo.insert(orderDetails);
                System.out.println("Order detail saved successfully");
            } catch (Exception e) {
                System.err.println("Error saving order detail: " + e.getMessage());
                e.printStackTrace();
            }
        }

        // Clean up cart
        for (Cart cartItem : cartItems) {
            cartRepo.deleteByUserIdAndProductId(userId, cartItem.getProduct().getProductId());
        }

        entityManager.getTransaction().commit();
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write("{\"success\": true, \"message\": \"Order processed successfully\", \"orderId\": " + order.getOrderId() + "}");

    } catch (Exception e) {
        System.err.println("Error in ProcessCheckoutServlet: " + e.getMessage());
        e.printStackTrace();

        response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write("{\"success\": false, \"error\": \"Failed to process order: " + e.getMessage() + "\"}");
    } 
    finally {
       
        if (entityManager != null && entityManager.isOpen()) {
           entityManager.close();
        }

    }
}

}
