using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string userid = TextBox1.Text;
        string pw = TextBox2.Text;
        string query = "select * from Candidate_Personal_Information where cnic='" + userid + "' and password='" + pw + "'";

        SqlConnection con = new SqlConnection(DBClass.connectionString);
        //Open database connection to connect to SQL Server
        con.Open();
        //Data table is used to bind the resultant data
        DataTable dtusers = new DataTable();
        // Create a new data adapter based on the specified query.
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        //SQl command builder is used to get data from database based on query
        SqlCommandBuilder cmd = new SqlCommandBuilder(da);
        //Fill data table
        da.Fill(dtusers);
        con.Close();
        if (userid.Equals("admin") && pw.Equals("admin"))
        {
            Response.Redirect("AdminPannel.aspx");
        }
        //ComplaintIncharge
        else if (dtusers.Rows.Count > 0)
        {
           
                Session["cnic"] = userid;
                Response.Redirect("Candidate_Home.aspx");

           

        }
        else
        {

            Label1.Text = "CNIC and/or Password is wrong";

        }
    }
}