/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import controller.ProductFacade;
import controller.WishlistFacade;
import entities.Product;
import entities.Users;
import entities.Wishlist;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jusio
 */
public class showMyWishListCommand extends FrontCommand {

    public void process() {
        try {

            HttpSession session = request.getSession(true);
            Users loggedUser = (Users) session.getAttribute("loggedUser");

            WishlistFacade wishListFacade = InitialContext.doLookup("java:global/mg2_5/mg2_5-ejb/WishlistFacade");
            ProductFacade productListFacade = InitialContext.doLookup("java:global/mg2_5/mg2_5-ejb/ProductFacade");
            List<Product> productList = productListFacade.findAll();
            List<Product> productListFiltre = new ArrayList<>();
           
            
            List<Wishlist> wishlist = wishListFacade.findAll();
            List<Wishlist> wishlistFiltre = new ArrayList<>();
            
            for (Wishlist wishlistProduct : wishlist) {
                if (wishlistProduct.getUserId() == loggedUser.getUserId()){
                    wishlistFiltre.add(wishlistProduct);
                }
            }
            
            for (Product productobject : productList) {
                for (Wishlist wishlist1 : wishlistFiltre) {
                    if(productobject.getProductId()==wishlist1.getProductId())
                        productListFiltre.add(productobject);
                }
            }
            
            request.setAttribute("productListFiltre", productListFiltre);
            forward("/wishList.jsp");

        } catch (ServletException ex) {
            Logger.getLogger(showMyWishListCommand.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(showMyWishListCommand.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NamingException ex) {
            Logger.getLogger(showMyWishListCommand.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}