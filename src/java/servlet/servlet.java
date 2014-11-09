package servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.WebServiceRef;
import wsClient.PurchaseOrderHelper;
import wsClient.RetailProductsAndRawMaterialsPurchasingWebService_Service;


/**
 *
 * @author Baoyu
 */
public class servlet extends HttpServlet {
    @WebServiceRef(wsdlLocation = "WEB-INF/wsdl/localhost_8080/RetailProductsAndRawMaterialsPurchasingWebService/RetailProductsAndRawMaterialsPurchasingWebService.wsdl")
    private RetailProductsAndRawMaterialsPurchasingWebService_Service service;


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("Servlet is called.");

        String nextPage = "/index";
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher;
        HttpSession session = request.getSession();
        String target = request.getPathInfo();

        switch (target) {

            case "/getPurchaseOrder":
                List<PurchaseOrderHelper> purchaseOrderList = this.getPurchaseOrder("supplier1@email.com", "Supplier 1");
                System.out.println("purchaseOrderList.size(): " + purchaseOrderList.size());
                request.setAttribute("purchaseOrderList", purchaseOrderList);                
                break;
                
            case "/rejectPurchaseOrder":
                Long poId = Long.parseLong(request.getParameter("poId"));
                this.rejectPurchaseOrder("supplier1@email.com", "Supplier 1", poId);                
                break;
                
        }
        dispatcher = servletContext.getRequestDispatcher(nextPage);
        dispatcher.forward(request, response);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private java.util.List<wsClient.PurchaseOrderHelper> getPurchaseOrder(java.lang.String email, java.lang.String password) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        wsClient.RetailProductsAndRawMaterialsPurchasingWebService port = service.getRetailProductsAndRawMaterialsPurchasingWebServicePort();
        return port.getPurchaseOrder(email, password);
    }

    private Boolean rejectPurchaseOrder(java.lang.String email, java.lang.String password, java.lang.Long purchaseOrderId) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        wsClient.RetailProductsAndRawMaterialsPurchasingWebService port = service.getRetailProductsAndRawMaterialsPurchasingWebServicePort();
        return port.rejectPurchaseOrder(email, password, purchaseOrderId);
    }



}
