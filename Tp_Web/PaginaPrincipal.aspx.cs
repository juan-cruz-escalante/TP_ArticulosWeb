using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;
using System.Collections;

namespace Tp_Web
{
    public partial class PaginaPrincipal : System.Web.UI.Page
    {
        public List<Articulos> listaArticulos { get;set;}
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticulosNegocio negocio = new ArticulosNegocio();
            listaArticulos = negocio.listarConSP();

            Session.Add("listadoArticulos", listaArticulos);

        }
    }
}