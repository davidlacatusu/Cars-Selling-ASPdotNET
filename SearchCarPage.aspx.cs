using FireSharp.Config;
using FireSharp.Interfaces;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using FireSharp.Response;

namespace Cars_Selling
{
    public partial class SearchCarPage : System.Web.UI.Page
    {
       
        DataTable datatable = new DataTable();
        
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "EDgydR64lN5Tzm2UJc79XcOpY6k5YpwEFRpwI9pp",
            BasePath = "https://cars-16258.firebaseio.com/"
        };

        IFirebaseClient client;

        protected void Page_Load(object sender, EventArgs e)
        {
            client = new FireSharp.FirebaseClient(config);

            if (client != null)
                connectionStatusLb.Text = "Connection succesfully";
            else
                connectionStatusLb.Text = " Connection failed! Try again.";


            datatable.Columns.Add("Id");
            datatable.Columns.Add("An");
            datatable.Columns.Add("Combustibil");
            datatable.Columns.Add("Marca");
            datatable.Columns.Add("Model");
            datatable.Columns.Add("Motorizare");

            GridView1.Visible = true;
            GridView1.DataSource = datatable;
            GridView1.DataBind();
        }

        protected async void searchBtn_Click(object sender, EventArgs e)
        {
            FirebaseResponse resp = await client.GetTaskAsync("DateMasini/");
            datatable.Rows.Clear();
            int i = 0;

            FirebaseResponse response1 = await client.GetTaskAsync("NumarMasini/");

            if(response1.Body != "null")
            {
                Counter obj = response1.ResultAs<Counter>();

                int cnt = Convert.ToInt32(obj.Cnt);

                while (true)
                {
                    if (i == cnt)
                        break;
                    i++;

                    try
                    {
                        FirebaseResponse response2 = await client.GetTaskAsync("DateMasini/" + i);
                        Data obj1 = response2.ResultAs<Data>();

                        DataRow row = datatable.NewRow();

                        if ( obj1.marca.Equals(numeModelMasinaTb.Text)){

                        row["Id"] = obj1.id;
                        row["An"] = obj1.an;
                        row["Combustibil"] = obj1.combustibil;
                        row["Marca"] = obj1.marca;
                        row["Model"] = obj1.model;
                        row["Motorizare"] = obj1.motorizare;

                        datatable.Rows.Add(row);
                        GridView1.DataBind();
                    }
                    }
                    catch(Exception ex)
                    {
                        connectionStatusLb.Text = " Eroare la afisarea datelor in DataGridView";
                    }
                }
                connectionStatusLb.Text = "Datele au fost afisate in tabel";
            }
            else
            {
                connectionStatusLb.Text = "Nu exista elemente in baza de date";
            }

          
        }

        protected void CancelBtn_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/LandingPage.aspx");
        }
    }
}