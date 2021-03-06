package controllers;

import controller.UsersFacade;
import entities.Users;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;

public class ShowProfileCommand extends FrontCommand {

    @Override
    public void process() {
        try {
            HttpSession session = request.getSession(true);
            UsersFacade usersFacade = InitialContext.doLookup("java:global/mg2_5/mg2_5-ejb/UsersFacade");
            Users loggedUser = (Users) session.getAttribute("loggedUser");
            Users user = usersFacade.find(loggedUser.getUserId());
            List<Users> userList = new ArrayList<Users>();
            userList.add(user);
            request.setAttribute("userInfo", userList);
            forward("/modifyProfile.jsp");
        } catch (NamingException | IOException | ServletException ex) {
            Logger.getLogger(ShowProfileCommand.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
