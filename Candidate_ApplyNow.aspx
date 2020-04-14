<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Candidate_ApplyNow.aspx.cs" Inherits="Candidate_ApplyNow" %>

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
        .auto-style4 {
            width: 306px;
        }
        .auto-style5 {
            color: #CC0099;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="3"><strong>Candidate Home</strong></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Candidate_Home.aspx">Home</asp:HyperLink>
&nbsp;
                        |<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Candidate_ViewPersonalInformation.aspx">View Personal Information</asp:HyperLink>
                        |<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Candidate_Qualification.aspx">Add /Edit Qualifications</asp:HyperLink>
                        |<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Candidate_ApplyNow.aspx">Apply Now</asp:HyperLink>
                        |<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Candidate_MeritList.aspx">Merit List</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Label"></asp:Label>
                        </strong></td>
                    <td colspan="2" rowspan="2">Please Select your preference 1st:&nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Title" DataValueField="Title">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AyeshaDBFinalConnectionString %>" SelectCommand="SELECT DISTINCT [Title] FROM [StudyProgram]"></asp:SqlDataSource>
                        <br />
                        <br />
                        Please Select your second preference<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Title" DataValueField="Title">
                        </asp:DropDownList>
                        <br />
                        <br />
                        Please Select you third preference
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="Title" DataValueField="Title">
                        </asp:DropDownList>
                        <br />
                        <h1> * Important note *</h1>
                        1.If you are disable then you may apply for disable Qouta
                        <br />
                        2.If your father is an employee of this university then you may apply for Parent Qouta
                        <br />
                        3.You can also apply for provincial Qouta
                        <br />
                        <h2> * You can apply max three qouta system education *</h2>
                        <br />

                        Qouta No :1
                        <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource4" DataTextField="title" DataValueField="title">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:AyeshaDBFinalConnectionString %>" SelectCommand="SELECT [title] FROM [Qouta]"></asp:SqlDataSource>
                        <br />
                        Qouta No: 2
                        <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource4" DataTextField="title" DataValueField="title">
                        </asp:DropDownList>
                        <br />
                        Qouta No: 3
                        <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource4" DataTextField="title" DataValueField="title">
                        </asp:DropDownList>
                        <br />

                        <br />
                        <br />

                        <br />
                        <br />
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/applynow.bmp" OnClick="ImageButton1_Click" Width="145px" />
                        <strong>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style5"></asp:Label>
                        <br />
                        </strong>
                        <br />
                        <br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource5" AllowSorting="True">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="cnic" HeaderText="cnic" SortExpression="cnic" />
                                <asp:BoundField DataField="preference1" HeaderText="preference1" SortExpression="preference1" />
                                <asp:BoundField DataField="preference2" HeaderText="preference2" SortExpression="preference2" />
                                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                <asp:BoundField DataField="prefrence3" HeaderText="prefrence3" SortExpression="prefrence3" />
                                <asp:BoundField DataField="Qouta1" HeaderText="Qouta1" SortExpression="Qouta1" />
                                <asp:BoundField DataField="Qouta2" HeaderText="Qouta2" SortExpression="Qouta2" />
                                <asp:BoundField DataField="Qouta3" HeaderText="Qouta3" SortExpression="Qouta3" />
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
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:AyeshaDBFinalConnectionString %>" SelectCommand="SELECT [Id], [cnic], [preference1], [preference2], [Date], [prefrence3], [Qouta1], [Qouta2], [Qouta3] FROM [Candidate_Preferences] WHERE ([cnic] = @cnic)" UpdateCommand="update [Candidate_Preferences] set [preference1]=@preference1, [preference2]=@preference2, [prefrence3]=@prefrence3, Qouta1=@Qouta1,Qouta2=@Qouta2,Qouta3=@Qouta3 WHERE ([id] = @id)" DeleteCommand="delete from [Candidate_Preferences] WHERE ([id] = @id)">
                            <SelectParameters>
                                <asp:SessionParameter Name="cnic" SessionField="cnic" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Horizontal">
                            <AlternatingItemStyle BackColor="#F7F7F7" />
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <ItemTemplate>
                                <h1>



                              
                                Title:
                                <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                                
                                  </h1>
                                
                                <br />
                                Details:
                                <asp:Label ID="DetailsLabel" runat="server" Text='<%# Eval("Details") %>' />
                                <br />
                                EligibilityCriteria:
                                <asp:Label ID="EligibilityCriteriaLabel" runat="server" Text='<%# Eval("EligibilityCriteria") %>' />
                                <br />
                                Level:
                                <asp:Label ID="LevelLabel" runat="server" Text='<%# Eval("Level") %>' />
                                <br />
                                Duration:
                                <asp:Label ID="DurationLabel" runat="server" Text='<%# Eval("Duration") %>' />
                                <br />
                                <br />
                            </ItemTemplate>
                            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AyeshaDBFinalConnectionString %>" SelectCommand="SELECT DISTINCT [Title], [Details], [EligibilityCriteria], [Level], [Duration] FROM [StudyProgram]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
