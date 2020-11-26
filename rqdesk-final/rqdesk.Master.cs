using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Newtonsoft.Json;
using System.IO;

namespace rqdesk_final
{
    public partial class rqdesk : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*string thisURL = Request.Url.Segments[Request.Url.Segments.Length - 1];
            Console.WriteLine(thisURL);
            switch (thisURL)
            {

                case "home.aspx":
                    {
                        tabRequirements.Attributes.Remove("active");
                        tabHome.Attributes.Add("class", "active");
                        break;
                    }

                case "requirements.aspx":
                    {
                        tabHome.Attributes.Remove("active");
                        tabRequirements.Attributes.Add("class", "active");
                        break;
                    }

                case "Default":
                    {
                        break;
                    }
            }*/
        }

        static readonly string rootFolder = @"C:\Users\santi\source\repos\rqdesk-final\rqdesk-final\json\";
        protected void btnObtenerJson_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection("Data Source=DESKTOP-HN31V00;Initial Catalog = rqdesk;Trusted_Connection=true;"))
            {
                string jsonFile = "requirements.json";
                cn.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM requirements FOR JSON AUTO", cn);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    if (File.Exists(Path.Combine(rootFolder, jsonFile)))
                    {
                        File.Delete(Path.Combine(rootFolder, jsonFile));
                        File.WriteAllText(@"C:\Users\santi\source\repos\rqdesk-final\rqdesk-final\json\requirements.json", dr.GetValue(0).ToString());
                    }
                    else {
                        File.WriteAllText(@"C:\Users\santi\source\repos\rqdesk-final\rqdesk-final\json\requirements.json", dr.GetValue(0).ToString());
                    }
                    
                }
                cn.Close();
            };
        }
    }
}