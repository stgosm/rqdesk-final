using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace rqdesk_final
{
    public partial class Historial_Usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            using (SqlConnection cn = new SqlConnection("Data Source=TRABAJO2;Initial Catalog=RQ_final;Integrated Security=True "))
            {

                string usu = usuario.InnerText;
                string contra = contraseña.InnerText;
                string privi = privilegio.InnerText;
                SqlCommand cmd = new SqlCommand("select * from usuario", cn);
                cn.Open();

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        usu = dr[1].ToString();
                    }
                }
                
            }

        }
    }
}