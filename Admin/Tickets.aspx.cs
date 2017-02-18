using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;

public partial class Admin_Tickets : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        GridView1.DataBind();
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        GridViewRow row = e.Row;

        if (row.RowType == DataControlRowType.DataRow)

        {

            // DataBinder.Eval(row.DataItem, "STATUS");

            string STATUS = (DataBinder.Eval(row.DataItem, "Status").ToString()).Trim();

            string ResponseTime = ((DataBinder.Eval(row.DataItem, "ResponseTime").ToString()).Trim());

            string[] ResponseHours = ResponseTime.Split(' ');

            TimeSpan diff = DateTime.Now - Convert.ToDateTime(DataBinder.Eval(row.DataItem, "CreateDate"));

            double hours = diff.TotalHours;

            if (STATUS == "OPEN")

               

                if (hours > Convert.ToInt32(ResponseHours[0]))

                {

                    e.Row.BackColor = Color.OrangeRed;

                    e.Row.ForeColor = Color.Black;

                }

                else

                {
                     if (Convert.ToInt32(ResponseHours[0]) - hours <= 1 & Convert.ToInt32(ResponseHours[0]) - hours >= 0)
                    {
                    e.Row.BackColor = Color.Yellow;

                    e.Row.ForeColor = Color.Black;
                    }
                   else
                    {

                    e.Row.BackColor = Color.LightGreen;

                    e.Row.ForeColor = Color.Black;
                    }

                }

        }

        else

        {

            e.Row.BackColor = Color.LightGreen;

            e.Row.ForeColor = Color.Black;

        }

    }
}