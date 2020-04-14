<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Candidate_Qualification.aspx.cs" Inherits="Candidate_Qualification" %>

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
        .auto-style3 {
            color: #009933;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="3"><strong>Candidate Qualification</strong></td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Candidate_Home.aspx">Home</asp:HyperLink>
                    </td>
                    <td>
                        <strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Label"></asp:Label>
                        </strong>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Degree Title</td>
                    <td>
                        <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Board or University Name</td>
                    <td>
                        <asp:TextBox ID="txtBoard" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Passing Year</td>
                    <td>
                        <asp:TextBox ID="txtYear" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Total Marks</td>
                    <td>
                        <asp:TextBox ID="txtTM" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Marks Obtained</td>
                    <td>
                        <asp:TextBox ID="txtMO" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Percentage</td>
                    <td>
                        <asp:TextBox ID="txtPercentage" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Specialization</td>
                    <td>
                    <asp:RadioButtonList ID="rblSpecialization" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Science</asp:ListItem>
                        <asp:ListItem>Arts</asp:ListItem>
                        <asp:ListItem>Commerce</asp:ListItem>
                    </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Level</td>
                    <td>
                    <asp:RadioButtonList ID="rblLeve" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Matriculation</asp:ListItem>
                        <asp:ListItem>Intermediate</asp:ListItem>
                        <asp:ListItem>Bachelor</asp:ListItem>
                        <asp:ListItem>Master</asp:ListItem>
                        <asp:ListItem>Masters of Science</asp:ListItem>
                    </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Status of degree </td>
                    <td>
                    <asp:RadioButtonList ID="rblStatus" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Completed</asp:ListItem>
                        <asp:ListItem>InProcess</asp:ListItem>
                    </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text="Label"></asp:Label>
                        </strong></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="CNIC" HeaderText="CNIC" SortExpression="CNIC" />
                                <asp:BoundField DataField="Degree_title" HeaderText="Degree_title" SortExpression="Degree_title" />
                                <asp:BoundField DataField="Board" HeaderText="Board" SortExpression="Board" />
                                <asp:BoundField DataField="TotalMarks" HeaderText="TotalMarks" SortExpression="TotalMarks" />
                                <asp:BoundField DataField="MarksObtained" HeaderText="MarksObtained" SortExpression="MarksObtained" />
                                <asp:BoundField DataField="Percentage" HeaderText="Percentage" SortExpression="Percentage" />
                                <asp:BoundField DataField="Specialization" HeaderText="Specialization" SortExpression="Specialization" />
                                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                                <asp:BoundField DataField="Level" HeaderText="Level" SortExpression="Level" />
                                <asp:BoundField DataField="PassingYear" HeaderText="PassingYear" SortExpression="PassingYear" />
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
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AyeshaDBFinalConnectionString %>" SelectCommand="SELECT * FROM [Candidate_Qualification] WHERE ([CNIC] = @CNIC)" UpdateCommand="update [Candidate_Qualification] set [Degree_title]=@Degree_title, [Board]=@Board, [TotalMarks]=@TotalMarks, [MarksObtained]=@MarksObtained, [Percentage]=@Percentage, [Specialization]=@Specialization, [Status]=@Status, [Level]=@Level, [PassingYear]=@PassingYear where id=@id" DeleteCommand="delete from Candidate_Qualification where id=@id" >
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
