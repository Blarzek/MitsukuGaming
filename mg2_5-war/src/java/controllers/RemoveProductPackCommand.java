package controllers;

import controller.PackDetailsFacade;
import entities.PackDetails;
import controller.PackContentFacade;
import entities.PackContent;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;

public class RemoveProductPackCommand extends FrontCommand {

    @Override
    public void process() {
        try {
            HttpSession session = request.getSession(true);
            
            PackDetailsFacade packFacade = InitialContext.doLookup("java:global/mg2_5/mg2_5-ejb/PackDetailsFacade");
            PackContentFacade contentFacade = InitialContext.doLookup("java:global/mg2_5/mg2_5-ejb/PackContentFacade");
            
            String idPack = (String)session.getAttribute("idPack");
            String idProduct = request.getParameter("id");
            
            List<PackContent> contentList = contentFacade.findAll();
            
            for (PackContent Product : contentList) {
                if ((Product.getPackId() == Integer.parseInt(idPack)) && (Product.getProductId() == Integer.parseInt(idProduct))){
                    PackContent contentDelete = contentFacade.find(Product.getId());
                    contentFacade.remove(contentDelete);
                }               
            }
                        
            List<PackDetails> packList = packFacade.findAll();
            request.setAttribute("packList", packList);
            forward("/managePacks.jsp");
        } catch (NamingException | ServletException | IOException ex) {
            Logger.getLogger(RemoveProductPackCommand.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}