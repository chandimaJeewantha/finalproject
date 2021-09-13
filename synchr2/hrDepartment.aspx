<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hrDepartment.aspx.cs" Inherits="synchr2.hrDepartment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/supervisorcss.css" rel="stylesheet" />
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

</head>
<body>
    <form id="form1" runat="server">
                            <div class="wrapper">
    <div class="sidebar" style="width:300px">
        
            <img src="imgs/MicrosoftTeams-image%20(11).png" />
        
        <ul>
            <li><asp:LinkButton ID="btnHome" runat="server" class="fas fa-home" OnClick="btnHome_Click"> Home</asp:LinkButton></li>
            <li><asp:LinkButton ID="btnAddemp" runat="server" class="fas fa-umbrella" OnClick="btnAddemp_Click"> Add New Employee</asp:LinkButton></li>
            <li><asp:LinkButton ID="btnProfiles" runat="server" class="fas fa-child" OnClick="btnProfiles_Click"> Active/Inactive Profiles</asp:LinkButton></li>
            <li><asp:LinkButton ID="btnLabourrep" runat="server" class="fas fa-mug-hot" OnClick="btnLabourrep_Click"> Generate labour turn over reports</asp:LinkButton></li>
            <li><asp:LinkButton ID="btnMonthlyrep" runat="server" class="fas fa-address-card" OnClick="btnMonthlyrep_Click"> Monthly Recruitment report</asp:LinkButton></li>
            <li><asp:LinkButton ID="btnPayroll" runat="server" class="fas fa-hand-point-left" OnClick="btnPayroll_Click"> Payroll</asp:LinkButton></li>
            <li><asp:LinkButton ID="btnOutsideworkers" runat="server" class="fas fa-hand-point-left" OnClick="btnOutsideworkers_Click"> Performance Evaluation of outside workers</asp:LinkButton></li>
            <li><asp:LinkButton ID="btnExit" runat="server" class="fas fa-hand-point-left" OnClick="btnExit_Click"> Exit</asp:LinkButton></li>


            
        </ul> 
        <div class="social_media">
          <a href="#"><i class="fab fa-facebook-f"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
      </div>
    </div>
    <div class="main_content">
        

        <asp:MultiView ID="MultiViewSupervisor" runat="server">


            <asp:View ID="ViewHome" runat="server">

              
            </asp:View>



            <asp:View ID="ViewAddemp" runat="server">
           

            </asp:View>



            <asp:View ID="ViewProfiles" runat="server">

            </asp:View>


            
            <asp:View ID="ViewLabourrep" runat="server">


            </asp:View>



            <asp:View ID="ViewMonthlyrep" runat="server">

            </asp:View>


            <asp:View ID="ViewPayroll" runat="server">

            </asp:View>


            <asp:View ID="ViewOutsideworkers" runat="server">
                            


                <div class="container">
                            <div class="row justify-content-start">
                            <div class="col-4">

                            <div class="card" style="border-radius:25px; width: 45rem;background-color:#50DBB4; margin-left:60px;margin-right:5px; margin-top:10px; margin-bottom:20px">
                            <div class="card-body">
                            <h2 class="card-title" id="cardOutSideWorkers" style="color:black;text-align:center;font-family:Segoe UI;color:#303952" >Out Side Workers</h2>
                                                
                                                   <div class="row">
                                                           <div class="col-6">

                                                                <label style="margin-top:10px;color:#2c3e50; font-size: 15px"><b>Month</b></label>
                                                           </div>

                                                           <div class="col-6">
                                                                <asp:DropDownList ID="DropDownListMonth" runat="server" style="margin-left:-30px; margin-top:10px;width: 200px; height: 25px">
                                                                <asp:ListItem Value="0">Please Select</asp:ListItem>  
                                                    
                                                                <asp:ListItem Value="1">January</asp:ListItem>  
                                                                <asp:ListItem Value="2">February </asp:ListItem>  
                                                                <asp:ListItem Value="3">March</asp:ListItem>
                                                                <asp:ListItem Value="1">April </asp:ListItem>  
                                                                <asp:ListItem Value="2">May</asp:ListItem>  
                                                                <asp:ListItem Value="3">June</asp:ListItem>
                                                                <asp:ListItem Value="1">July </asp:ListItem>  
                                                                <asp:ListItem Value="2">August </asp:ListItem>  
                                                                <asp:ListItem Value="3">Seeptember</asp:ListItem>
                                                                <asp:ListItem Value="1">October </asp:ListItem>  
                                                                <asp:ListItem Value="2">November </asp:ListItem>  
                                                                <asp:ListItem Value="3">December</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </div>

                                                   </div>
                                                           
                                                            <br />

                                                   <div class="row">
                                                            <div class="col-6">
                                                                <label style=" margin-top:10px;font-size: 15px; color:#2c3e50"><b>Worker ID</b></label>
                                                            </div>
                                                                
                                                            <div class="col-6">
                                                                <asp:TextBox style=" margin-left:-30px;margin-top:10px;height:30px; width:200px" CssClass="form-control" ID="txtWorkerID" runat="server"></asp:TextBox>
                                                            </div>
                                                   </div>       
                                                             
                                                             <br />

                                                   <div class="row">
                                                            <div class="col-6">
                                                                <label style="margin-top:10px;font-size: 15px; color:#2c3e50"><b>Status</b></label>
                                                            </div>

                                                            <div class="col-6">
                                                                    <asp:TextBox ID="txtStatus" runat="server" style="margin-left:-30px;margin-top:10px;height:30px; width:200px" ReadOnly="True"></asp:TextBox>
                                                            </div>
                                                   </div>  
                                                                
                                                              <br />    

                                       
                                                   <div class="row">
                                                            <div class="col-6">
                                                                <label style=" margin-top:10px;font-size: 15px; color:#2c3e50"><b>Ex1</b></label>
                                                            </div>
                                                                
                                                            <div class="col-6">
                                                                <asp:TextBox style=" margin-left:-30px;margin-top:10px;height:30px; width:200px" CssClass="form-control" ID="txtEx1" runat="server"></asp:TextBox>
                                                            </div>
                                                   </div>
                                <br />
                                                   <div class="row">
                                                            <div class="col-6">
                                                                <label style=" margin-top:10px;font-size: 15px; color:#2c3e50"><b>Ex2</b></label>
                                                            </div>
                                                                
                                                            <div class="col-6">
                                                                <asp:TextBox style=" margin-left:-30px;margin-top:10px;height:30px; width:200px" CssClass="form-control" ID="txtEx2" runat="server"></asp:TextBox>
                                                            </div>
                                                   </div>
                                <br />
                                                   <div class="row">
                                                            <div class="col-6">
                                                                <label style=" margin-top:10px;font-size: 15px; color:#2c3e50"><b>Ex3</b></label>
                                                            </div>
                                                                
                                                            <div class="col-6">
                                                                <asp:TextBox style=" margin-left:-30px;margin-top:10px;height:30px; width:200px" CssClass="form-control" ID="txtEx3" runat="server"></asp:TextBox>
                                                            </div>
                                                   </div>
                                <br />
                                                   

                                                                
                                                                <br />
                                                                <asp:Button ID="btnEvaluate" runat="server" class="btn btn-primary" Height="46px" style="margin-top:20px; margin-left:130px;" Text="Evaluate" Width="147px" />
                                                                <br />

                                                   <div class="row">
                                                            <div class="col">
                                                            </div>
                                                   </div>   
                           
                                
                            </div>
                            </div>
                            </div>
    </div>
    </div>



            </asp:View>


        </asp:MultiView>
        


    </div>
</div>
    </form>
</body>
</html>
