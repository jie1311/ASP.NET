using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FAQ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        abtTitle.Text = "FAQ";
        abtInfo.Text = "<b>Why you guys provide service that bugs some codes?</b> <br />Becaus some programmers like to take some challenge.<br />" +
            "<b>Do I need to book a service?</b><br />Yes, you need to regist an account and book a service at least a week before. <br />" + 
            "<b>Do you provide service of Intel Galileo Gen 2?</b><br />No, the we need to focus our energy on mainstream platform like Windows Phone.<br />" +
            "<b>Do you provide service on public holidays?</b><br />No, we only provide service on Mondays and Fridays if it's not public holiday.<br />" +
            "<b>How much do you charge?</b><br />We charge reffering to some Oz laws that minimal labor fee per hour ot something.<br />" +
            "<b>Hi, how are you?</b><br />Hi, G'day mate.<br />";
        back.Text = "back";
        back.NavigateUrl = "About.aspx";
    }
}