using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_QoutaManagement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
                                                                                                                     //Qouta(title,DegreeProgram,Percentage,Semester) 
        string query = "insert into Qouta(title,DegreeProgram,Percentage,Semester) VALUES ('" + txtQouta.Text + "','" + DropDownList1.Text + "','" + txtSeats.Text + "','" + txtSemster.Text + "')";
        SqlConnection connection = new SqlConnection(DBClass.connectionString);
        //Connection String  

        //Open The Connection  
        connection.Open();
        SqlCommand cmd = new SqlCommand(query, connection);
        cmd.ExecuteNonQuery();
        connection.Close();
        Label1.Text = "Data is saved";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_QoutaManagement.aspx");
    }
}