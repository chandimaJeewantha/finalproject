<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="supervisor.aspx.cs" Inherits="synchr2.supervisor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Supervisor</title>
       <link href="boostrap/css/bootstrap.min.css" rel="stylesheet" />
    
    <link href="fontawesome/css/all.css" rel="stylesheet" />
    <link href="table/css/jquery.dataTables.min.css" rel="stylesheet" />

    <script src="boostrap/js/jquery-3.3.1.slim.min.js"></script>
    <script src="boostrap/js/popper.min.js"></script>
    <script src="boostrap/js/bootstrap.min.js"></script>
    <link href="css/supervisorcss.css" rel="stylesheet" />

    <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>




       <!-- Bootstrap -->
    <script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
    <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
    <link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css'
    media="screen" />
    <!-- Bootstrap -->
    <!-- Bootstrap DatePicker -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.css"
    type="text/css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.js"
    type="text/javascript"></script>
    <!-- Bootstrap DatePicker -->
    <script type="text/javascript">
        $(function () {
            $('[id*=txtDate]').datepicker({
                changeMonth: true,
                changeYear: true,
                format: "dd/mm/yyyy",
                language: "tr"
            });
        });
    </script>

    <script type="text/javascript">
        $(function () {
            $('[id*=txtDate2]').datepicker({
                changeMonth: true,
                changeYear: true,
                format: "dd/mm/yyyy",
                language: "tr"
            });
        });
    </script>

    <script type="text/javascript">
        $(function () {
            $('[id*=trainDate]').datepicker({
                changeMonth: true,
                changeYear: true,
                format: "dd/mm/yyyy",
                language: "tr"
            });
        });
    </script>




</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
    <div class="sidebar">
        
            <img src="imgs/MicrosoftTeams-image%20(11).png" />
        
        <ul>
            <li><asp:LinkButton ID="btnHome" runat="server" class="fas fa-home" OnClick="btnHome_Click"> Home</asp:LinkButton></li>
            <li><asp:LinkButton ID="btnProduction" runat="server" class="fas fa-umbrella" OnClick="btnProduction_Click"> Daily Production</asp:LinkButton></li>
            <li><asp:LinkButton ID="btnTrain" runat="server" class="fas fa-child" OnClick="btnTrain_Click"> Training Needs</asp:LinkButton></li>
            <li><asp:LinkButton ID="btnLeaves" runat="server" class="fas fa-mug-hot" OnClick="btnLeaves_Click"> Enter Leaves</asp:LinkButton></li>
            <li><asp:LinkButton ID="btnEmployee" runat="server" class="fas fa-address-card" OnClick="btnEmployee_Click"> Employee Profiles</asp:LinkButton></li>
            <li><asp:LinkButton ID="btnExit" runat="server" class="fas fa-hand-point-left" OnClick="btnExit_Click"> Exit</asp:LinkButton></li>
                     
            
        </ul> 
        <div class="social_media">
          <a href="#"><i class="fab fa-facebook-f"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
      </div>
    </div>
    <div class="main_content">
        
        
        <asp:MultiView ID="MultiViewSupervisor" runat="server" ActiveViewIndex="0">


            <asp:View ID="ViewHome" runat="server">

                
            </asp:View>



            <asp:View ID="ViewProduction" runat="server">
                <div class="container">
                <div class="row justify-content-start">
                <div class="col-4">
                          <div class="card" style="height:60rem; width: 40rem;background-color:#50DBB4; margin-left:-60px;margin-right:5px; margin-top:60px; margin-bottom:20px">
                                           <div class="card-body">
                                             <h3 class="card-title" id="cardtitle" style="color:black;text-align:center;font-family:Segoe UI;color:#303952" >Daily Production</h3>

                                              
                                            <ul>
                                                <li>
                                                    <label style="color:#2c3e50; margin-top:20px; margin-bottom:20px"><b>Unit</b></label>&nbsp<asp:DropDownList ID="selectUnit" runat="server" style="float: right; margin-top:20px; width: 200px; margin-bottom:30px">
                                                        <asp:ListItem Value="0">Please Select</asp:ListItem>  
                                                    
                                                        <asp:ListItem Value="1">Print Unit </asp:ListItem>  
                                                        <asp:ListItem Value="2">Handle Unit</asp:ListItem>  
                                                        <asp:ListItem Value="3">Cutting Unit</asp:ListItem> 
                                                        <asp:ListItem Value="4">Bordering Unit</asp:ListItem>
                                                        <asp:ListItem Value="5">Tailoring Unit</asp:ListItem>
                                                        <asp:ListItem Value="6">Complete Unit</asp:ListItem>
                                                  </asp:DropDownList>
                                               </li>
                                             </ul>
                                       
    <ul>                                    

