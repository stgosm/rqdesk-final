using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace rqdesk_final
{
    public class Editar
    {
        public void Buscar(int x)
        {
            using (RQ_finalEntities oBusca = new RQ_finalEntities())
            {
                IQueryable<usuario> obusca = from q in oBusca.usuario
                                             where q.id == x
                                             select q;
                List<usuario> listBuscar = obusca.ToList();
                var oColocarTexto = listBuscar[0];

            }
        }
    }
}