using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Doc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        dTitle.Text = "Documentation";
        dContent.Text = "<b>Author</b><br />Name: Jie Zhang<br />Student ID: 25841866<br /><b>Unit</b><br />Unit Name: Internet Application Development<br />Unit Code: FIT5032" +
            "<br />Unit Provider: Monash University, The Caulfield School of IT<br />Assignment No: 1<br />Date of Submission: 11/09/2015<br />Tutor's Name: Prajwol Sangat<br />";
        emailLink.NavigateUrl = "mailto:jzha288@student.monash.edu";
        emailLink.Text = "Author Email";
        spcLink.NavigateUrl = "http://moodle.vle.monash.edu/mod/page/view.php?id=2639809";
        spcLink.Text = "Assignment Specification";
    }
}