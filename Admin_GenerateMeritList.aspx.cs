using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_GenerateMeritList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        generatConsolidatedReport();



    }
    
    private  DataTable getPendingCandidate()
    {

        string query = "Select  *  from Candidate_Preferences where Status='pending' ";

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

        return dt;

    }



    private void getLevel(string cnic)
    {





        string query = "Select  * from StudyProgram where Title in (Select preference1 from Candidate_Preferences where Status='pending' and cnic='"+cnic+"')";

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

        string level = "";


        if (dt.Rows.Count > 0)
        {

            level = dt.Rows[0]["level"].ToString();





        }
        else {

            level = "";


        }



        string lastDegreeLevel = "";


        if (level.Equals("Masters"))
        {

            lastDegreeLevel = "Master";

        }
        if (level.Equals("Master"))
        {

            lastDegreeLevel = "Bachelor";

        }

        if (level.Equals("Bachelor"))
        {

            lastDegreeLevel = "Intermediate";

        }


        getPercentage( cnic, lastDegreeLevel);






        // return level;
    }


    private void getPercentage(string cnic,string level)
    {
        string query = "select * from Candidate_Qualification where level='"+ level + "' and cnic='"+cnic+"'";

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
        string p = "0";
        if (dt.Rows.Count > 0)
        {

            p = dt.Rows[0]["Percentage"].ToString();





        }


        double percentage = Convert.ToDouble(p);
        double deduction = 0;
        if (percentage<45)
        {


            deduction = -5;
        }
        else
        {

            deduction = 0;

        }


        string avg= getAverage( cnic);


        double Average = Convert.ToDouble(avg) - deduction;

        // save cninc and average to get merit

        SaveAvg(cnic, Average.ToString());



    }

    private void SaveAvg(string cnic,string avg)
    {
        string query = "insert into Candidate_Average(cnic,Candidate_Total_Average) VALUES ('" + cnic + "','" + avg +  "')";
        SqlConnection connection = new SqlConnection(DBClass.connectionString);
        //Connection String  

        //Open The Connection  
        connection.Open();
        SqlCommand cmd = new SqlCommand(query, connection);
        cmd.ExecuteNonQuery();
        connection.Close();
        UpdateCandidateStatus(cnic);
        Response.Write("Merit list is updated with new candidates");



    }


    private void UpdateCandidateStatus(string cnic)
    {
        //stus ok mean merit list of this candidate is completed

        string query = "update Candidate_Preferences set status='ok' where cnic='"+cnic+"'";
        SqlConnection connection = new SqlConnection(DBClass.connectionString);
        //Connection String  

        //Open The Connection  
        connection.Open();
        SqlCommand cmd = new SqlCommand(query, connection);
        cmd.ExecuteNonQuery();
        connection.Close();




    }







    private string getAverage(string cnic)
    {

        //  select AVG(Percentage) from Candidate_Qualification where cnic = 'b'


        string query = "select AVG(Percentage) from Candidate_Qualification where cnic='" + cnic + "'";

        SqlConnection con = new SqlConnection(DBClass.connectionString);
        //Open database connection to connect to SQL Server
        con.Open();
        //Data table is used to bind the resultant data
       

        SqlCommand cmd = new SqlCommand(query,con);


       string avg= cmd.ExecuteScalar().ToString();//  cmd.ExecuteScalar() function is used to get a single value from the database

        return avg;



    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt1 = new DataTable();
        dt1=getPendingCandidate();

        DataTable dt2 = new DataTable();

        
        if (dt1.Rows.Count>0)
        {

            string cnic = dt1.Rows[0]["cnic"].ToString();

            getLevel(cnic);



        }





    }



    private void generatConsolidatedReport()
    {

        string query = "select distinct p.cnic, p.preference1,a.Candidate_Total_Average,d.TotalSeats   from Candidate_Preferences p,Candidate_Average a,Degree_Seats d   order by a.Candidate_Total_Average ASC  ; ";

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

        GridView1.DataSource = dt;
        GridView1.DataBind();

    }





}