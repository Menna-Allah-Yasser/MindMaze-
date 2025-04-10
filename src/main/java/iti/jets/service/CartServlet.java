package iti.jets.service;

import java.io.IOException;
import java.util.List;

import iti.jets.dao.impl.CartRepoImpl;
import iti.jets.entity.Cart;
import iti.jets.entity.User;
import jakarta.persistence.EntityManager;
import jakarta.persistence.Persistence;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {
    
    private CartRepoImpl cartRepo;
    private EntityManager entityManager;
    
    @Override
    public void init() throws ServletException {
        entityManager = Persistence.createEntityManagerFactory("jpa-mysql").createEntityManager();
        cartRepo = new CartRepoImpl(entityManager);
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        entityManager.clear();
        int userId = 1;
        User user = entityManager.find(User.class, userId);
        
        List<Cart> cartItems = cartRepo.getCartItemsByUserId(userId);
        int total = 0;
        for (Cart cart : cartItems) {
            total += cart.getProduct().getPrice() * cart.getQuantity();
        }
        
        request.setAttribute("cartItems", cartItems);
        request.setAttribute("total", total);
        request.setAttribute("cartIsEmpty", cartItems.isEmpty());  // Add this line
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view-cart.jsp");
        dispatcher.forward(request, response);
    }
}