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
                SqlCommand cmd = new SqlCommand("SELECT * FROM requirements ORDER BY rqId ASC", cn);
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    //card.Append("<div class='card-columns'>");
                    card.Append("<div class='row row-cols-1 row-cols-md-3'>");
                    while (dr.Read())
                    {
                        card.Append("<div class='col mb-4'><div class='card border-dark'>");
                        card.Append("<div class='card-header'>" + dr[3] + "<button id=" + dr[0] + " name='ctl00$ContentPlaceHolder1$btnEditar' type='button' onclick='SaveWithParameter(" + dr[0] + ", this)' runat='server' class='btn btn-outline-secondary btn-sm open-modal-edit'>Editar</button></div>");
                        card.Append("<div class='card-body'>");
                        card.Append("<h5 class='card-title'>" + dr[1] + "</h5>");
                        card.Append("<p class='card-text'>" + dr[2] + "</p>");
                        card.Append("</div>");
                        card.Append("<div class='card-footer'>");
                        card.Append("<small class='text-muted'>" + dr[4] + "</small>");
                        card.Append("<small class='text-muted'>" + dr[5] + "</small>");
                        card.Append("</div></div></div>");
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

            string parameter = Request["__EVENTARGUMENT"];
            string target = Request["__EVENTTARGET"];
            btnEditar_Click(parameter);
        }

        protected void btnEditar_Click(string parameter)
        {
            //ScriptManager.RegisterStartupScript(this, GetType(), "Javascript", "javascript:btnEditar_Click(this);", true);
            //string res = HiddenValueEditar.Value; res.ToString()
            using (SqlConnection cn = new SqlConnection("Data Source=DESKTOP-HN31V00;Initial Catalog = rqdesk;Trusted_Connection=true;"))
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM requirements WHERE rqId='" + parameter + "'", cn);
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    lblName.Text = dr.GetValue(1).ToString();
                    txtDescription.Text = dr.GetValue(2).ToString();
                    txtArea.Text = dr.GetValue(3).ToString();
                    txtStatus.Text = dr.GetValue(4).ToString();
                    lblDate.Text = dr.GetValue(5).ToString();
                }
                cn.Close();
            };
            ScriptManager.RegisterStartupScript(UpdatePanel1, typeof(UpdatePanel), "key", "openModal();", true);

        }

        protected void btnNewRq_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection("Data Source=DESKTOP-HN31V00;Initial Catalog = rqdesk;Trusted_Connection=true;"))
            {
               cn.Open();
               SqlCommand cmd = new SqlCommand("INSERT INTO requirements(rqName, rqDescription, rqArea, rqStatus, rqFecha) VALUES('" + txtNewName.Text + "', '" + txtNewDescription.Text + "', '" + txtNewArea.Text + "', 'Pendiente', GETDATE());", cn);
               cmd.ExecuteNonQuery();
               cn.Close();
            };
            ScriptManager.RegisterStartupScript(UpdatePanel1, typeof(UpdatePanel), "key", "closeModalNewRequirement();", true);
        }

        protected void btnNewRequirement_Click(object sender, EventArgs e)
        {
           using (SqlConnection cn = new SqlConnection("Data Source=DESKTOP-HN31V00;Initial Catalog = rqdesk;Trusted_Connection=true;"))
           {
               cn.Open();
               SqlCommand cmd = new SqlCommand("INSERT INTO requirements(rqName, rqDescription, rqArea, rqStatus, rqFecha) VALUES('" + txtNewName.Text + "', '" + txtNewDescription.Text + "', '" + txtNewArea.Text + "', 'Pendiente', GETDATE());", cn);
               cmd.ExecuteNonQuery();
               cn.Close();
           };
        }
    }
}