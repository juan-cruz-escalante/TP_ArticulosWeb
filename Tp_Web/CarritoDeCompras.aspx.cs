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
    public partial class CarritoDeCompras : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["id"]))
            {
                int id = int.Parse(Request.QueryString["id"]);

                List<Articulos> carrito = (List<Articulos>)Session["carrito"] ?? new List<Articulos>();

                List<Articulos> listaArticulos = (List<Articulos>)Session["listadoArticulos"];

                Articulos seleccionado = listaArticulos.Find(x => x.IdArticulo == id);

                carrito.Add(seleccionado);
                Session["carrito"] = carrito;
                dgvCarrito.DataSource = carrito;
                dgvCarrito.DataBind();
            }
            else
            {
                lblMensaje.Text = "El carrito está vacío.";
            }
        }
    }
}