<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="LoginAsp.Net.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Index</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" ID="lblWelcome" Text="" CssClass="display-5 fw-bold text-center"></asp:Label>
        </div>
        <div>
            <asp:Button runat="server" ID="btnCerrar" Text="Log Out" CssClass="btn btn-primary rounded fw-bold shadow" OnClick="btnCerrar_Click"/>
        </div>
    </form>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
  
</body>
</html>
