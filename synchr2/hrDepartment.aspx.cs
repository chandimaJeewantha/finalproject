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
    public partial class hrDepartment : System.Web.UI.Page
    {
        string connectionString = "Data Source=localhost;Initial Catalog=HrmsDatabase;Integrated Security=True";
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

        protected void btnEvaluate_Click(object sender, EventArgs e)
        {
            if (DropDownListMonth.SelectedValue == "0" || txtWorkerID.Text == "")
            {

                Response.Write("<script>alert('Please Enter Month And Out Side Worker Id To Evaluate The Preformance......');</script>");

            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection(connectionString);
                    string quary = "select * from OutSourceOrderTbl where Month='" + DropDownListMonth.SelectedItem.Text + "' and Id='"+txtWorkerID.Text+"'";
                    SqlCommand cmd = new SqlCommand(quary, con);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    if (rdr.Read() == true)
                    {
                        string worker_type = rdr.GetString(0);
                        string umbrella_code = rdr.GetString(4);
                        int cover_amount = Convert.ToInt32(rdr.GetValue(5));
                        int frame_amount= Convert.ToInt32(rdr.GetValue(6));
                        int thread_amount= Convert.ToInt32(rdr.GetValue(7));
                        double expected_umbrellas= Convert.ToInt32(rdr.GetValue(8));
                        double rejected_amount= Convert.ToInt32(rdr.GetValue(9));
                        Response.Write("<script>alert('" +expected_umbrellas + "');</script>");
                        //Response.Write("<script>alert('" + worker_type+ "');</script>");

                        double reject_precentage,cost_for_rawmaterials, payment_for_this_outside_worker, total_cost_for_this_outside_order, market_value_of_this_outside_order, profit_amount_from_this_outside_order, profit_precentage,profit_amount;
                        int valueble_goods;

                        if (umbrella_code == "bu1212")
                        {
                            reject_precentage = Math.Round(Convert.ToDouble((rejected_amount * 100) / expected_umbrellas), 2);
                            Response.Write("<script>alert('" + reject_precentage + "');</script>");
                            valueble_goods = (int)(expected_umbrellas - rejected_amount);
                            //Response.Write("<script>alert('" +valueble_goods+ "');</script>");
                            payment_for_this_outside_worker = valueble_goods * 50;
                            cost_for_rawmaterials = (cover_amount * 50) + (frame_amount * 50) + (thread_amount * 30);
                            payment_for_this_outside_worker = valueble_goods * 50;
                            total_cost_for_this_outside_order = cost_for_rawmaterials + payment_for_this_outside_worker;
                            market_value_of_this_outside_order = valueble_goods * 300;
                            profit_amount_from_this_outside_order = market_value_of_this_outside_order - total_cost_for_this_outside_order;
                            profit_precentage = Math.Round(Convert.ToDouble((profit_amount_from_this_outside_order * 100) / total_cost_for_this_outside_order), 2);
                            profit_amount = market_value_of_this_outside_order - total_cost_for_this_outside_order;
                            if (market_value_of_this_outside_order > total_cost_for_this_outside_order)
                            {
                                if (profit_precentage >= 25 && reject_precentage <= 30)
                                {
                                    txtProfitPrecentage.Text = profit_precentage.ToString();
                                    txtReject.Text = reject_precentage.ToString();
                                    txtFinalStatus.Text = "GOOD PREFORMANCE";
                                    txtGrossProfit.Text = profit_amount.ToString();



                                }
                                else
                                {
                                    txtProfitPrecentage.Text = profit_precentage.ToString();
                                    txtReject.Text = reject_precentage.ToString();
                                    txtFinalStatus.Text = "POOR PREFORMANCE";
                                    txtGrossProfit.Text = profit_amount.ToString();


                                }





                            }
                            else
                            {

                                txtProfitPrecentage.Text = "NO PROFITS";
                                txtReject.Text = reject_precentage.ToString();
                                txtFinalStatus.Text = "WARNING";
                                txtGrossProfit.Text = "00.00";




                            }









                        }
                        else if (umbrella_code == "lu1313")
                        {

                            reject_precentage = Math.Round(Convert.ToDouble((rejected_amount * 100) / expected_umbrellas), 2);
                            Response.Write("<script>alert('" + reject_precentage + "');</script>");
                            valueble_goods = (int)(expected_umbrellas - rejected_amount);
                            //Response.Write("<script>alert('" +valueble_goods+ "');</script>");
                            payment_for_this_outside_worker = valueble_goods * 100;
                            cost_for_rawmaterials = (cover_amount * 100) + (frame_amount * 100) + (thread_amount * 60);
                            payment_for_this_outside_worker = valueble_goods * 50;
                            total_cost_for_this_outside_order = cost_for_rawmaterials + payment_for_this_outside_worker;
                            market_value_of_this_outside_order = valueble_goods * 600;
                            profit_amount_from_this_outside_order = market_value_of_this_outside_order - total_cost_for_this_outside_order;
                            profit_precentage = Math.Round(Convert.ToDouble((profit_amount_from_this_outside_order * 100) / total_cost_for_this_outside_order), 2);
                            profit_amount = market_value_of_this_outside_order - total_cost_for_this_outside_order;
                            if (market_value_of_this_outside_order > total_cost_for_this_outside_order)
                            {
                                if (profit_precentage >= 25 && reject_precentage <= 30)
                                {
                                    txtProfitPrecentage.Text = profit_precentage.ToString();
                                    txtReject.Text = reject_precentage.ToString();
                                    txtFinalStatus.Text = "GOOD PREFORMANCE";
                                    txtGrossProfit.Text = profit_amount.ToString();



                                }
                                else
                                {
                                    txtProfitPrecentage.Text = profit_precentage.ToString();
                                    txtReject.Text = reject_precentage.ToString();
                                    txtFinalStatus.Text = "POOR PREFORMANCE";
                                    txtGrossProfit.Text = profit_amount.ToString();


                                }





                            }
                            else
                            {

                                txtProfitPrecentage.Text = "NO PROFITS";
                                txtReject.Text = reject_precentage.ToString();
                                txtFinalStatus.Text = "WARNING";
                                txtGrossProfit.Text = "00.00";




                            }

















                        }
                        else if (umbrella_code == "gu1617")
                        {
                            reject_precentage = Math.Round(Convert.ToDouble((rejected_amount * 100) / expected_umbrellas), 2);
                            Response.Write("<script>alert('" + reject_precentage + "');</script>");
                            valueble_goods = (int)(expected_umbrellas - rejected_amount);
                            //Response.Write("<script>alert('" +valueble_goods+ "');</script>");
                            payment_for_this_outside_worker = valueble_goods * 125;
                            cost_for_rawmaterials = (cover_amount * 125) + (frame_amount * 125) + (thread_amount * 75);
                            payment_for_this_outside_worker = valueble_goods * 50;
                            total_cost_for_this_outside_order = cost_for_rawmaterials + payment_for_this_outside_worker;
                            market_value_of_this_outside_order = valueble_goods * 800;
                            profit_amount_from_this_outside_order = market_value_of_this_outside_order - total_cost_for_this_outside_order;
                            profit_precentage = Math.Round(Convert.ToDouble((profit_amount_from_this_outside_order * 100) / total_cost_for_this_outside_order), 2);
                            profit_amount = market_value_of_this_outside_order - total_cost_for_this_outside_order;
                            if (market_value_of_this_outside_order > total_cost_for_this_outside_order)
                            {
                                if (profit_precentage >=35.75  && reject_precentage <= 30)
                                {
                                    txtProfitPrecentage.Text = profit_precentage.ToString();
                                    txtReject.Text = reject_precentage.ToString();
                                    txtFinalStatus.Text = "GOOD PREFORMANCE";
                                    txtGrossProfit.Text = profit_amount.ToString();



                                }
                                else
                                {
                                    txtProfitPrecentage.Text = profit_precentage.ToString();
                                    txtReject.Text = reject_precentage.ToString();
                                    txtFinalStatus.Text = "POOR PREFORMANCE";
                                    txtGrossProfit.Text = profit_amount.ToString();


                                }





                            }
                            else
                            {

                                txtProfitPrecentage.Text = "NO PROFITS";
                                txtReject.Text = reject_precentage.ToString();
                                txtFinalStatus.Text = "WARNING";
                                txtGrossProfit.Text = "00.00";




                            }






















                        }




                    }




                }
                catch (Exception ex)
                {


                    Response.Write("<script>alert('" + ex.Message + "');</script>");



                }
              
            
            
            
            
            }
        }
    }
}