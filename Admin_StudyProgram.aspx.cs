using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_StudyProgram : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_StudyProgram.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string status = "ok";
                                                                                                                                                                                                                                                                                         //StudyProgram(Title,Details,EligibilityCriteria,Education,Duration,Level,CreditHours,Status,department,Specialization)
        string query = "insert into StudyProgram(Title,Details,EligibilityCriteria,Education,Duration,Level,CreditHours,Status,department,Specialization) VALUES ('" + txtProgram.Text + "','" + txtDetails.Text + "','" + txtCriteria.Text + "','" + txtEducation.Text + "','" + txtDuration.Text + "','" + txtLevel.Text + "','" + txtCHr.Text + "','" + status + "','" + txtDepartment.Text + "','" + RadioButtonList1.Text + "')";
        SqlConnection connection = new SqlConnection(DBClass.connectionString);
        //Connection String  

        //Open The Connection  
        connection.Open();
        SqlCommand cmd = new SqlCommand(query, connection);
        cmd.ExecuteNonQuery();
        connection.Close();

        Label1.Text = " Degree Program is added.";
    }
}