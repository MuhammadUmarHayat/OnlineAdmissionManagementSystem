<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewAllDegreePrograms.aspx.cs" Inherits="ViewAllDegreePrograms" %>

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
            font-size: xx-large;
            color: #660066;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>



            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="4"><strong>All Degree Programs</strong></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Main Page</asp:HyperLink>
&nbsp;|<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Registeration.aspx">Apply Now</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td colspan="2" rowspan="2">
                        <center>


                        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="538px">
                            <AlternatingItemStyle BackColor="#F7F7F7" />
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <ItemTemplate>
                                <h1>
 Title:<asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                                </h1>
                               
                                
                                <br />
                                Details:
                                <asp:Label ID="DetailsLabel" runat="server" Text='<%# Eval("Details") %>' />
                                <br />
                                EligibilityCriteria:
                                <asp:Label ID="EligibilityCriteriaLabel" runat="server" Text='<%# Eval("EligibilityCriteria") %>' />
                                <br />
                                Duration:
                                <asp:Label ID="DurationLabel" runat="server" Text='<%# Eval("Duration") %>' />
                                <br />
                                CreditHours:
                                <asp:Label ID="CreditHoursLabel" runat="server" Text='<%# Eval("CreditHours") %>' />
                                <br />
                                department:
                                <asp:Label ID="departmentLabel" runat="server" Text='<%# Eval("department") %>' />
                                <br />
                                Level:
                                <asp:Label ID="LevelLabel" runat="server" Text='<%# Eval("Level") %>' />
                                <br />
<br />
                            </ItemTemplate>
                            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        </asp:DataList>
                        </center>

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AyeshaDBFinalConnectionString %>" SelectCommand="SELECT DISTINCT [Title], [Details], [EligibilityCriteria], [Duration], [CreditHours], [department], [Level] FROM [StudyProgram]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>



        </div>
    </form>
</body>
</html>
