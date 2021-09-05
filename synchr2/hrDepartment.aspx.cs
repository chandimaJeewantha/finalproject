using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace synchr2
{
    public partial class hrDepartment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiViewSupervisor.ActiveViewIndex = 0;
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            MultiViewSupervisor.ActiveViewIndex = 0;
        }

        protected void btnAddemp_Click(object sender, EventArgs e)
        {
            MultiViewSupervisor.ActiveViewIndex = 1;
        }

        protected void btnProfiles_Click(object sender, EventArgs e)
        {
            MultiViewSupervisor.ActiveViewIndex = 2;
        }

        protected void btnLabourrep_Click(object sender, EventArgs e)
        {
            MultiViewSupervisor.ActiveViewIndex = 3;
        }

        protected void btnMonthlyrep_Click(object sender, EventArgs e)
        {
            MultiViewSupervisor.ActiveViewIndex = 4;
        }

        protected void btnPayroll_Click(object sender, EventArgs e)
        {
            MultiViewSupervisor.ActiveViewIndex = 5;
        }

        protected void btnOutsideworkers_Click(object sender, EventArgs e)
        {
            MultiViewSupervisor.ActiveViewIndex = 6;
        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/login.aspx");
        }
    }
}