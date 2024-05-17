<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PaginaPrincipal.aspx.cs" Inherits="Tp_Web.PaginaPrincipal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row row-cols-1 row-cols-md-3 g-4">
        <%
            foreach(Dominio.Articulos art in listaArticulos)
            {
        %>
                <div class="col">
                    <div class="card">
                        <img src="<%:art.UrlImagen %>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%:art.Nombre%></h5>
                            <p class="card-text"><%:art.Descripcion%></p>
                            <a class="btn btn-default" href="DetalleArticulo.aspx?id= <%:art.IdArticulo%>"> Ver detalle </a>
                        </div>
                    </div>
                </div>
        <%  }   %>

    </div>
</asp:Content>
