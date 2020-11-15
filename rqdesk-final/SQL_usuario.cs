using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace rqdesk_final
{
    public class SQL_usuario
    {
        RQ_finalEntities modelo = new RQ_finalEntities();
        public List<usuario> GetLocales
        {
            get
            {
                return modelo.usuario.ToList();
            }
        }
    }
}