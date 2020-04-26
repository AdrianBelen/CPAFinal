using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Corporate_Performance_Analyzer
{
    public partial class ViewObjects1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button_Click(object sender, EventArgs e)
        {
            Label1.Text = Server.HtmlEncode(DropDownList1.Text);
            //Label2.Text = Server.HtmlEncode(SqlDataSource2.ToString());
        }
    }
}