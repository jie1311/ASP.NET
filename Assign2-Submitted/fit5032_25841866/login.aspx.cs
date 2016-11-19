using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        logTitle.Text = "Log in";
    }

    protected void DS1_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            FormsAuthentication.RedirectFromLoginPage(LoginX.UserName,
              false);
        }
        else
        {
            LoginX.FailureText = "Invalid Login";
        }
    }
    protected void LoginX_Authenticate(object sender, AuthenticateEventArgs e)
    {
        DS1.SelectCommand = "SELECT * FROM [user] WHERE [user_name] = '" + LoginX.UserName +
        "' AND [password] = '" + LoginX.Password + "'";
        DS1.Select(DataSourceSelectArguments.Empty); 
    }
}