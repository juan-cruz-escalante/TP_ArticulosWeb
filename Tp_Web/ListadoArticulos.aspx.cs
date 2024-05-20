using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;

namespace Tp_Web
{
    public partial class ListadoArticulos : System.Web.UI.Page
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
            dgvArticulos.DataSource = Session["listadoArticulos"] ;
            dgvArticulos.DataBind();
        }

        protected void dgvArticulos_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = dgvArticulos.SelectedDataKey.Value.ToString();
            Response.Redirect("CarritoDeCompras.aspx?id=" + id);
        }
    }
}