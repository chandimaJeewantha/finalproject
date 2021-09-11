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
            if (!IsPostBack)
            {
                MultiViewSupervisor.ActiveViewIndex = 0;
            }

            if (!IsPostBack)
            {
                MultiViewunittables.ActiveViewIndex = 0;
            }


            GridViewPrintunit.DataBind();

            int hour = DateTime.Now.Hour;

            if (hour < 12)
            {
                Response.Write("<script>alert('Good Morning');</script>");
            }
            else
            {
                Response.Write("<script>alert('Good Evening');</script>");
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
                {

                    try
                    {



                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "insert into printunitTbl values('" + txtdatenew.Text + "','" + txtEmployeeId.Text + "'," + txtPresentEmployees.Text + "," + txtAbsenceEmployees.Text + "," + txtTotalProduction.Text + "," + txtDamageCount.Text + ")";
                        SqlCommand cmd = new SqlCommand(query, con);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert('Data Inserted....')</script>");
                        GridViewPrintunit.DataBind();



                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('" + ex.Message + "');</script>");

                    }







                }







            }
            else if (selectUnit.SelectedValue == "2")
            {
                if (txtdatenew.Text == "" || txtEmployeeId.Text == "" || txtPresentEmployees.Text == "" || txtAbsenceEmployees.Text == "" || txtTotalProduction.Text == "" || txtDamageCount.Text == "")
                {
                    Response.Write("<script>alert('Please Fill All Fields......');</script>");
                }
                else
                {
                    try
                    {
                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "insert into handleunitTbl values('" + txtdatenew.Text + "','" + txtEmployeeId.Text + "'," + txtPresentEmployees.Text + "," + txtAbsenceEmployees.Text + "," + txtTotalProduction.Text + "," + txtDamageCount.Text + ")";
                        SqlCommand cmd = new SqlCommand(query, con);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert('Data Inserted....')</script>");
                        GridViewPrintunit.DataBind();

                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");
                    }



                }

            }
            else if (selectUnit.SelectedValue == "3")
            {
                if (txtdatenew.Text == "" || txtEmployeeId.Text == "" || txtPresentEmployees.Text == "" || txtAbsenceEmployees.Text == "" || txtTotalProduction.Text == "" || txtDamageCount.Text == "")
                {
                    Response.Write("<script>alert('Please Fill All Fields......');</script>");

                }
                else
                {

                    try
                    {
                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "insert into cuttingunitTbl values('" + txtdatenew.Text + "','" + txtEmployeeId.Text + "'," + txtPresentEmployees.Text + "," + txtAbsenceEmployees.Text + "," + txtTotalProduction.Text + "," + txtDamageCount.Text + ")";
                        SqlCommand cmd = new SqlCommand(query, con);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert('Data Inserted....')</script>");
                        GridViewPrintunit.DataBind();

                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");
                    }









                }



            }
            else if (selectUnit.SelectedValue == "4")
            {



                if (txtdatenew.Text == "" || txtEmployeeId.Text == "" || txtPresentEmployees.Text == "" || txtAbsenceEmployees.Text == "" || txtTotalProduction.Text == "" || txtDamageCount.Text == "")
                {
                    Response.Write("<script>alert('Please Fill All Fields......');</script>");

                }
                else
                {

                    try
                    {
                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "insert into borderingunitTbl values('" + txtdatenew.Text + "','" + txtEmployeeId.Text + "'," + txtPresentEmployees.Text + "," + txtAbsenceEmployees.Text + "," + txtTotalProduction.Text + "," + txtDamageCount.Text + ")";
                        SqlCommand cmd = new SqlCommand(query, con);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert('Data Inserted....')</script>");
                        GridViewPrintunit.DataBind();

                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");
                    }









                }
















            }
            else if (selectUnit.SelectedValue == "5")
            {
                if (txtdatenew.Text == "" || txtEmployeeId.Text == "" || txtPresentEmployees.Text == "" || txtAbsenceEmployees.Text == "" || txtTotalProduction.Text == "" || txtDamageCount.Text == "")
                {
                    Response.Write("<script>alert('Please Fill All Fields......');</script>");
                }
                else
                {

                    try
                    {
                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "insert into tailoringunitTbl values('" + txtdatenew.Text + "','" + txtEmployeeId.Text + "'," + txtPresentEmployees.Text + "," + txtAbsenceEmployees.Text + "," + txtTotalProduction.Text + "," + txtDamageCount.Text + ")";
                        SqlCommand cmd = new SqlCommand(query, con);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert('Data Inserted....')</script>");
                        GridViewPrintunit.DataBind();

                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");
                    }




                }







            }
            else if (selectUnit.SelectedValue == "6")
            {

                if (txtdatenew.Text == "" || txtEmployeeId.Text == "" || txtPresentEmployees.Text == "" || txtAbsenceEmployees.Text == "" || txtTotalProduction.Text == "" || txtDamageCount.Text == "")
                {
                    Response.Write("<script>alert('Please Fill All Fields......');</script>");
                }
                else
                {

                    try
                    {
                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "insert into completeunitTbl values('" + txtdatenew.Text + "','" + txtEmployeeId.Text + "'," + txtPresentEmployees.Text + "," + txtAbsenceEmployees.Text + "," + txtTotalProduction.Text + "," + txtDamageCount.Text + ")";
                        SqlCommand cmd = new SqlCommand(query, con);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert('Data Inserted....')</script>");
                        GridViewPrintunit.DataBind();

                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");
                    }




                }








            }
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

        }

        protected void btnViewGrid_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "0")
            {
                Response.Write("<script>alert('Select Unit....')</script>");


            }
            else if (DropDownList1.SelectedValue == "1")
            {
                MultiViewunittables.ActiveViewIndex = 1;

            }
            else if (DropDownList1.SelectedValue == "2")
            {

                MultiViewunittables.ActiveViewIndex = 2;
            }

            else if (DropDownList1.SelectedValue == "3")
            {

                MultiViewunittables.ActiveViewIndex = 3;
            }

            else if (DropDownList1.SelectedValue == "4")
            {

                MultiViewunittables.ActiveViewIndex = 4;
            }
            else if (DropDownList1.SelectedValue == "5")
            {

                MultiViewunittables.ActiveViewIndex = 5;
            }

            else if (DropDownList1.SelectedValue == "6")
            {

                MultiViewunittables.ActiveViewIndex = 6;
            }
        }

        protected void btnUpdateSup_Click(object sender, EventArgs e)
        {
            if (selectUnit.SelectedValue == "0")
            {
                Response.Write("<script>alert('please Select Unit to Update Data....')</script>");

            }
            else if (selectUnit.SelectedValue == "1")
            {
                if (txtEmployeeId.Text == "" || txtPresentEmployees.Text == "" || txtAbsenceEmployees.Text == "" || txtTotalProduction.Text == "" || txtDamageCount.Text == "")
                {
                    Response.Write("<script>alert('Please Fill All Fields....')</script>");
                }
                else
                {


                    try
                    {
                        //Response.Write("<script>alert(' Data Updated....')</script>");

                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "update printunitTbl set Supervisor_Id='" + txtEmployeeId.Text + "',Present_Employees=" + txtPresentEmployees.Text + ",Absence_Employees=" + txtAbsenceEmployees.Text + ",Total_Production=" + txtTotalProduction.Text + ",Damage_Count=" + txtDamageCount.Text + " where Date='" + txtdatenew.Text + "'";
                        SqlCommand cmd = new SqlCommand(query, con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert(' Data Updated....')</script>");
                        GridViewPrintunit.DataBind();

                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");

                    }



                }


            }
            else if (selectUnit.SelectedValue == "2")
            {
                if (txtEmployeeId.Text == "" || txtPresentEmployees.Text == "" || txtAbsenceEmployees.Text == "" || txtTotalProduction.Text == "" || txtDamageCount.Text == "")
                {
                    Response.Write("<script>alert('Please Fill All Fields....')</script>");
                }
                else
                {


                    try
                    {
                        //Response.Write("<script>alert(' Data Updated....')</script>");

                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "update handleunitTbl set Supervisor_Id='" + txtEmployeeId.Text + "',Present_Employees=" + txtPresentEmployees.Text + ",Absence_Employees=" + txtAbsenceEmployees.Text + ",Total_Production=" + txtTotalProduction.Text + ",Damage_Count=" + txtDamageCount.Text + " where Date='" + txtdatenew.Text + "'";
                        SqlCommand cmd = new SqlCommand(query, con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert(' Data Updated....')</script>");
                        GridViewPrintunit.DataBind();

                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");

                    }



                }

            }
            else if (selectUnit.SelectedValue == "3")
            {

                if (txtEmployeeId.Text == "" || txtPresentEmployees.Text == "" || txtAbsenceEmployees.Text == "" || txtTotalProduction.Text == "" || txtDamageCount.Text == "")
                {
                    Response.Write("<script>alert('Please Fill All Fields....')</script>");
                }
                else
                {


                    try
                    {
                        //Response.Write("<script>alert(' Data Updated....')</script>");

                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "update cuttingunitTbl set Supervisor_Id='" + txtEmployeeId.Text + "',Present_Employees=" + txtPresentEmployees.Text + ",Absence_Employees=" + txtAbsenceEmployees.Text + ",Total_Production=" + txtTotalProduction.Text + ",Damage_Count=" + txtDamageCount.Text + " where Date='" + txtdatenew.Text + "'";
                        SqlCommand cmd = new SqlCommand(query, con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert(' Data Updated....')</script>");
                        GridViewPrintunit.DataBind();

                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");

                    }



                }





            }
            else if (selectUnit.SelectedValue == "4")
            {
                if (txtEmployeeId.Text == "" || txtPresentEmployees.Text == "" || txtAbsenceEmployees.Text == "" || txtTotalProduction.Text == "" || txtDamageCount.Text == "")
                {
                    Response.Write("<script>alert('Please Fill All Fields....')</script>");
                }
                else
                {


                    try
                    {
                        //Response.Write("<script>alert(' Data Updated....')</script>");

                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "update borderingunitTbl set Supervisor_Id='" + txtEmployeeId.Text + "',Present_Employees=" + txtPresentEmployees.Text + ",Absence_Employees=" + txtAbsenceEmployees.Text + ",Total_Production=" + txtTotalProduction.Text + ",Damage_Count=" + txtDamageCount.Text + " where Date='" + txtdatenew.Text + "'";
                        SqlCommand cmd = new SqlCommand(query, con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert(' Data Updated....')</script>");
                        GridViewPrintunit.DataBind();

                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");

                    }



                }








            }
            else if (selectUnit.SelectedValue == "5")
            {


                if (txtEmployeeId.Text == "" || txtPresentEmployees.Text == "" || txtAbsenceEmployees.Text == "" || txtTotalProduction.Text == "" || txtDamageCount.Text == "")
                {
                    Response.Write("<script>alert('Please Fill All Fields....')</script>");
                }
                else
                {


                    try
                    {
                        //Response.Write("<script>alert(' Data Updated....')</script>");

                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "update TailoringunitTbl set Supervisor_Id='" + txtEmployeeId.Text + "',Present_Employees=" + txtPresentEmployees.Text + ",Absence_Employees=" + txtAbsenceEmployees.Text + ",Total_Production=" + txtTotalProduction.Text + ",Damage_Count=" + txtDamageCount.Text + " where Date='" + txtdatenew.Text + "'";
                        SqlCommand cmd = new SqlCommand(query, con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert(' Data Updated....')</script>");
                        GridViewPrintunit.DataBind();

                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");

                    }



                }







            }
            else if (selectUnit.SelectedValue == "6")
            {

                if (txtEmployeeId.Text == "" || txtPresentEmployees.Text == "" || txtAbsenceEmployees.Text == "" || txtTotalProduction.Text == "" || txtDamageCount.Text == "")
                {
                    Response.Write("<script>alert('Please Fill All Fields....')</script>");
                }
                else
                {


                    try
                    {
                        //Response.Write("<script>alert(' Data Updated....')</script>");

                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "update completeunitTbl set Supervisor_Id='" + txtEmployeeId.Text + "',Present_Employees=" + txtPresentEmployees.Text + ",Absence_Employees=" + txtAbsenceEmployees.Text + ",Total_Production=" + txtTotalProduction.Text + ",Damage_Count=" + txtDamageCount.Text + " where Date='" + txtdatenew.Text + "'";
                        SqlCommand cmd = new SqlCommand(query, con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert(' Data Updated....')</script>");
                        GridViewPrintunit.DataBind();

                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");

                    }



                }





            }




        }

        protected void btnClearSupervisor_Click(object sender, EventArgs e)
        {
            txtdatenew.Text = "";
            txtEmployeeId.Text = "";
            txtPresentEmployees.Text = "";
            txtAbsenceEmployees.Text = "";
            txtTotalProduction.Text = "";
            txtDamageCount.Text = "";
            selectUnit.SelectedValue = "0";
        }

        protected void btnSubmitTrain_Click(object sender, EventArgs e)
        {
            if (txttrainingNeedDate.Text == "" || DropDownListTrainingNeeds.SelectedValue == "0" || txttrainnigNeedId.Text == "" || txtEmployeeTraininNeedName.Text == "")
            {


                Response.Write("<script>alert(' Enter The Relevant Data ....')</script>");


            }
            else
            {
                //Response.Write("<script>alert('" +DropDownListTrainingNeeds.SelectedItem.Text + "');</script>");
                try
                {

                    SqlConnection con = new SqlConnection(connectionstring);
                    string query = "insert into TraninigNeedsTbl values('"+txttrainingNeedDate.Text+"','"+DropDownListTrainingNeeds.SelectedItem.Text+"','"+txttrainnigNeedId.Text+"','"+txtEmployeeTraininNeedName.Text+"')";
                    SqlCommand cmd = new SqlCommand(query, con);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Data Inserted....')</script>");
                    //GridViewPrintunit.DataBind();
                    btnclear();


                }
                catch (Exception ex)
                {


                    Response.Write("<script>alert('" + ex.Message + "');</script>");


                }






            }
        }
        void btnclear()
        {
            txtEmployeeTraininNeedName.Text = "";
            DropDownListTrainingNeeds.SelectedValue="0";
            txttrainingNeedDate.Text = "";
            txttrainnigNeedId.Text = "";


        
        }

        protected void btnTrainingNeedClear_Click(object sender, EventArgs e)
        {

        }
    }
}
