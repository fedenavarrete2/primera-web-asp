using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using static dominio.Disco;

namespace primera_web_asp
{
    public partial class Formulario_web2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["listaDiscos"] == null)
            {
                DiscoNegocio negocio = new DiscoNegocio();
                Session.Add("listaDiscos", negocio.listar());
            }

            dgvDisco.DataSource = Session["listaDiscos"];
            dgvDisco.DataBind();

        }

        protected void dgvDisco_SelectedIndexChanged(object sender, EventArgs e)
        {
           var codigo = dgvDisco.SelectedDataKey.Value.ToString();
           Response.Redirect("Discos.aspx?Codigo=" + codigo);
        }
    }
}