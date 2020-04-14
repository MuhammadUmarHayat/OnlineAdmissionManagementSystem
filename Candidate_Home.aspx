<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Candidate_Home.aspx.cs" Inherits="Candidate_Home" %>

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
                    <td class="auto-style2" colspan="3"><strong>Candidate Home</strong></td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Candidate_Home.aspx">Home</asp:HyperLink>
&nbsp;
                        |<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Candidate_ViewPersonalInformation.aspx">View Personal Information</asp:HyperLink>
                        |<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Candidate_Qualification.aspx">Add /Edit Qualifications</asp:HyperLink>
                        |<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Candidate_ApplyNow.aspx">Apply Now</asp:HyperLink>
                        |<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Candidate_MeritList.aspx">Merit List</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
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
                    <td>&nbsp;</td>
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
