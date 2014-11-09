<%-- 
    Document   : index
    Created on : Oct 31, 2014, 2:07:11 PM
    Author     : Baoyu
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="wsClient.LineItemHelper"%>
<%@page import="wsClient.PurchaseOrderHelper"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>Control Panel</title>
        <meta name="generator" content="Bootply" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="../css/bootstrap.min.css" rel="stylesheet">

        <link href="css/styles.css" rel="stylesheet">
    </head>
    <body>
        <div class="row">
            <div class="col-md-12">
                <h3>Purchase Orders received from Island Furniture</h3>
                <a href="../Supplier/servlet/getPurchaseOrder"><strong><span class="btn btn-primary">Refresh</span></strong></a>                                          
            </div>
            <div class="col-md-12">                    
                <%
                    List<PurchaseOrderHelper> purchaseOrderList;
                    if (request.getAttribute("purchaseOrderList") != null) {
                        purchaseOrderList = (List<PurchaseOrderHelper>) request.getAttribute("purchaseOrderList");
                    } else {
                        purchaseOrderList = null;
                    }

                %>
                <table class="table table-striped">

                    <%                                if (purchaseOrderList != null) {
                            for (PurchaseOrderHelper po : purchaseOrderList) {
                    %>
                    <thead>
                        <tr><th>Destination</th><th>Expected received date</th><th>Telephone</th><th>Email</th><th>Address</th><th>Action</th></tr>
                    </thead>
                    <tbody>
                        <tr>                                                                
                            <td><%= po.getWarehouseName()%></td>
                            <td><%= po.getExpectedReceivedDate()%></td>                          
                            <td><%= po.getTelephone()%></td>
                            <td><%= po.getEmail()%></td>
                            <td><%= po.getAddress()%></td>
                            <td>
                                <a href="../servlet/rejectPurchaseOrder?poId=<%= po.getId()%>"><span class="btn btn-primary">Reject</span></a>
                            </td>
                        </tr>
                    </tbody>
                    <tr>
                        <td colspan="6">
                            <table class="table table-bordered">
                                <% for (LineItemHelper lineItem : po.getLineItemHelpers()) {%>
                                <thead>
                                    <tr>
                                        <th style="width: 10%;">SKU</th>
                                        <th style="width: 30%;">Name</th>
                                        <th style="width: 12%;">Quantity</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><%= lineItem.getSKU()%></td>
                                        <td><%= lineItem.getName()%></td>
                                        <td><%= lineItem.getQuantity()%></td>     
                                    </tr>
                                </tbody>
                                <% } %>
                            </table>
                        </td>                                
                    </tr>
                    <%
                            }
                        }
                    %>
                    </tbody>
                </table>
            </div>
        </div>

    </body>
</html>
