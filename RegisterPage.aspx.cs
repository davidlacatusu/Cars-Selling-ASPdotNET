using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using System.Data;
using System.IO;

namespace Cars_Selling
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        //pt afisare in GridView a datelor
        DataTable datatable = new DataTable();
        //conectarea la baza de date
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
                connectionStatuslbl.Text = "Connection succesfully";
            else
                connectionStatuslbl.Text = " Connection failed! Try again.";
        }

        protected void  Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LoginPage.aspx");
        }

        protected async void inregistrareBtn_Click(object sender, EventArgs e)
        {
            try
            {
                var userData = new UserData
                {
                    numeUtilizator = numeUtilizatorTb.Text,
                    parola = parolaTb.Text,
                    nrTelefon = nrTelefonTb.Text
                };
                SetResponse response = await client.SetTaskAsync("UsersData/" + numePersonalTb.Text, userData);
                UserData result = response.ResultAs<UserData>();

                statusLbl.Text = "Ati fost inregistrat cu succes cu numele de utilizator: " + result.numeUtilizator;

                numePersonalTb.Text = string.Empty;
                numeUtilizatorTb.Text = string.Empty;
                parolaTb.Text = string.Empty;
                nrTelefonTb.Text = string.Empty;

                Response.Redirect("~/LoginPage.aspx");
            }
            catch
            {
                statusLbl.Text = "Inregistrare esuata. Incercati mai tarziu";

            }
        }
    }
}