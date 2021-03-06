﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="particpantpage.aspx.cs" Inherits="particpantpage" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta  charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Participant Page</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        body{
            padding-top:50px;
        }
        .auto-style3 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 25%;
            left: 21px;
            top: 8px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div class="navbar-default navbar-fixed-top" role="navigation">
        <div class ="container"><!--contains the elements in the navigation bar-->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    </button>
                 <a class="navbar-brand"> SPORTS EVENTS MANAGEMENT SYSTEM</a><!-- branding the website-->
                <p class="navbar-text">Powered By Sports</p> 
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href ="Default.aspx">Logout</a></li>
                   
                </ul>
            </div>
            </div>
       </div>
        <!-- Desigining the Participant Form-->
       <div class="container">
        <div class="form-horizontal">
            <h2>Event Details</h2>
                 <hr />
           
                 <div class="form-group">
               
                    <asp:Label ID="Label1" runat="server" Text="EventName" CssClass="col-md-1 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txteventname" runat="server" CssClass="form-control"></asp:TextBox>
                    </div> 
                </div>
      
            
                <div class="form-group">
               
                    <asp:Label ID="Eventtype" runat="server" Text="EventType" CssClass="col-md-1 control-label"></asp:Label>
                    <div class="col-md-3">
                         <asp:DropDownList ID="ddleventtype" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="EventType" DataValueField="EventType"></asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SMESConnectionString1 %>" SelectCommand="SELECT [EventType] FROM [EventType]"></asp:SqlDataSource>
                </div>
                
               <asp:Label ID="Event" runat="server" CssClass="col-md-1 control-label" Text="Event"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlevent" runat="server" CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="Event" DataValueField="Event"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SMESConnectionString1 %>" SelectCommand="SELECT [Event] FROM [EventType]"></asp:SqlDataSource>
                </div>
           </div>
            <br />
            <h2>Personal Detail</h2>
                 <hr />
         
                <div class="form-group">
               
                    <asp:Label ID="Pname" runat="server" Text="Name" CssClass="col-md-1 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtname" runat="server" CssClass ="form-control" placeholder="Enter your Fullname"></asp:TextBox> 
                </div>
                
               <asp:Label ID="Phone" runat="server" CssClass="col-md-1 control-label" Text="Phone"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtnumber" runat="server"  CssClass ="form-control" placeholder="Enter your number"></asp:TextBox>
                </div>
                 </div>
             <div class="form-group">
               
                    <asp:Label ID="Gender" runat="server" Text="Gender:" CssClass="col-md-1 control-label"></asp:Label>
                    <div class="auto-style3">
                        <asp:RadioButton ID="Rbtmale" runat="server" Text="Male" Checked="True" GroupName="gender" />&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="Rbtfemale" runat="server" Text="Female" GroupName="gender" />
                    </div> 

                </div>
           </div>
           </div>
        
                
           <br />
                   <div class="form-group">
               <div  align="center">
               <asp:Button ID="btnenroll" runat="server" Text="Enroll me Up"  CssClass="btn btn-danger" OnClick="btnenroll_click"></asp:Button>
                   </div>
           </div>
    
        
    </form>
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
