﻿using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace WebFormTuto
{
    public partial class Demo : System.Web.UI.Page
    {

        SqlConnection cnn;

        protected void Page_Load(object sender, EventArgs e)
        {
            string connetionString;

            connetionString = @"Data Source=PT-SM-A491-2\SQLEXPRESS;Trusted_Connection=True;Database=mydbtuto ;User ID=demo_user;Password=Password123";
            //connetionString = @"Server=tcp:myservertuto.database.windows.net,1433;Initial Catalog=mydbtuto;Persist Security Info=False;User ID=myadmin;Password=Admin123;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";

            cnn = new SqlConnection(connetionString);

            cnn.Open();

            //Response.Write("Connection Réussie");
            //cnn.Close();


            
            cnn.Close();

            System.Text.StringBuilder displayValues =
                new System.Text.StringBuilder();
            System.Collections.Specialized.NameValueCollection
                postedValues = Request.Form;
            String nextKey;
            for (int i = 0; i < postedValues.AllKeys.Length - 1; i++)
            {
                nextKey = postedValues.AllKeys[i];
                if (nextKey.Substring(0, 2) != "__")
                {
                    displayValues.Append("<br>");
                    displayValues.Append(nextKey);
                    displayValues.Append(" = ");
                    displayValues.Append(postedValues[i]);
                }
            }
            Label1.Text = displayValues.ToString();


        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Session["Name"] = txtName.Text;

            cnn.Open();

            SqlCommand command;
            SqlDataReader dataReader;
            String sql, Output = " ";
            sql = "Select TutorialID,TutorialName from demotb order by len([TutorialID]), [TutorialID]";

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

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //cnn.Open();

            //SqlCommand command;
            //SqlDataAdapter adapter = new SqlDataAdapter(); 
            //String sql= "Insert into demotb(TutorialID,TutorialName) values (" + txtId.Text + ",  "+ "'" + txtName.Text + "'" + ")";

            //command = new SqlCommand(sql, cnn);

            //adapter.InsertCommand = command;
            //adapter.InsertCommand.ExecuteNonQuery();

            //command.Dispose();

            //cnn.Close();


            //btnSubmit_Click(sender, e);

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            cnn.Open();

            SqlCommand command;
            SqlDataAdapter adapter = new SqlDataAdapter();
            String sql = "Update demotb set TutorialName = '" + "VB.Net Complete" + "' where TutorialID = 3";

            command = new SqlCommand(sql, cnn);

            adapter.InsertCommand = command;
            adapter.InsertCommand.ExecuteNonQuery();

            command.Dispose();

            cnn.Close();

            
            btnSubmit_Click(sender, e);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            cnn.Open();

            SqlCommand command;
            SqlDataAdapter adapter = new SqlDataAdapter();
            String sql = "Delete demotb where TutorialID= '" + ListTuto.SelectedValue + "'";

            command = new SqlCommand(sql, cnn);

            adapter.InsertCommand = command;
            adapter.InsertCommand.ExecuteNonQuery();

            command.Dispose();

            cnn.Close();


            btnSubmit_Click(sender, e);
        }

        protected void moveToAnotherPage(object sender, EventArgs e)
        {
            SqlDataSource1.Update();
        }

    }
}