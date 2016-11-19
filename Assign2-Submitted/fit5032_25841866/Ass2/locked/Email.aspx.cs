using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ass2_locked_Email : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SendMail_Click(object sender, EventArgs e)
    {
        MailMessage newMsg = new MailMessage();

        foreach (GridViewRow gvRow in gvProducts.Rows)
        {
            CheckBox cb = (CheckBox)gvRow.FindControl("chkEmail");
            if (cb != null && cb.Checked)
            {
                newMsg.To.Add(new MailAddress(gvRow.Cells[2].Text,
                  gvRow.Cells[0].Text + " " + gvRow.Cells[1].Text));
            }
        }

        newMsg.From =
          new MailAddress("jzha388@student.monash.edu", "HWP");
        newMsg.Subject = txtSubject.Text;
        newMsg.Body = txtMsg.Text;

        try
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.monash.edu.au";
            smtp.Port = 25;
            smtp.Send(newMsg);
            lblMail.Text = "Mail Successfully Sent";
        }
        catch (Exception exc)
        {
            lblMail.Text = exc.Message;
        }
    }
}