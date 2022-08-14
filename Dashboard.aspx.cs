using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginAsp.Net
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userIsLogged"] != null)
            {
                string userLogged = Session["userIsLogged"].ToString();
                lblWelcome.Text = $"Welcome To System {userLogged}";
            }
            else
            {
                Response.Redirect("LoginAspNet.aspx");
            }
        }
        protected void btnCerrar_Click(Object sender,EventArgs e)
        {
            Session.Remove("userIsLogged");
            Response.Redirect("LoginAspNet.aspx");
        }
    }
}