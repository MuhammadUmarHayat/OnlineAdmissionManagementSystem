using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Candidate_ApplyNow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["cnic"] != null)
        {
            string userid = Session["cnic"].ToString();
            Label1.Text = userid;
            validateCandidate( userid);

        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       



    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        //Candidate_Preferences(cnic,preference1,preference2,preference3,date)
        string query = "insert into Candidate_Preferences(cnic,preference1,preference2,prefrence3,date,Qouta1,Qouta2,Qouta3) VALUES ('" + Label1.Text + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + DropDownList3.Text + "','" + DateTime.Now + "','" + DropDownList4.Text + "','" + DropDownList5.Text + "','" + DropDownList6.Text + "')";
        SqlConnection connection = new SqlConnection(DBClass.connectionString);
        //Connection String  

        //Open The Connection  
        connection.Open();
        SqlCommand cmd = new SqlCommand(query, connection);
        cmd.ExecuteNonQuery();
        connection.Close();
        Label2.Text = "You have Applied Successfully. Now wait for Merit List";


    }



private void validateCandidate(string userid)
    {



        string query = "select * from Candidate_Preferences where cnic='" + userid + "' ";

        SqlConnection con = new SqlConnection(DBClass.connectionString);
        //Open database connection to connect to SQL Server
        con.Open();
        //Data table is used to bind the resultant data
        DataTable dt = new DataTable();
        // Create a new data adapter based on the specified query.
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        //SQl command builder is used to get data from database based on query
        SqlCommandBuilder cmd = new SqlCommandBuilder(da);
        //Fill data table
        da.Fill(dt);
        con.Close();
        
       if (dt.Rows.Count > 0)
        {
            Label2.Text = "You have already applied. Wait for Merit List now and our mail";
            ImageButton1.Visible = false;
        }







        }

    }