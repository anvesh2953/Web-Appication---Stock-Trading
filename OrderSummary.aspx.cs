using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrderSummary : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "123456789";
        Label2.Text = "Buy";
        if (Session["Variable1"] != null)
        {
            Label3.Text = Session["Variable1"].ToString();
        }
        if (Session["Variable2"] != null)
        {
            Label4.Text = Session["Variable2"].ToString();
        }
        if (Session["Variable3"] != null)
        {
            Label6.Text = Session["Variable3"].ToString();
        }
        if (Session["radio1"] != null)
        {
            Label5.Text = Session["radio1"].ToString();
        }
        if (Session["radio2"] != null)
        {
            Label7.Text = Session["radio2"].ToString();
        }


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("CashBuy.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Pay.aspx");
    }
}