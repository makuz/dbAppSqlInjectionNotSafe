<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="dbApp.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DB</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css" />
    <link rel="stylesheet" href="//cdn.datatables.net/1.10.7/css/jquery.dataTables.min.css" />
    <!-- Latest compiled and minified JavaScript -->

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<body style="padding: 0; margin: 0;">
    <div class="container">
        <div class="page-header bg-primary" style="padding-top: 1%; padding-left: 1%; padding-right: 1%">
            <h1>Person table</h1>
        </div>
        <form id="form1" runat="server">

            <div class="panel-body bg-info" style="padding-top: 3%; padding-left: 10%; padding-right: 10%">

                <asp:GridView CssClass="table" ID="GridViewPersonTable" runat="server">
                </asp:GridView>
                 
                <% if (ShowEventData.Text != null && ShowEventData.Text != "")
                   { %>
                <a class="btn btn-success" href="/Home.aspx">refresh</a>
                <% } %>
                <hr />
                <div class="form-group">
                    <asp:TextBox ID="Name" runat="server" placeholder="name" />
                </div>
                <div class="form-group">
                    <asp:TextBox ID="Lastname" runat="server" placeholder="lastname" />
                </div>
                <div class="form-group">
                    <asp:TextBox ID="Adres" runat="server" placeholder="adres" />
                </div>
                <div class="form-group">
                    <asp:TextBox ID="Age" runat="server" placeholder="wiek" />
                </div>
                <div class="form-group">
                    <asp:Button CssClass="btn btn-danger" OnClick="AddButton_click" runat="server" Text="add person" />
                </div>
                <% if (ShowEventData.Text != null && ShowEventData.Text != "")
                   { %>
                <div class="form-group">
                    <asp:Label ID="ShowEventData" runat="server" CssClass="alert alert-warning" />
                </div>
                <% } %>


                <div class="form-group pull-right">
                    <asp:TextBox ID="IdTextBox" runat="server" placeholder="id" />

                    <asp:Button CssClass="btn btn-danger" OnClick="RemoveButton_click" runat="server" Text="remove person" />
                </div>
                <hr />
                
            </div>
        </form>
        <div class="panel-footer">
            <h2 class="bg-primary" style="padding: 1%">footer</h2>
        </div>
    </div>
   
</body>
</html>
