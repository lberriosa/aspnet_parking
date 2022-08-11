using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Biblioteca.Web
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Servicio.SSistemaEstacionamiento es = new Servicio.SSistemaEstacionamiento();
            
            if(es.ValidarUsuario(user.Text, password.Text))
            {
                Response.Redirect("home.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Usuario no valido')", true);

            }




        }
    }
}