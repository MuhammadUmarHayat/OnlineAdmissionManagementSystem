<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_ManageDegreeSeats.aspx.cs" Inherits="Admin_ManageDegreeSeats" %>

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
        .auto-style3 {
            color: #CC0066;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="3"><strong>Admin Pannel: Qouta System Management</strong></td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminPannel.aspx">Admin Pannel</asp:HyperLink>
&nbsp;|
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Admin_StudyProgram.aspx">Study Program Management</asp:HyperLink>
                    |<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Admin_QoutaManagement.aspx">Qouta Management</asp:HyperLink>
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
                <td>Semester</td>
                <td>
                    <asp:TextBox ID="txtSemster" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Degree Program</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Title" DataValueField="Title">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AyeshaDBFinalConnectionString %>" SelectCommand="SELECT DISTINCT [Title] FROM [StudyProgram]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Total No of seats</td>
                <td>
                    <asp:TextBox ID="txtSeats" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong>
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style3"></asp:Label>
                    </strong></td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" />
&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource3">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="SemesterName" HeaderText="SemesterName" SortExpression="SemesterName" />
                            <asp:BoundField DataField="DegreeProgram" HeaderText="DegreeProgram" SortExpression="DegreeProgram" />
                            <asp:BoundField DataField="TotalSeats" HeaderText="TotalSeats" SortExpression="TotalSeats" />
                        </Columns>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AyeshaDBFinalConnectionString %>" SelectCommand="SELECT DISTINCT [Id], [SemesterName], [DegreeProgram], [TotalSeats] FROM [Degree_Seats]" UpdateCommand="update Degree_Seats set [SemesterName]=@SemesterName, [DegreeProgram]=@DegreeProgram, [TotalSeats]=@TotalSeats where id=@id" DeleteCommand="delete from Degree_Seats where id@id">

                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>




        </div>
    </form>
</body>
</html>
