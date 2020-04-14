<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_StudyProgram.aspx.cs" Inherits="Admin_StudyProgram" %>

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
            height: 23px;
        }
        .auto-style4 {
            color: #FF0066;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="3"><strong>Admin Pannel: Degree Program </strong></td>
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
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>Title of Degree Program</td>
                <td>
                    <asp:TextBox ID="txtProgram" runat="server" Width="400px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>Details</td>
                <td>
                    <asp:TextBox ID="txtDetails" runat="server" Height="94px" TextMode="MultiLine" Width="407px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>Eligibility Criteria</td>
                <td>
                    <asp:TextBox ID="txtCriteria" runat="server" Width="399px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>Required Education</td>
                <td>
                    <asp:TextBox ID="txtEducation" runat="server" Width="397px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>Department</td>
                <td>
                    <asp:TextBox ID="txtDepartment" runat="server" Width="395px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>Duration</td>
                <td>
                    <asp:TextBox ID="txtDuration" runat="server" Width="394px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>Degree Level</td>
                <td>
                    <asp:TextBox ID="txtLevel" runat="server" Width="137px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>Credit Hours</td>
                <td>
                    <asp:TextBox ID="txtCHr" runat="server" Width="138px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>Specialization</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Science</asp:ListItem>
                        <asp:ListItem>Arts</asp:ListItem>
                        <asp:ListItem>Commerce</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style4"></asp:Label>
                    </strong></td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                            <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
                            <asp:BoundField DataField="EligibilityCriteria" HeaderText="EligibilityCriteria" SortExpression="EligibilityCriteria" />
                            <asp:BoundField DataField="Level" HeaderText="Level" SortExpression="Level" />
                            <asp:BoundField DataField="CreditHours" HeaderText="CreditHours" SortExpression="CreditHours" />
                            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                            <asp:BoundField DataField="department" HeaderText="department" SortExpression="department" />
                            <asp:BoundField DataField="Education" HeaderText="Education" SortExpression="Education" />
                            <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                            <asp:BoundField DataField="Specialization" HeaderText="Specialization" SortExpression="Specialization" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AyeshaDBFinalConnectionString %>" SelectCommand="SELECT DISTINCT [Id], [Title], [Details], [EligibilityCriteria], [Level], [CreditHours], [Status], [department], [Education], [Duration], [Specialization] FROM [StudyProgram]" UpdateCommand="update StudyProgram set [Title]=@Title, [Details]=@Details, [EligibilityCriteria]=@EligibilityCriteria, [Level]=@Level, [CreditHours]=@CreditHours, [Status]=@Status, [department]=@department, [Education]=@Education, [Duration]=@Duration, [Specialization]=@Specialization where id=@id" DeleteCommand="delete StudyProgram from  where id=@id">



                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <div>




        </div>
    </form>
</body>
</html>
