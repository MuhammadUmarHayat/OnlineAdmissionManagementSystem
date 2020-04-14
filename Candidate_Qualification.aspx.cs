using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Candidate_Qualification : System.Web.UI.Page
{
  

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["cnic"] != null)
        {
            string userid = Session["cnic"].ToString();
            Label1.Text = userid;
            ViewState["cnic"] = userid;

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string userid = ViewState["cnic"].ToString();                                                                                                                                                        //Candidate_Qualification(CNIC,Degree_title,Board,TotalMarks,MarksObtained,Percentage,Specialization,Status,Level,PassingYear)
        string query = "insert into Candidate_Qualification(CNIC,Degree_title,Board,TotalMarks,MarksObtained,Percentage,Specialization,Status,Level,PassingYear) VALUES ('" + userid + "','" + txtTitle.Text + "','" + txtBoard.Text + "','" + txtTM.Text+ "','" +txtMO.Text  + "','" +txtPercentage.Text  + "','" +rblSpecialization.Text +"','" + rblStatus.Text+"','" +rblLeve.Text +"','" + txtYear.Text+"')";
        SqlConnection connection = new SqlConnection(DBClass.connectionString);
        //Connection String  

        //Open The Connection  
        connection.Open();
        SqlCommand cmd = new SqlCommand(query, connection);
        cmd.ExecuteNonQuery();
        connection.Close();
        Label2.Text = "Data is saved";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Candidate_Qualification.aspx");
    }
}