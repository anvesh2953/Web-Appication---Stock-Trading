using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Lab8_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Variable1"] != null)
        {
            Label1.Text = Session["Variable1"].ToString();
        }
        if (Session["Total"] != null)
        {
            Label2.Text = "Your Total is: $"+Session["Total"].ToString();
        }
        if (Session["Cart"] != null)
        {
            Label3.Text = "For the following items: "+Session["Cart"].ToString();
        }

    }
}