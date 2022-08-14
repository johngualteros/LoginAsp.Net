using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace LoginAsp.Net
{
    public partial class LoginAspNet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string patron = "AspNet";
        protected void BtnSignin_Click(object sender,EventArgs e)
        {
            string conectar = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
            SqlConnection sqlConectar = new SqlConnection(conectar);
            SqlCommand cmd = new SqlCommand("SP_ValidarUsuario", sqlConectar)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Connection.Open();
            cmd.Parameters.Add("@usuario", SqlDbType.VarChar, 40).Value = tbUser.Text;
            cmd.Parameters.Add("@clave", SqlDbType.VarChar, 50).Value = tbPassword.Text;
            cmd.Parameters.Add("@patron", SqlDbType.VarChar, 50).Value = patron;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                //Agregamos una sesion de usuario
                Session["userIsLogged"] = tbUser.Text;
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                lblError.Text = "Error in User or Password";
            }

            cmd.Connection.Close();
        }
    }
}