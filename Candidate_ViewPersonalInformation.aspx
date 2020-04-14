<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Candidate_ViewPersonalInformation.aspx.cs" Inherits="Candidate_ViewPersonalInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: xx-large;
            color: #660066;
            text-align: center;
        }
        .auto-style3 {
            font-size: x-large;
            color: #FF0066;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="3"><strong>Candidate Personal Information</strong></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Candidate_Home.aspx">Home</asp:HyperLink>
&nbsp;
                        |<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Candidate_ViewPersonalInformation.aspx">View Personal Information</asp:HyperLink>
                        |<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Candidate_Qualification.aspx">Add /Edit Qualifications</asp:HyperLink>
                        ||<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Logout.aspx">Logout</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Label"></asp:Label>
                        </strong></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                <asp:BoundField DataField="FatherName" HeaderText="FatherName" SortExpression="FatherName" />
                                <asp:BoundField DataField="CNIC" HeaderText="CNIC" SortExpression="CNIC" />
                                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                <asp:BoundField DataField="PostalAddress" HeaderText="PostalAddress" SortExpression="PostalAddress" />
                                <asp:BoundField DataField="Province" HeaderText="Province" SortExpression="Province" />
                                <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                            </Columns>
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
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AyeshaDBFinalConnectionString %>" SelectCommand="SELECT [Id], [name], [FatherName], [CNIC], [Password], [Email], [Gender], [PostalAddress], [Province], [mobile] FROM [Candidate_Personal_Information] WHERE ([CNIC] = @CNIC)"  UpdateCommand="update Candidate_Personal_Information  set  [name]=@name, [FatherName]=@FatherName, [Email]=@Email, [CNIC]=@CNIC, [Gender]=@Gender, [PostalAddress]=@PostalAddress, [Province]=@Province, [mobile]=@mobile WHERE id= @id" DeleteCommand="delete from Candidate_Personal_Information WHERE id= @id ">
                            <SelectParameters>
                                <asp:SessionParameter Name="CNIC" SessionField="cnic" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
