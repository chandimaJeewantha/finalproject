using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace synchr2
{
    public partial class supervisor : System.Web.UI.Page
    {
        string connectionstring = "Data Source=localhost;Initial Catalog=HrmsDatabase;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                MultiViewSupervisor.ActiveViewIndex = 0;
            }
            if (!IsPostBack)
            {
                MultiViewunittables.ActiveViewIndex = 0;
            }

        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/login.aspx");
        }

        protected void btnProduction_Click(object sender, EventArgs e)
        {
            MultiViewSupervisor.ActiveViewIndex = 1;
        }

        protected void btnTrain_Click(object sender, EventArgs e)
        {
            MultiViewSupervisor.ActiveViewIndex = 2;
        }

        protected void btnLeaves_Click(object sender, EventArgs e)
        {
            MultiViewSupervisor.ActiveViewIndex = 3;
        }

        protected void btnEmployee_Click(object sender, EventArgs e)
        {
            MultiViewSupervisor.ActiveViewIndex = 4;
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            MultiViewSupervisor.ActiveViewIndex = 0;
        }

        protected void txtSaveSup_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('" + txtdatenew.Text + "')</script>");
            if (selectUnit.SelectedValue == "0")
            {

                Response.Write("<script>alert('Please Select Unit Type....');</script>");

            }
            else if (selectUnit.SelectedValue == "1")
            {
                if (txtdatenew.Text == "" || txtEmployeeId.Text == "" || txtPresentEmployees.Text == "" || txtAbsenceEmployees.Text == "" || txtTotalProduction.Text == "" || txtDamageCount.Text == "")
                {
                   
                    Response.Write("<script>alert('Please Fill All Fields......');</script>");
                }
                else

                    try
                    {
                      
          

                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "insert into printunitTbl values('" +txtdatenew.Text + "','" + txtEmployeeId.Text + "'," + txtPresentEmployees.Text + "," + txtAbsenceEmployees.Text + "," + txtTotalProduction.Text + "," + txtDamageCount.Text + ")";
                        SqlCommand cmd = new SqlCommand(query, con);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert('Data Inserted....')</script>");



                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('" + ex.Message + "');</script>");

                    }



                
                  
                
            }
            //else
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(connectionstring);
                string query = "select * from hrDepartmentTbl";
                SqlDataAdapter adp = new SqlDataAdapter(query, con);
                con.Open();
                DataTable tb = new DataTable();
                adp.Fill(tb);
                con.Close();
                //GridView1.DataSource = tb;

            }
            catch (Exception ex)
            { 
            
            
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "0")
            {
                Response.Write("<script>alert('Data Inserted....')</script>");


            }
            else if (DropDownList1.SelectedValue == "1")
            {
                MultiViewunittables.ActiveViewIndex = 1;
            
            }
        }
    }
}