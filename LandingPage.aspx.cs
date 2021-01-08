using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//biblioteci necesare pentru lucru cu firebase.
using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using System.Data;
using System.IO;
using System.Threading;

namespace Cars_Selling
{
    public partial class LandingPage : System.Web.UI.Page
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

        protected async void Page_Load(object sender, EventArgs e)
        {
            client = new FireSharp.FirebaseClient(config);

            if (client != null)
                connectionLbl.Text = "Connection succesfully";
            else
                connectionLbl.Text = " Connection failed! Try again.";

            FirebaseResponse rasp = await client.GetTaskAsync("NumarMasini/");
            Counter get = rasp.ResultAs<Counter>();
            int idNumber = Convert.ToInt32(get.Cnt);
            idNumber = idNumber + 1;
            idBox.Text = idNumber.ToString();
        }

        protected async void addButton_Click(object sender, EventArgs e)
        { 
            if(idBox.Text != string.Empty)
            {
                if(marcaBox.Text != string.Empty)
                {
                    if(modelBox.Text != string.Empty)
                    {
                        if(anBox.Text != string.Empty)
                        {
                            if (motorizareBox.Text != string.Empty)
                            {
                                if (combustibilBox.Text != string.Empty)
                                {
                                    var data = new Data
                                    {
                                        id = idBox.Text,
                                        marca = marcaBox.Text,
                                        model = modelBox.Text,
                                        an = anBox.Text,
                                        motorizare = motorizareBox.Text,
                                        combustibil = combustibilBox.Text
                                    };
                                    SetResponse response = await client.SetTaskAsync("DateMasini/" + idBox.Text, data);
                                    Data result = response.ResultAs<Data>();
                                    statusLbl.Text = "Datele masinii au fost adaugate cu succes. ID: " + result.id;


                                    String idCount = idBox.Text;

                                    var obj = new Counter
                                    {
                                        Cnt = Convert.ToInt32(idCount)
                                    };
                                    SetResponse response1 = await client.SetTaskAsync("NumarMasini/", obj);

                                    idBox.Text = string.Empty;
                                    int idNumber = Convert.ToInt32(idCount) + 1;

                                    idCount = Convert.ToString(idNumber);
                                    idBox.Text = idCount;



                                    marcaBox.Text = string.Empty;
                                    modelBox.Text = string.Empty;
                                    anBox.Text = string.Empty;
                                    motorizareBox.Text = string.Empty;
                                    combustibilBox.Text = string.Empty;
                                }
                                else
                                {
                                    statusLbl.Text = "Va rog introduceti combustibilul utilizat de masinii";
                                }
                            }
                            else
                            {
                                statusLbl.Text = "Va rog introduceti motorizarea masinii";
                            }
                        }
                        else
                        {
                            statusLbl.Text = "Va rog introduceti anul de fabricatie al masinii";
                        }
                    }
                    else
                    {
                        statusLbl.Text = "Va rog introduceti modelul masinii";
                    }
                }
                else
                {
                    statusLbl.Text = "Va rog introduceti marca masinii";
                }
            }
            else
            {
                statusLbl.Text = "Va rog introduceti ID-ul masinii";
            }
           


        }

        protected  void InSpreCautareBtn_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("~/SearchCarPage.aspx", false);
            }
            catch(ThreadAbortException ex)
            {
                connectionLbl.Text = "Nu s-a putut face trecerea la pagina de cautare!";
            }
            
        }

        protected void exitBtn_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("~/LoginPage.aspx", false);
            }
            catch
            {
                connectionLbl.Text = "Deconectare esuata!";
            }

        }

        protected async void UpdateBtn_Click(object sender, EventArgs e)
        {
            var data = new Data
            {
                id = idBox.Text,
                marca = marcaBox.Text,
                model = modelBox.Text,
                an = anBox.Text,
                motorizare = motorizareBox.Text,
                combustibil = combustibilBox.Text
            };

            FirebaseResponse response = await client.UpdateTaskAsync("DateMasini/" + idBox.Text, data);
            Data result = response.ResultAs<Data>();

            statusLbl.Text = "Datele masinii au fost actualizate";

        }

        protected async void deleteBtn_Click(object sender, EventArgs e)
        {
            FirebaseResponse response = await client.DeleteTaskAsync("DateMasini/" + idBox.Text);
            statusLbl.Text = "Datele masinii cu ID-ul " + idBox.Text + " au fost sterse";
        }

        protected void FeedbackBtn_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("~/FeedbackPage.aspx", false);
            }
            catch
            {
                connectionLbl.Text = "Redirectionare esuata. Va rugam reincercati";
            }
        }
    }
}