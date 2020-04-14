<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="Logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Logout</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Logout !</h1>
            <br />
            You are successfully logout. To login again <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Click Here !</asp:HyperLink>
        </div>
    </form>
</body>
</html>
