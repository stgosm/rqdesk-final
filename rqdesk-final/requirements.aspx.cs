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
                if (dr.HasRows)
                {
                    card.Append("<div class='card-columns'>");
                    while (dr.Read())
                    {
                        card.Append("<div class='card border-dark'>");
                        card.Append("<div class='card-header'>" + dr[3] + "<asp:Button ID='" + dr[0] + "' Text='Editar' runat='server' OnClick='btnEditar_Click' class='btn btn-outline-secondary btn-sm open-modal-edit' data-toggle='modal' type='button' data-target='#modalRQ' >Editar</asp:Button></div>");
                        card.Append("<div class='card-body'>");
                        card.Append("<h5 class='card-title'>" + dr[1] + "</h5>");
                        card.Append("<p class='card-text'>" + dr[2] + "</p>");
                        card.Append("</div>");
                        card.Append("<div class='card-footer'>");
                        card.Append("<small class='text-muted'>" + dr[4] + "</small>");
                        card.Append("<small class='text-muted'>" + dr[5] + "</small>");
                        card.Append("</div></div>");
                    }
                    card.Append("</div>");
                }
                else
                {
                    card.Append("<div class='alert alert-light alert-responsive' role='alert'>Ups! Parece que no hay requerimientos, puedes añadir uno <a href='#' class='alert-link'>aquí</a>.</div>");
                }
                PlaceHolder1.Controls.Add(new Literal { Text = card.ToString() });
                cn.Close();


            }
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            btn.ID = btn.ID;
            Response.Write("<script>alert(" + btn.ID + ");</script>");
        }
    }
}