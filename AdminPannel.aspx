<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPannel.aspx.cs" Inherits="AdminPannel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            color: #660066;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="3"><strong>Admin Pannel</strong></td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminPannel.aspx">Admin Pannel</asp:HyperLink>
&nbsp;|
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Admin_StudyProgram.aspx">Study Program Management</asp:HyperLink>
                    |<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Admin_QoutaManagement.aspx">Qouta Management</asp:HyperLink>
                    
                     |<asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Admin_ManageDegreeSeats.aspx">Manage Degree Seats</asp:HyperLink>
                    |<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Admin_GenerateMeritList.aspx">Generate Merit lists</asp:HyperLink>
                    |<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Admin_EnrolStudents.aspx">Enrol Student</asp:HyperLink>
                    |<asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Logout.aspx">Logout</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>




        </div>
    </form>
</body>
</html>
