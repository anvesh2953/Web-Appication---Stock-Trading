using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Lab8_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["Variable1"] = TextBox1.Text;
        Label1.Text = Session["Variable1"].ToString();
        Response.Redirect("Lab8_2.aspx");
    }

    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["Total"] = 0;
        Session["Cart"] = "";
        int counter = 0;
        foreach (ListItem listItem in CheckBoxList1.Items)

        {

            if (listItem.Selected)

            {
                if (counter == 0)
                {
                    Session["Cart"] = Session["Cart"] + listItem.Text;
                    Session["Total"] = Convert.ToDecimal(Session["Total"]) + Convert.ToDecimal(listItem.Value);
                    counter = 1;
                }
                else
                {
                    Session["Cart"] = Session["Cart"] + "," + listItem.Text;
                    Session["Total"] = Convert.ToDecimal(Session["Total"]) + Convert.ToDecimal(listItem.Value);
                }

            }

        }

        lblTotal.Text = Session["Total"].ToString();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Lab8_2.aspx");
    }
}