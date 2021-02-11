using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormTuto
{
    public partial class Demo : System.Web.UI.Page
    {

        SqlConnection cnn;

        protected void Page_Load(object sender, EventArgs e)
        {
            string connetionString;

            connetionString = @"Server=localhost\SQLEXPRESS;Trusted_Connection=True;Database=mydbtuto ;User ID=demo_user;Password=Password123";
            //connetionString = @"Server=tcp:myservertuto.database.windows.net,1433;Initial Catalog=mydbtuto;Persist Security Info=False;User ID=myadmin;Password=Admin123;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";

            cnn = new SqlConnection(connetionString);

            cnn.Open();

            //Response.Write("Connection Réussie");
            //cnn.Close();


            
            cnn.Close();

        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Session["Name"] = txtName.Text;

            cnn.Open();

            SqlCommand command;
            SqlDataReader dataReader;
            String sql, Output = " ";
            sql = "Select TutorialID,TutorialName from demotb";

            command = new SqlCommand(sql, cnn);

            dataReader = command.ExecuteReader();
            while (dataReader.Read())
            {
                Output = Output + dataReader.GetValue(0) + "-" + dataReader.GetValue(1) + "</br>";
            }

            Response.Write(Output);
            dataReader.Close();
            command.Dispose();

            cnn.Close();

            lblName.Visible = false;
            txtName.Visible = false;
            lstLocation.Visible = false;
            chkC.Visible = false;
            chkASP.Visible = false;
            rdMale.Visible = false;
            rdFemale.Visible = false;
            btnSubmit.Visible = false;
        }
    }
}