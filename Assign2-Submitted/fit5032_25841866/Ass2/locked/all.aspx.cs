using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ass2_locked_all : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        allTitle.Text = "All Records";
    }
    protected void gvProducts_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        display.Text = "The User's name is <b>" 
            + gvProducts.Rows[Convert.ToInt32(e.CommandArgument)].Cells[2].Text + " "
            + gvProducts.Rows[Convert.ToInt32(e.CommandArgument)].Cells[3].Text + "</b><br />The email of the user is: "
            + gvProducts.Rows[Convert.ToInt32(e.CommandArgument)].Cells[4].Text + ", and his/her birthday is "
            + gvProducts.Rows[Convert.ToInt32(e.CommandArgument)].Cells[5].Text + ". He/she is a "
            + gvProducts.Rows[Convert.ToInt32(e.CommandArgument)].Cells[6].Text + " person. The user's blood type is "
            + gvProducts.Rows[Convert.ToInt32(e.CommandArgument)].Cells[7].Text + ".";
    }
}