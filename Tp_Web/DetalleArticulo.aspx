<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DetalleArticulo.aspx.cs" Inherits="Tp_Web.DetalleArticulo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <h1>Detalle</h1>
    <asp:Label Text="lala" ID="lblCodigo" runat="server" />
    <asp:Label Text="lala" ID="lblNombre" runat="server" />
    <asp:Label Text="lala" ID="lblDescripcion" runat="server" />
    <asp:Label Text="lala" ID="lblPrecio" runat="server" /> 

    <%-- 
    <div class="card" style="width: 18rem;">
        <img class="card-img-top" src="..." alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title">
                <asp:Label Text="No anda" ID="lblNombre" runat="server" />
            </h5>
            <p class="card-text">
                <asp:Label Text="lala" ID="lblDescripcion" runat="server" />
            </p>
        </div>
        <ul class="list-group list-group-flush">
            <li class="list-group-item">
                <asp:Label Text="lala" ID="lblCodigo" runat="server" />
            </li>
            <li class="list-group-item">
                <asp:Label Text="lala" ID="lblPrecio" runat="server" />
            </li>
        </ul>
    </div>
            --%>
    <div class="btn">
        <a href="PaginaPrincipal.aspx" class="btn btn-primary">Volver</a>
    </div>

</asp:Content>
