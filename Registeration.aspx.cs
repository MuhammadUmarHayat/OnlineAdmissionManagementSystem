using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registeration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(FileUpload1.FileName));
        string link = "images/" + Path.GetFileName(FileUpload1.FileName);


                                                                                                                                                                                            //Candidate_Personal_Information (name,FatherName,CNIC,Password,Email,Gender,PostalAddress,image,Province,mobile)
        string query = "insert into Candidate_Personal_Information (name,FatherName,CNIC,Password,Email,Gender,PostalAddress,image,Province,mobile) VALUES ('" + txtName.Text + "','" + txtFName.Text + "','" + txtCNIC.Text + "','" + txtPw.Text + "','" + txtEmail.Text+ "','" + DropDownList1.Text + "','" + txtAddress.Text+ "','" + link + "','" + RadioButtonList1.Text + "','"  + txtMob.Text + "')";
        SqlConnection connection = new SqlConnection(DBClass.connectionString);
        //Connection String  

        //Open The Connection  
        connection.Open();
        SqlCommand cmd = new SqlCommand(query, connection);
        cmd.ExecuteNonQuery();
        connection.Close();
        Label1.Text = "You are  registered";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registeration.aspx");
    }
}