using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace synchr2
{
    public partial class productionManager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiViewProduction.ActiveViewIndex = 0;
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            MultiViewProduction.ActiveViewIndex = 0;
        }

        protected void btnStatus_Click(object sender, EventArgs e)
        {
            MultiViewProduction.ActiveViewIndex = 1;
        }

        protected void btnExpenses_Click(object sender, EventArgs e)
        {
            MultiViewProduction.ActiveViewIndex = 2;
        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/login.aspx");
        }
    }
}