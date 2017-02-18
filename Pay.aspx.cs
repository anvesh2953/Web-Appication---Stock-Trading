using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Variable4"] != null)
        {
            Label1.Text = (Convert.ToDecimal(Session["Variable4"]) * Convert.ToDecimal(Session["Variable2"])).ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("CashBuy.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("CashBuy.aspx");
    }
}