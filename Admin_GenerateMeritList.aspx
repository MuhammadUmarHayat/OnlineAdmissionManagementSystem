<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_GenerateMeritList.aspx.cs" Inherits="Admin_GenerateMeritList" %>

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
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Generate Merit List" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                        <SortedDescendingHeaderStyle BackColor="#002876" />
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>




        </div>
    </form>
</body>
</html>
