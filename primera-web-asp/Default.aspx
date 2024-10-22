<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="primera_web_asp.Formulario_web2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Lista de Discos:</h1>
    <div class="row">
        <div class="col">
            <asp:GridView runat="server" ID="dgvDisco" DataKeyNames="Codigo" OnSelectedIndexChanged="dgvDisco_SelectedIndexChanged" CssClass="table table-bordered" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField HeaderText="Codigo" DataField="Codigo" />
                    <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                    <asp:BoundField HeaderText="Fecha de Lanzamiento" DataField="FechaLanzamiento" />
                    <asp:BoundField HeaderText="Cantidad de Canciones" DataField="CantCanciones" />
                    <asp:BoundField HeaderText="Estilo" DataField="Estilo" />
                    <asp:CommandField HeaderText="Accion" ShowSelectButton="true" SelectText="Seleccionar" />
                </Columns>
            </asp:GridView>
            <a href="Discos.aspx">Agregar</a>
        </div>
    </div>
</asp:Content>

