using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Utilitarios;
using Data;

namespace Logica
{
    public class LFiltro
    {
        public string filtro_general(UFiltro busqueda)
        {
            if (busqueda.nombrehotel == null)
            {
                return null;
                //busqueda.nombrehotel = null;
            }
            else
            {
                
                return busqueda.nombrehotel;
                //busqueda.nombrehotel = (TB_Busquedageneral.Text).ToUpper();
            }
        }
    }
}
