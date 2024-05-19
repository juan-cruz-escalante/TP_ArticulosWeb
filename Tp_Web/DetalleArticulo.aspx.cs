using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace Tp_Web
{
    public partial class DetalleArticulo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int ID = int.Parse(Request.QueryString["ID"]);
            List<Articulos> listado = (List<Articulos>)Session["listadoArticulos"]; 
            Articulos seleccionado = listado.Find(x => x.IdArticulo == ID);

            lblCodigo.Text = "Codigo: " + seleccionado.Codigo;
            lblNombre.Text = seleccionado.Nombre;
            lblDescripcion.Text = "Descripción: " + seleccionado.Descripcion;
            lblMarcas.Text = "Marca: " + seleccionado.Marcas.DescripcionMarca;
            lblCategoria.Text = "Categoría: " + seleccionado.Categoria.DescripcionCategoria;
            lblPrecio.Text = "Precio: $" + seleccionado.Precio;

        }
    }
}