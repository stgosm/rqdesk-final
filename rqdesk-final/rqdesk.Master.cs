using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace rqdesk_final
{
    public partial class rqdesk : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string thisURL = Request.Url.Segments[Request.Url.Segments.Length - 1];
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
            }
        }
    }
}