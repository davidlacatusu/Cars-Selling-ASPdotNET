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
    public partial class LoginPage : System.Web.UI.Page
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
                connectionStateLb.Text = "Connection succesfully";
            else
                connectionStateLb.Text = " Connection failed! Try again.";

        }

        protected void registerBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RegisterPage.aspx");
        }

       

        protected async void conectareBtn_Click(object sender, EventArgs e)
        {
            try
            {
                var loginData = new UserData
                {

                };
                FirebaseResponse response = await client.GetTaskAsync("UsersData/" + numeUtilizatorTb.Text);
                UserData resUser = response.ResultAs<UserData>(); // database user

                UserData curUser = new UserData()
                {
                    numePersonal = numeUtilizatorTb.Text.Trim(),
                    parola = parolaTb.Text.Trim()
                };

                // if(resUser.numePersonal.ToString().Trim().Equals(curUser.numePersonal.ToString().Trim()))
                if (resUser.numePersonal != curUser.numeUtilizator)
                {
                    loginStateLb.Text = "Nume de utilizator gresit!"; // + resUser.numePersonal + " " + curUser.numePersonal;

                }
                else if (resUser.parola.ToString().Trim() != curUser.parola.ToString().Trim())
                {
                    loginStateLb.Text = "Parola incorecta!" ; // +resUser.parola + " " + curUser.parola
                }
                else
                {
                    loginStateLb.Text = "V-ati conectat cu succes!";
                    Response.Redirect("~/LandingPage.aspx");
                }
            }
            catch
            {
                loginStateLb.Text = "Nume sau parola invalide!";
            }
        }
    }
}