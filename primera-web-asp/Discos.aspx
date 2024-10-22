<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Discos.aspx.cs" Inherits="primera_web_asp.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Cargar Disco:</h1>
    <div class="row">
        <div class="col-6">
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Codigo:</label>
                <asp:TextBox runat="server" ID="txtCodigo" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Nombre:</label>
                <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Fecha de Lanzamiento:</label>
                <asp:TextBox runat="server" TextMode="Date" ID="txtFecha" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Cantidad de Canciones:</label>
                <asp:TextBox runat="server" ID="txtCanciones" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Url Imagen:</label>
                <asp:TextBox runat="server" ID="txtUrlImagen" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Estilo:</label>
                <asp:DropDownList ID="ddlEstilo" runat="server" CssClass="form-select"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Button Text="Aceptar" ID="btnAceptar" runat="server" OnClick="btnAceptar_Click" CssClass="btn btn-primary btn-dark" />
            </div>
        </div>
    </>
</asp:Content>
