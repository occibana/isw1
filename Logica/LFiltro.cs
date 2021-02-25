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
        public void filtro_general_inicial()
        {
            UFiltro consulta = new UFiltro();
            consulta.nombrehotel = null;
            new DAOhotel().hotelesregistrados(consulta);
        }

        public string filtro_general(UFiltro busqueda)
        {
            if (busqueda.nombrehotel == null || busqueda.nombrehotel== String.Empty)
            {
                return null;
                //busqueda.nombrehotel = null;
            }
            else
            {
                
                return (busqueda.nombrehotel).ToUpper();
                //busqueda.nombrehotel = (TB_Busquedageneral.Text).ToUpper();
            }
        }
    }
}
