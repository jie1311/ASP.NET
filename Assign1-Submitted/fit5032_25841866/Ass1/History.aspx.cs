using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class History : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        abtTitle.Text = "History";
        abtInfo.Text = "Our company has like 6 or 7 days history. We helped one programmer successfully downloading and installing a very high end IDE. " + 
            "We was establised at first of Spetember, 2015 at Melcourne, the most liveable city in the whole world. Since then, we have achieved a lot. " + 
            "Now, we have a 7-page website and one un-expericed service providor.09/09/15 <br /> <br /><b>Some update</b> Our company has grown even larger since yeaterday. " + 
            "Our website now cantains more text and more images. Besides, our website now has introduced a brand new invonational technology named SKIN. " +
            "With this revolutionary technology, we can introduce more themes to our webside and make it more user-friendly. Coming this Summer... 10/09/15 <br /><br />";
        back.Text = "back";
        back.NavigateUrl = "About.aspx";
    }
}