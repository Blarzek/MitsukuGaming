package controllers;

import controller.UsersFacade;
import entities.Users;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;

public class SupportCommand extends FrontCommand {

    @Override
    public void process() {
        try {
            UsersFacade usersFacade = InitialContext.doLookup("java:global/mg2_5/mg2_5-ejb/UsersFacade");
            Users user = usersFacade.find(1);
            String email = user.getEmail();
            forward("/supportform.jsp");
        } catch (NamingException | ServletException | IOException ex) {
            Logger.getLogger(SupportCommand.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}