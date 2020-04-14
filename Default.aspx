<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Admission Management System</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            color: #660066;
            text-align: center;
            font-size: xx-large;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            color: #660066;
            font-size: xx-large;
        }
        .auto-style5 {
            color: #FF3300;
            background-color: #00CC00;
        }
        .auto-style6 {
            color: #FF0000;
        }
        .auto-style7 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>



            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="3"><strong>Online Admission Management system</strong></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Registeration.aspx">Apply  Now</asp:HyperLink>
                        |
                        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/ViewAllDegreePrograms.aspx">View All Degree Programs</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;

<p>

<h1> Introduction </h1>

Online admission management system is being developed for a university so that students can apply in different disciplines once in a year. Admission to the eligible students will be offered merely on merit basis. Desiring candidates will fill form for the admission. A candidate can also apply in more than one disciplines if he/she is applying in any regular study program. 5% marks will be deducted from the merit if any candidate has less than 45%marks in last academic year.

Software will maintain departmental merit list of students, record of those students who will apply on specific quota, and can also generate report on the basis of student’s choice.  Student will also receive acceptance/rejection message User’s provided data will be used for Student’s id card.

</p>




                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style3" colspan="3"><span class="auto-style4"><strong>Login</strong></span> </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>Enter your CNIC</td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>Enter your Password</td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" CssClass="auto-style5" OnClick="Button1_Click" Text="Login " />
                                    <strong>
                                    <asp:Label ID="Label1" runat="server" CssClass="auto-style6"></asp:Label>
                                    </strong></td>
                            </tr>
                        </table>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
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
