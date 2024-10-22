<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="primera_web_asp.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Bienvenidos al login</h1>
    <div class="row">
      <div class="col-2"></div>
      <div class="col">
          <div class="mb-3">
             <label for="txtEmail" class="form-label">Email address</label>
              <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail" type="email" />
          </div>
          <div class="mb-3">
             <label for="txtPassword" class="form-label">Password</label>
              <asp:TextBox runat="server" CssClass="form-control" ID="txtPassword" type="password" />
          </div>
             <asp:Button  ID="btnAceptar" runat="server" OnClick="btnAceptar_Click" Text="Ingresar" CssClass="btn btn-primary btn-dark"  />
      </div>
      <div class="col-2"> </div>
    </div>
</asp:Content>
