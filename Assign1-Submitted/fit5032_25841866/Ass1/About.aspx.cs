using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class about : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        abtTitle.Text = "About Us";
        abtInfo.Text = "Our company is aim to provide services to programmers. Our service include but no limited to: <br />" +
        "> selling softwares <br />" + "> helping programmers installing IDEs <br />" + "> bugging or debugging codes<br /><br />" + 
        "With a history of 6 or 7 days, we've achieved quite a lot. We helped at least one programmer installing IDEs and the numbers " + 
        "are growing fast. We have like 0% market share and we're growing.<br /><br />" + "Now with the invonational technology introduced, our website " + 
        "has become more and more user-friendly. Thanks to this, we can provide better service evrn than before.";
        link1.Text = ">>>History<<<";
        link1.NavigateUrl = "History.aspx";
        link2.Text = ">>>FAQ<<<";
        link2.NavigateUrl = "FAQ.aspx";
    }
}