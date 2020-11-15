using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace rqdesk_final
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string us = txtUsuario.Text;
            string pw = txtContraseña.Text;

            using (SqlConnection cn = new SqlConnection("Data Source=TRABAJO2;Initial Catalog=RQ_final;Integrated Security=True "))
            {
                SqlCommand cmd = new SqlCommand("select usuario, contrasena FROM usuario WHERE usuario ='" + us + "' AND contrasena = '" + Encriptar.GETSHA256(pw) + "'", cn);
                cn.Open();

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    Session["id"] = txtUsuario.Text;
                    Response.Redirect("escritorio.aspx");
                    cn.Close();
                }

                else
                {
                    Response.Write("<script type='text/javascript'>alert('Datos no Encontrados')</script>");
                }
            }
        }
    }
}