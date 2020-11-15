using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace rqdesk_final
{
    public class consulta
    {
        RQ_finalEntities rqdesk1 = new RQ_finalEntities();
        public List<usuario> getusuario
        {
            get
            {
                return rqdesk1.usuario.ToList();
            }
        }
    }
}