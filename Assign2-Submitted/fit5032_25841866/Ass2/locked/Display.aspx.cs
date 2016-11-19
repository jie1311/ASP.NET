using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Ass1_Display : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        fileName.Text = "Display code"; 
        string filePath = Server.MapPath(Request.QueryString["filename"]); 
        FileInfo file = new FileInfo(filePath);
        if (file.Extension != ".mdb" 
            //&& file.Extension != ".xml" 
            && file.Extension != ".exe") {
            code.Text = "<b>" + Request.QueryString["filename"] + "</b><br />"; 
            code.Text += ReadFile(filePath);
            code.Text += "<br /><br />---------------------------------------------------------------------------------------<br /><br />";
        } else {
            code.Text = "<b>" + Request.QueryString["filename"] + "</b><br />"; 
            code.Text += "Sorry you can't read a file with an extension of " + file.Extension;
            code.Text += "<br /><br />---------------------------------------------------------------------------------------<br /><br />";
        }

        try
        {
            filePath = Server.MapPath(Request.QueryString["filename2"]);
            file = new FileInfo(filePath);
            if (file.Extension != ".mdb"
                //&& file.Extension != ".xml" 
                && file.Extension != ".exe")
            {
                code.Text += "<b>" + Request.QueryString["filename2"] + "</b><br />"; 
                code.Text += ReadFile(filePath);
                code.Text += "<br /><br />---------------------------------------------------------------------------------------<br /><br />";
            }
            else
            {
                code.Text += "<b>" + Request.QueryString["filename2"] + "</b><br />";
                code.Text += "Sorry you can't read a file with an extension of " + file.Extension;
                code.Text += "<br /><br />---------------------------------------------------------------------------------------<br /><br />";
            }

            filePath = Server.MapPath(Request.QueryString["filename3"]);
            file = new FileInfo(filePath);
            if (file.Extension != ".mdb"
                //&& file.Extension != ".xml" 
                && file.Extension != ".exe")
            {
                code.Text += "<b>" + Request.QueryString["filename3"] + "</b><br />"; 
                code.Text += ReadFile(filePath);
                code.Text += "<br /><br />---------------------------------------------------------------------------------------<br /><br />";
            }
            else
            {
                code.Text += "<b>" + Request.QueryString["filename3"] + "</b><br />";
                code.Text += "Sorry you can't read a file with an extension of " + file.Extension;
                code.Text += "<br /><br />---------------------------------------------------------------------------------------<br /><br />";
            }
        }
        catch
        {

        }
    }

    private string ReadFile(string filepath)
    {
        string fileOutput = "";
        try
        {
            StreamReader FileReader = new StreamReader(filepath);
            while (FileReader.Peek() > -1)
            {
                fileOutput += FileReader.ReadLine().Replace("<", "&lt;").Replace(" ", "&nbsp;&nbsp;&nbsp;&nbsp;") + "<br />";
            }
            FileReader.Close();
        }
        catch (FileNotFoundException e)
        {
            fileOutput = e.Message;
        }
        return fileOutput;
    }
}