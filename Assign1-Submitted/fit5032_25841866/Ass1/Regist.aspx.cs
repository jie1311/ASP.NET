using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Regist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void confirmButton_Click(object sender, EventArgs e)
    {
        if (!(Page.IsValid))
        {
            return;
        }
        else if(Page.IsPostBack)
        {
            userInfo.Visible = true;
            name.Text = "Name: " + GnameText.Text + " " + FnameText.Text;
            email.Text = "Email: " + emailText.Text;
            dob.Text = "Date of Birth: " + dobText.Text;
            gender.Text ="Gender: " + genRadio.SelectedItem.Text;
            blood.Text = "Blood Type: " + bldBox.SelectedItem.Text;
            language.Text = "Preferred Programming Language: ";
            if (chk1.Checked)
            {
                language.Text += "Java ";
            }
            if (chk2.Checked)
            {
                language.Text += "C# ";
            }
            if (chk3.Checked)
            {
                language.Text += "Swift ";
            }
            if (chk4.Checked)
            {
                language.Text += "Others ";
            }
            else if (!(chk1.Checked || chk2.Checked || chk3.Checked))
            {
                language.Text += "None ";
            }
            years.Text = "Years of Programming Experience: " + peText.Text ;
            addr.Text ="Address: " + addrText.Text;
            state.Text = "State: " + StateList.SelectedValue;
        }
    }
    protected void vldDates_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = false;
        DateTime dateOfBirth;
        try
        {
            dateOfBirth = DateTime.Parse(dobText.Text);
        }
        catch (Exception ex)
        {
            feedbackLabel.Text = "Date of birth is invalid.";
            return;
        }
        args.IsValid = true;
    }
}