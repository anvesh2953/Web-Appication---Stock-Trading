using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class International : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UpdateLabels();
    }
    public void UpdateLabels()
    {
        TZ1.Text = System.DateTime.Now.AddHours(11.5).ToString();

        TZ2.Text = System.DateTime.Now.AddHours(0).ToString();

        TZ3.Text = System.DateTime.Now.AddHours(1).ToString();

        TZ4.Text = System.DateTime.Now.AddHours(13).ToString();

        TZ5.Text = System.DateTime.Now.AddHours(14).ToString();

    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        UpdateLabels();
    }
}