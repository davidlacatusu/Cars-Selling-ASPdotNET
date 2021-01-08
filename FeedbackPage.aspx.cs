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
    public partial class FeedbackPage : System.Web.UI.Page
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
                connectionStatusLbl.Text = "Connection succesfully";
            else
                connectionStatusLbl.Text = " Connection failed! Try again.";
        }

        protected async void sendFeedBackBtn_Click(object sender, EventArgs e)
        {

            if( identityTB.Text != string.Empty)
            {
                var feedback = new FeedbackData
                {
                    user = identityTB.Text,
                    raspPro = cePlacutTB.Text,
                    raspContra = ceNuPlacutTB.Text,
                    altele = alteleTB.Text
                };
                SetResponse response = await client.SetTaskAsync("Feedback/" + identityTB.Text, feedback);
                UserData result = response.ResultAs<UserData>();

                statusLbl.Text = "Va multumim!";

                identityTB.Text = string.Empty;
                cePlacutTB.Text = string.Empty;
                ceNuPlacutTB.Text = string.Empty;
                alteleTB.Text = string.Empty;
            }
            else
            {
                statusLbl.Text = "Va rugam sa ne spuneti cu cine avem onoarea!";
            }
            
        }

        protected void cancelBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LandingPage.aspx",false);
        }
    }
}