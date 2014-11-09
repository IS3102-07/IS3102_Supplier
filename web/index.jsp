<%-- 
    Document   : index
    Created on : Oct 31, 2014, 2:07:11 PM
    Author     : Baoyu
--%>

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
        <!--[if lt IE 9]>
                <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <link href="css/styles.css" rel="stylesheet">
    </head>
    <body>
        <!-- Header -->
        <div id="top-nav" class="navbar navbar-inverse navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-toggle"></span>
                    </button>
                    <a class="navbar-brand" href="#">Control Panel</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">

                        <li class="dropdown">
                            <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#">
                                <i class="glyphicon glyphicon-user"></i> Admin <span class="caret"></span></a>
                            <ul id="g-account-menu" class="dropdown-menu" role="menu">
                                <li><a href="#">My Profile</a></li>
                                <li><a href="#"><i class="glyphicon glyphicon-lock"></i> Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div><!-- /container -->
        </div>
        <!-- /Header -->

        <!-- Main -->
        <div class="container">

            <!-- upper section -->
            <div class="row">
                <div class="col-sm-3">
                    <!-- left -->
                    <h3><i class="glyphicon glyphicon-briefcase"></i> Toolbox</h3>
                    <hr>

                    <ul class="nav nav-stacked">
                        <li><a href="javascript:;"><i class="glyphicon glyphicon-flash"></i> Alerts</a></li>
                        <li><a href="javascript:;"><i class="glyphicon glyphicon-link"></i> Links</a></li>
                        <li><a href="javascript:;"><i class="glyphicon glyphicon-list-alt"></i> Reports</a></li>
                        <li><a href="javascript:;"><i class="glyphicon glyphicon-book"></i> Books</a></li>
                        <li><a href="javascript:;"><i class="glyphicon glyphicon-briefcase"></i> Tools</a></li>
                        <li><a href="javascript:;"><i class="glyphicon glyphicon-time"></i> Real-time</a></li>
                        <li><a href="javascript:;"><i class="glyphicon glyphicon-plus"></i> Advanced..</a></li>
                    </ul>

                    <hr>

                </div><!-- /span-3 -->
                <div class="col-sm-9">

                    <!-- column 2 -->	
                    <h3><i class="glyphicon glyphicon-dashboard"></i> Dashboard</h3>  

                    <hr>

                    <div class="row">
                        <!-- center left-->	
                        <div class="col-md-7">
                            <div class="well">Inbox Messages <span class="badge pull-right">3</span></div>

                            <hr>

                            <div class="panel panel-default">
                                <div class="panel-heading"><h4>Processing Status</h4></div>
                                <div class="panel-body">

                                    <small>Complete</small>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="72" aria-valuemin="0" aria-valuemax="100" style="width: 72%">
                                            <span class="sr-only">72% Complete</span>
                                        </div>
                                    </div>
                                    <small>In Progress</small>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                            <span class="sr-only">20% Complete</span>
                                        </div>
                                    </div>
                                    <small>At Risk</small>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete</span>
                                        </div>
                                    </div>

                                </div><!--/panel-body-->
                            </div><!--/panel-->                     

                        </div><!--/col-->

                        <!--center-right-->
                        <div class="col-md-5">

                            <ul class="nav nav-justified">
                                <li><a href="#"><i class="glyphicon glyphicon-cog"></i></a></li>
                                <li><a href="#"><i class="glyphicon glyphicon-heart"></i></a></li>
                                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-comment"></i><span class="count">3</span></a><ul class="dropdown-menu" role="menu"><li><a href="#">1. Is there a way..</a></li><li><a href="#">2. Hello, admin. I would..</a></li><li><a href="#"><strong>All messages</strong></a></li></ul></li>
                                <li><a href="#"><i class="glyphicon glyphicon-user"></i></a></li>
                                <li><a title="Add Widget" data-toggle="modal" href="#addWidgetModal"><span class="glyphicon glyphicon-plus-sign"></span></a></li>
                            </ul>  

                            <hr>

                            <p>
                                This is a responsive dashboard-style layout that uses <a href="http://www.getbootstrap.com">Bootstrap 3</a>. You can use this template as a starting point to create something more unique.
                            </p>
                            <p>
                                Visit the Bootstrap Playground at <a href="http://www.bootply.com">Bootply</a> to tweak this layout, or discover 1000's of Bootstrap code examples and snippets.
                            </p>

                            <hr>

                            <div class="btn-group btn-group-justified">
                                <a href="#" class="btn btn-info col-sm-3">
                                    <i class="glyphicon glyphicon-plus"></i><br>
                                    Service
                                </a>
                                <a href="#" class="btn btn-info col-sm-3">
                                    <i class="glyphicon glyphicon-cloud"></i><br>
                                    Cloud
                                </a>
                                <a href="#" class="btn btn-info col-sm-3">
                                    <i class="glyphicon glyphicon-cog"></i><br>
                                    Tools
                                </a>
                                <a href="#" class="btn btn-info col-sm-3">
                                    <i class="glyphicon glyphicon-question-sign"></i><br>
                                    Help
                                </a>
                            </div>

                        </div><!--/col-span-6-->

                    </div><!--/row-->
                </div><!--/col-span-9-->

            </div><!--/row-->
            <!-- /upper section -->

            <!-- lower section -->
            <div class="row">

                <div class="col-md-12">
                    <hr>
                    <h3>Purchase Orders received from island furniture</h3>
                    <a href="../Supplier/servlet/getPurchaseOrder"><strong><i class="glyphicon glyphicon-list-alt"></i><span class="btn btn-primary">Refresh</span></strong></a>                                          
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
                        <thead>
                            <tr><th>Destination</th><th>Expected received date</th><th>Tele</th><th>Email</th><th>Address</th><th>Action</th></tr>
                        </thead>
                        <tbody>
                            <%                                
                                if (purchaseOrderList != null) {
                                    for (PurchaseOrderHelper po : purchaseOrderList) {
                            %>
                            <tr>                                                                
                                <td><%= po.getWarehouseName() %></td>
                                <td><%= po.getExpectedReceivedDate() %></td>
                                <td><%= po.getTelephone() %></td>
                                <td><%= po.getEmail() %></td>
                                <td><%= po.getAddress() %></td>
                                <td>
                                    <a href="../servlet/rejectPurchaseOrder?poId=<%= po.getId() %>"><span class="btn btn-primary">Reject</span></a>
                                    <a href=""><span class="btn btn-primary">Invoice</span></a>
                                </td>
                                                       
                            </tr>
                            <tr>
                                <td colspan="6">
                                    <table class="table table-bordered">
                                        <% for (LineItemHelper lineItem : po.getLineItemHelpers()) {%>
                                        <tr>
                                            <td><%= lineItem.getSKU()%></td>
                                            <td><%= lineItem.getName() %></td>
                                            <td><%= lineItem.getQuantity()%></td>                                            
                                        </tr>
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

                    <hr>              


                    <hr>

                    <div class="panel panel-default">
                        <div class="panel-heading"><h4>New Requests</h4></div>
                        <div class="panel-body">
                            <div class="list-group">
                                <a href="#" class="list-group-item active">Hosting virtual mailbox serv..</a>
                                <a href="#" class="list-group-item">Dedicated server doesn't..</a>
                                <a href="#" class="list-group-item">RHEL 6 install on new..</a>
                            </div>
                        </div>
                    </div>

                    <hr>

                    <div class="alert alert-info">
                        <button type="button" class="close" data-dismiss="alert">×</button>
                        Please remember to <a href="#">Logout</a> for classified security.
                    </div>


                </div>

            </div><!--/row-->

        </div><!--/container-->
        <!-- /Main -->


        <footer class="text-center">This Bootstrap 3 dashboard layout is compliments of <a href="http://www.bootply.com/85850"><strong>Bootply.com</strong></a></footer>


        <div class="modal" id="addWidgetModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Add Widget</h4>
                    </div>
                    <div class="modal-body">
                        <p>Add a widget stuff here..</p>
                    </div>
                    <div class="modal-footer">
                        <a href="#" class="btn">Close</a>
                        <a href="#" class="btn btn-primary">Save changes</a>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dalog -->
        </div><!-- /.modal -->




        <!-- script references -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
    </body>
</html>
