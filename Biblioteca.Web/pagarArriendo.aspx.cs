using System;
using Biblioteca.Negocio;
using Transbank.Webpay;
using System.Net.Http;
using System.Text;

namespace Biblioteca.Web
{
    public partial class pagarArriendo : System.Web.UI.Page
    {
        private static readonly HttpClient client = new HttpClient();
        private static WebpayNormal transaction = new Webpay(Configuration.ForTestingWebpayPlusNormal()).NormalTransaction;

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        private void LimpiarControles()
        {
            txtRut.Text = string.Empty;
            txtNombre.Text = string.Empty;
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                Detalle_Arriendo detalle = new Detalle_Arriendo();
                detalle.Cod_arriendo = txtRut.Text;

                if (detalle.Read())
                {
                    txtNombre.Text = detalle.Costo_total.ToString();
                    lblMensaje.Text = string.Empty;
                }
                else
                {
                    lblMensaje.Text = "Código no encontrado";
                    LimpiarControles();
                }
            }
            catch (Exception ex)
            {
                lblMensaje.Text = "Error al leer el código ingresado";
                LimpiarControles();
            }
        }

        protected void btnPagar_Click(object sender, EventArgs e)
        {
            var amount = int.Parse(txtNombre.Text);
            // Identificador que será retornado en el callback de resultado:
            var sessionId = "ieyiqwy1231ska";
            // Identificador único de orden de compra:
            var buyOrder = new Random().Next(100000, 999999999).ToString();
            var returnUrl = "https://localhost:44318/pagarArriendo.aspx";
            var finalUrl = "https://localhost:44318/home.aspx";
            var initResult = transaction.initTransaction(amount, buyOrder, sessionId, returnUrl, finalUrl);

            var formAction = initResult.url;
            var tokenWs = initResult.token;
            
            iniciarFlujoDePago(formAction,tokenWs);
        }

        public void iniciarFlujoDePago(string url, string token)
        {
            Response.Clear();
            StringBuilder sb = new StringBuilder();
            sb.Append("<html>");
            sb.AppendFormat(@"<body onload='document.forms[""form""].submit()'>");
            sb.AppendFormat("<form name='form' action='{0}' method='post'>", url);
            sb.AppendFormat("<input type='hidden' name='token_ws' value='{0}'>", token);
            sb.Append("</form>");
            sb.Append("</body>");
            sb.Append("</html>");
            Response.Write(sb.ToString());
            Response.End();
        }
        
    }
}