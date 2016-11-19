using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        homeTitle.Text = "Welcome to HW Progrmmer.";
        subTitle.Text = "by programmers, of programmers and for programmers.";
        homeInfo.Text = "Last Modified: 09/2015 <br />Author Email: jzha388@student.monash.edu <br />Server Webmaster Email: jzha388@student.monash.edu";
        link.Text = "Monash course disclaimer";
        link.NavigateUrl = "http://users.monash.edu.au/~sgrose/msh/disclaimer.html";
        copyright.Text = "Copyright © 2015 Jie <br />All texts and images are original by Jie.";
    }
}