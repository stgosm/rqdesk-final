using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;

namespace rqdesk_final
{
    public partial class requirements : System.Web.UI.Page
    {
        StringBuilder card = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection("Data Source=DESKTOP-HN31V00;Initial Catalog = rqdesk;Trusted_Connection=true;"))
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM requirements", cn);
                cn.Open();

                SqlDataReader dr = cmd.ExecuteReader();

                Response.Write("<script type='text/javascript'>alert('Datos no Encontrados')</script>");

                card.Append("<table border='1'>");
                card.Append("<tr><th>Name</th><th>Description</th><th>Name</th><th>Description</th><th>Name</th><th>Description</th>");
                card.Append("</tr>");

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        card.Append("<tr>");
                        card.Append("<td>" + dr[0] + "</td>");
                        card.Append("<td>" + dr[1] + "</td>");
                        card.Append("<td>" + dr[2] + "</td>");
                        card.Append("<td>" + dr[3] + "</td>");
                        card.Append("<td>" + dr[4] + "</td>");
                        card.Append("<td>" + dr[5] + "</td>");
                        card.Append("</tr>");
                    }
                }

                else
                {
                    Response.Write("<script type='text/javascript'>alert('Datos no Encontrados')</script>");
                }

                card.Append("</table>");
                PlaceHolder1.Controls.Add(new Literal { Text = card.ToString() });  

                cn.Close();
            }

        }
    }
}