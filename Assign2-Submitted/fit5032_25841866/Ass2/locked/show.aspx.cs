using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ass2_locked_show : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string a = "";
        string b = "";
        string c = "";
        
        try
        {
             a = Request.QueryString["id"];
             b = Request.QueryString["gn"];
             c = Request.QueryString["fn"];

             sd5.SelectCommand = "";
       
        if (a!=null)
        {
            sd5.SelectCommand = "SELECT * FROM userinfo WHERE id = " + a ;
        }
        else if (b != null)
        {
            sd5.SelectCommand = "SELECT * FROM userinfo WHERE gname = '" + b + "'";
        }
        else if (c != null)
        {
            sd5.SelectCommand = "SELECT * FROM userinfo WHERE fname = '" + c + "'";
        } 
        lv.DataSource = sd5;
        lv.DataBind();
        lv.Visible = true;
        }
        catch
        { }

    }

    protected void sID_Click(object sender, EventArgs e)
    {
        Response.Redirect("show.aspx?id=" + search.Text);
    }
    protected void sFN_Click(object sender, EventArgs e)
    {
        Response.Redirect("show.aspx?fn=" + search.Text);
    }
    protected void sGN_Click(object sender, EventArgs e)
    {
        Response.Redirect("show.aspx?gn=" + search.Text);
    }
}