<li>
                                            
    <label style="color:#2c3e50; margin-bottom:30px"><b>Date</b></label><asp:TextBox ID="txtdatenew" runat="server" style="float:right;width:200px;height:25px;margin-bottom:10px" TextMode="Date"></asp:TextBox>
 
</li>
</ul>



                                
                                          <div class="form-group">
                                            <ul>
                                                <li>
                                                  <label style="color:#2c3e50; float: left; margin-top: 5px"><b>Employee Id</b></label>&nbsp<asp:TextBox style="float: right; height:30px; width:200px; margin-bottom: 30px" CssClass="form-control" ID="txtEmployeeId" runat="server"></asp:TextBox>
                                                </li>
                                               
                                                 <li>
                                                   <label style="color:#2c3e50; float: left; margin-top: 35px"><b>Present Employee</b></label>&nbsp<asp:TextBox style="float: right; height:30px; width:200px; margin-bottom: 30px" CssClass="form-control" ID="txtPresentEmployees" runat="server"></asp:TextBox>
                                                 </li>
                                                 
                                                 <li>
                                                   <label style="color:#2c3e50; float: left; margin-top: 35px"><b>Absence Employee</b></label>&nbsp<asp:TextBox style="float: right; height:30px; width:200px; margin-bottom: 30px" CssClass="form-control" ID="txtAbsenceEmployees" runat="server"></asp:TextBox>
                                                 </li>
                                                 
                                                  <li>
                                                   <label style="color:#2c3e50; float: left; margin-top: 35px"><b>Total Production</b></label>&nbsp<asp:TextBox style="float: right; height:30px; width:200px; margin-bottom: 30px" CssClass="form-control" ID="txtTotalProduction" runat="server"></asp:TextBox>
                                                  </li>

                                                   <li>
                                                   <label style="color:#2c3e50; float: left; margin-top: 35px"><b>Damage Count</b></label>&nbsp<asp:TextBox style="float: right; height:30px; width:200px" CssClass="form-control" ID="txtDamageCount" runat="server"></asp:TextBox>
                                                  </li>
                                                
                                            </ul>
                                         </div>
                                        
                                              <div>
                                                  <ul>
                                                      <li>
                                                  <asp:Button class="btn btn-primary" style="float:left; margin-top: 80px" ID="txtSaveSup" runat="server" Text="Save" OnClick="txtSaveSup_Click" />
                                                  <asp:Button class="btn btn-primary" style="float:right; margin-top: 50px; margin-right: 50px" ID="btnUpdateSup" runat="server" Text="Update" OnClick="btnUpdateSup_Click" />
                                                        </li>
                                                            
                                                      </ul>
                                              </div>
                                            </div>
                                     
                                 </div>            
                            </div>
      
                 
                               

               <div class="col-4">
                    

                            <div class="card" style="height:60rem; width: 80rem;background-color:#50DBB4; margin-left:-20px; margin-right:40px; margin-top:60px; margin-bottom:20px">
                            <div class="card-body">
                            <h3 class="card-title" id="viewDataSup" style="position: absolute; top: 1px; left: 5px; text-align: left; color:black;font-family:Segoe UI; font-size:25px; color:#303952" >View Data</h3>

                                            <ul>
                                                <li>
                                                    <label style="color:#2c3e50; font-size: 17px; margin-top:70px; margin-left:20px; margin-bottom:10px"><b>Unit</b></label>&nbsp<asp:DropDownList ID="DropDownList1" runat="server" style=" margin-top:70px; margin-left:30px; width: 200px; height: 25px; margin-bottom:10px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                                        <asp:ListItem Value="0">Please Select</asp:ListItem>  
                                                    
                                                        <asp:ListItem Value="1">Print Unit </asp:ListItem>  
                                                        <asp:ListItem Value="2">Handle Unit</asp:ListItem>  
                                                        <asp:ListItem Value="3">Cutting Unit</asp:ListItem> 
                                                        <asp:ListItem Value="4">Bordering Unit</asp:ListItem>
                                                        <asp:ListItem Value="5">Tailoring Unit</asp:ListItem>
                                                        <asp:ListItem Value="6">Complete Unit</asp:ListItem>
                                                   </asp:DropDownList>

                                               </li>
                                                <li>
                                                    <asp:Button class="btn btn-primary" style="height:30px; width: 100px; float:right; margin-top: -35px; margin-right: 320px; text-align:center" ID="btnViewGrid" runat="server" Text="View" OnClick="btnViewGrid_Click" />
                                                </li>

                                            </ul>
                                <div class="row">
                                    <div class="col">
                                        <asp:MultiView ID="MultiViewunittables" runat="server" ActiveViewIndex="0">

                                            <asp:View ID="supervisorhome" runat="server">

                                            </asp:View>
                                            <asp:View ID="Viewprintunit" runat="server">
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HrmsDatabaseConnectionString %>" SelectCommand="SELECT * FROM [printunitTbl]"></asp:SqlDataSource>
                                                <div>

                                                    <asp:GridView ID="GridViewPrintunit" runat="server" AutoGenerateColumns="False" DataKeyNames="Date" DataSourceID="SqlDataSource1">
                                                        <Columns>
                                                            <asp:BoundField DataField="Date" HeaderText="Date" ReadOnly="True" SortExpression="Date" />
                                                            <asp:BoundField DataField="Supervisor_Id" HeaderText="Supervisor_Id" SortExpression="Supervisor_Id" />
                                                            <asp:BoundField DataField="Present_Employees" HeaderText="Present_Employees" SortExpression="Present_Employees" />
                                                            <asp:BoundField DataField="Absence_Employees" HeaderText="Absence_Employees" SortExpression="Absence_Employees" />
                                                            <asp:BoundField DataField="Total_Production" HeaderText="Total_Production" SortExpression="Total_Production" />
                                                            <asp:BoundField DataField="Damage_Count" HeaderText="Damage_Count" SortExpression="Damage_Count" />
                                                        </Columns>
                                                    </asp:GridView>
                                                </div>
                                            </asp:View>
                                            <asp:View ID="ViewHandleunit" runat="server">
                                     

                                            </asp:View>
                                            <asp:View ID="Viewcuttingunit" runat="server">

                                            </asp:View>
                                            <asp:View ID="Viewborderingunit" runat="server">

                                            </asp:View>
                                            <asp:View ID="Viewtailoringunit" runat="server">

                                            </asp:View>
                                            <asp:View ID="Viewcompleteunit" runat="server">


                                            </asp:View>

                                        </asp:MultiView>
                                    </div>


                                </div>

                                              
                                          



                            </div>
                            </div>
                        


              </div>
      </div>
                      
     </div>
               
             
 </asp:View>



            <asp:View ID="ViewTraining" runat="server">

                <div class="container">
                <div class="row justify-content-start">
                <div class="col-4">
                                            


                                           <div class="card" style="height:50rem; width: 40rem;background-color:#50DBB4; margin-left:-60px;margin-right:5px; margin-top:60px; margin-bottom:20px">
                                           <div class="card-body">
                                           <h3 class="card-title" id="traineeCard" style="color:black;text-align:center;font-family:Segoe UI;color:#303952" >Training Need</h3>
                                            
                                                        

                                                               <ul>
                                                               <li>
                                                                <label style="color:#2c3e50; font-size: 17px; margin-top:70px; margin-left:20px"><b>Unit</b></label>&nbsp<asp:DropDownList ID="DropDownList2" runat="server" style="float:right; margin-top:70px; width: 200px; height: 25px">
                                                                <asp:ListItem Value="0">Please Select</asp:ListItem>  
                                                    
                                                                <asp:ListItem Value="1">Print Unit </asp:ListItem>  
                                                                <asp:ListItem Value="2">Handle Unit</asp:ListItem>  
                                                                <asp:ListItem Value="3">Cutting Unit</asp:ListItem> 
                                                                <asp:ListItem Value="4">Bordering Unit</asp:ListItem>
                                                                <asp:ListItem Value="5">Tailoring Unit</asp:ListItem>
                                                                <asp:ListItem Value="6">Complete Unit</asp:ListItem>
                                                                </asp:DropDownList>
                                                                </li>

                                                                <li>
                                                                <label style=" font-size: 17px; color:#2c3e50; margin-top: 30px""><b>Employee Id</b></label>&nbsp<asp:TextBox style="float: right; height:30px; width:200px; margin-left: 20px; margin-top: 30px" CssClass="form-control" ID="TextBox3" runat="server"></asp:TextBox>
                                                                </li>
                                                                <li>
                                                                <label style="margin-bottom: 40px; margin-top: 40px; float:left; font-size: 17px; color:#2c3e50"><b>Date</b></label>&nbsp<asp:TextBox ID="trainDate" runat="server" ReadOnly="true" style="width:200px;height: 25px; float:right; margin-top: 25px; margin-bottom: 40px"></asp:TextBox>
                                                                </li>
                                                                <li>
                                                                <asp:Button class="btn btn-primary" style="float:right; margin-top: 130px; margin-right: -50px" ID="btnSubmitTrain" runat="server" Text="Submit" />
                                                                </li>
                                                                </ul>

                                           </div>
                                           </div>
            </div>



                <div class="col-4">
                         One of two columns
                </div>
                </div>
                </div>
           </asp:View>


            
            <asp:View ID="ViewLeaves" runat="server">


            </asp:View>



            <asp:View ID="ViewEmployee" runat="server">

            </asp:View>


        </asp:MultiView>      


    </div>
</div>
    </form>
</body>
</html>
