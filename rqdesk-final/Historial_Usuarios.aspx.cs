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
    public partial class Historial_Usuarios : System.Web.UI.Page
    {
        StringBuilder tabla = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {

            using (SqlConnection cn = new SqlConnection("Data Source=TRABAJO2;Initial Catalog=RQ_final;Integrated Security=True "))
            {

                SqlCommand cmd = new SqlCommand("SELECT * FROM usuario", cn);
                cn.Open();

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                  

                              
                    while (dr.Read())
                    {
                        tabla.Append("<tr>");
                        tabla.Append("< td id ='usuario' runat ='server'>"+dr[1]+"</ td >");
                        tabla.Append("</tr>");
                    }
               
                }
                else
                {
                    tabla.Append("<div class='alert alert-light alert-responsive' role='alert'>Ups! Parece que no hay requerimientos, puedes añadir uno <a href='#' class='alert-link'>aquí</a>.</div>");
                }
                PlaceHolder1.Controls.Add(new Literal { Text = tabla.ToString() });
                cn.Close();

            }

        }
    }
}