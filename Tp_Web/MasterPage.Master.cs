using Dominio;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tp_Web
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        public List<Articulos> listaArticulos { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["listadoArticulos"] == null)
            {
                ArticulosNegocio negocio = new ArticulosNegocio();
                listaArticulos = negocio.listarConSP();
                Session.Add("listadoArticulos", listaArticulos);
            }
            dgvArticulos.DataSource = Session["listadoArticulos"];
            dgvArticulos.DataBind();
        }
    }
}