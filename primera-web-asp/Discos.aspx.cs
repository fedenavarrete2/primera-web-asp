using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;

namespace primera_web_asp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ddlEstilo.Items.Add("Rock");
            ddlEstilo.Items.Add("Punk");
            ddlEstilo.Items.Add("Reggae");

            if (Request.QueryString["Codigo"]!= null)
            {
                int codigo = int.Parse(Request.QueryString["codigo"].ToString());
                List<Disco> list = (List<Disco>)Session["ListaDiscos"];
                Disco seleccionado = list.Find(x => x.Codigo == codigo);
                txtCodigo.Text = seleccionado.Codigo.ToString();
                txtCodigo.ReadOnly = true;
                txtNombre.Text = seleccionado.Nombre;
                txtFecha.Text = seleccionado.FechaLanzamiento.ToString();
                txtCanciones.Text = seleccionado.CantCanciones.ToString();
                txtUrlImagen.Text = seleccionado.UrlImagen;
                ddlEstilo.SelectedValue = seleccionado.Estilo;
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Disco disco = new Disco();
            disco.Codigo = Convert.ToInt32(txtCodigo.Text);
            disco.Nombre = txtNombre.Text;
            disco.FechaLanzamiento = Convert.ToDateTime(txtFecha.Text);
            disco.CantCanciones = Convert.ToInt32(txtCanciones.Text);
            disco.UrlImagen = txtUrlImagen.Text;
            disco.Estilo = ddlEstilo.SelectedValue;

            List<Disco> list = (List<Disco>)Session["ListaDiscos"];
            list.Add(disco);

            Response.Redirect("default.aspx");
        }
    }
}