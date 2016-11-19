using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomeMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DS7.SelectCommand = "SELECT * FROM [event] WHERE [edate] = #" + cld1.TodaysDate.ToString("MM/dd/yyyy") + "#";
        DataView dv = (DataView)DS7.Select(DataSourceSelectArguments.Empty);
        int count = dv.Count;
        events.Text = "Today is " + cld1.TodaysDate.ToString("dd/mm/yyyy") + " No Events today.";
        String eventS = "";
        if (count > 0)
        {
            for (int index = 0; index < count; index++)
            {
                eventS += dv[index]["discribe"].ToString() + "<br /> at " +
                    dv[index]["etime"].ToString().Substring(11) + "<br />";
            }
            events.Text = "Today event: <br />" + eventS;
        }

    }
    protected void cld1_DayRender(object sender, DayRenderEventArgs e)
    {
        DS7.SelectCommand = "SELECT * FROM [event] WHERE [edate] = #" + e.Day.Date.ToString("MM/dd/yyyy") + "#";
        DataView dv = (DataView)DS7.Select(DataSourceSelectArguments.Empty);
        int count = dv.Count;
        if (count > 0)
        {
            e.Cell.BackColor = System.Drawing.Color.Gray;
        }
    }
    protected void cld1_SelectionChanged(object sender, EventArgs e)
    {

        DS7.SelectCommand = "SELECT * FROM [event] WHERE [edate] = #" + cld1.SelectedDate.ToString("MM/dd/yyyy"  ) + "#";
        DataView dv = (DataView)DS7.Select(DataSourceSelectArguments.Empty);
        int count = dv.Count;
        events.Text = "No Events on selected day.";
        String eventS = "";
        if (count > 0)
        {
            for (int index = 0; index < count; index++)
            {
                eventS += dv[index]["discribe"].ToString() + "<br /> at " +
                    dv[index]["etime"].ToString().Substring(11) + "<br />";
            }
            events.Text = "Selected day's event: <br />" + eventS;
        }
    }
}
