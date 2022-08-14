<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginAspNet.aspx.cs" Inherits="LoginAsp.Net.LoginAspNet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
  
</head>
<body>
    <div class="vw-100 vh-100 py-3">
        <form id="form" runat="server" class="card card-body col-md-4 offset-md-4">
            <h1 class="fw-bold text-center display-5">Sign In</h1>
            <div class="mb-3">
                <asp:Label cass="heading-section" ID="lblWelcome" runat="server" Text="Welcome to System"></asp:Label>
            </div>
            <div class="mb-3">
                <asp:Label ID="lblUser" CssClass="form-label" runat="server" Text="User:"></asp:Label>
                <asp:TextBox ID="tbUser" CssClass="form-control" runat="server" placeholder="Name of User"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="lblPassword" CssClass="form-label" runat="server" Text="Password:"></asp:Label>
                <asp:TextBox ID="tbPassword" CssClass="form-control" TextMode="Password" runat="server" placeholder="Your Password"></asp:TextBox>
            </div>
            <div class="row">
                <asp:Label ID="lblError" CssClass="fw-bold text-danger" runat="server"></asp:Label>
            </div>
      
            <asp:Button ID="BtnSignin" OnClick="BtnSignin_Click" CssClass="w-100 my-2 btn btn-primary fw-bold shadow-md" runat="server" Text="Sign in"/>
        </form>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
  
</body>
</html>
