using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace rqdesk_final
{
    public partial class Registro_Usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegistrar_Click(object sender, EventArgs e)
        {

            string us = txtUsuarioRegistro.Text;
            string pw = txtContraseñaRegistro.Text;
            string privi = SelectPriv.Value;

            using (SqlConnection cn = new SqlConnection("Data Source=TRABAJO2;Initial Catalog=RQ_final;Integrated Security=True "))
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand("insert into usuario (usuario, contrasena,privilegio) values ('" + txtUsuarioRegistro.Text + "', '"+ Encriptar.GETSHA256(txtContraseñaRegistro.Text)+"','"+SelectPriv.Value+"')",cn);
                cmd.ExecuteNonQuery();
          

                



            }
        }
    }
}