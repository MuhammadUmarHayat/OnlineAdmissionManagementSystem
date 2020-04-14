using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Candidate_ViewPersonalInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["cnic"] != null)
        {
            string userid = Session["cnic"].ToString();
            Label1.Text = userid;


        }
    }
}