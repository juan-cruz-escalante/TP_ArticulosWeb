using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace Tp_Web
{
    public partial class AgregarArticulo : System.Web.UI.Page
    {
        public List<Articulos> listaArticulos { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ddlMarca.Items.Add("Samsung");
            ddlMarca.Items.Add("Apple");
            ddlMarca.Items.Add("Sony");
            ddlMarca.Items.Add("Huawei");
            ddlMarca.Items.Add("Motorola");

            ddlCategoria.Items.Add("Celulares");
            ddlCategoria.Items.Add("Televisores");
            ddlCategoria.Items.Add("Media");
            ddlCategoria.Items.Add("Audio");
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Articulos a = new Articulos();
            a.IdArticulo = int.Parse(txtID.Text);
            a.Codigo = txtCodigo.Text;
            a.Nombre = txtNombre.Text;
            a.Descripcion = txtDescripcion.Text;
            a.Marcas = new Marcas();
            a.Marcas.DescripcionMarca = ddlMarca.SelectedValue;
            a.Categoria = new Categoria();
            a.Categoria.DescripcionCategoria = ddlCategoria.SelectedValue;
            a.Precio = float.Parse(txtPrecio.Text);

            ((List<Articulos>)Session["listadoArticulos"]).Add(a);

            Response.Redirect("ListadoArticulos.aspx");
        }
    }
}