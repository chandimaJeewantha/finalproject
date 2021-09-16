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

    <style>
        body
        {
            background-color:gainsboro;
        }
    </style>
    

</head>
<body>
    <form id="form1" runat="server">
                            <div class="wrapper">
    <div class="sidebar" style="width:300px">
        
            <img src="imgs/MicrosoftTeams-image%20(11).png" style="margin-left:40px" />
        
        <ul>
            <li><asp:LinkButton ID="btnHome" runat="server" class="fas fa-home" OnClick="btnHome_Click"> Home</asp:LinkButton></li>
            <li><asp:LinkButton ID="btnAddemp" runat="server" class="fas fa-ad" OnClick="btnAddemp_Click"> Add New Employee</asp:LinkButton></li>
            <li><asp:LinkButton ID="btnViewProfile" runat="server" class="fas fa-eye" OnClick="btnViewProfile_Click">View Profile</asp:LinkButton></li>
            <li><asp:LinkButton ID="btnProfiles" runat="server" class="fas fa-user-shield" OnClick="btnProfiles_Click"> Active/Inactive Profiles</asp:LinkButton></li>
            <li><asp:LinkButton ID="btnLabourrep" runat="server" class="fas fa-cogs" OnClick="btnLabourrep_Click"> Generate labour turn over reports</asp:LinkButton></li>
            <li><asp:LinkButton ID="btnMonthlyrep" runat="server" class="fas fa-address-card" OnClick="btnMonthlyrep_Click"> Monthly Recruitment report</asp:LinkButton></li>
            
            <li><asp:LinkButton ID="btnOutsideworkers" runat="server" class="fas fa-tasks" OnClick="btnOutsideworkers_Click"> Performance Evaluation of outside workers</asp:LinkButton></li>
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
                
                  <div class="container-fluid">
                            <div class="row justify-content-start">

                                <div class="col-6">
                                  <h3 style="margin-left:300px; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; margin-bottom:-20px; font-size:30px"><i class="fas fa-street-view"></i><b>Person</b></h3>
                                     <div class="card" style="margin-left:100px; background-color:#194C43; width:500px; margin-top:30px">
                                      
                                        <div class="card-body">
                                        <div class="personalInfo">
                                            <h4 style="text-align:left; margin-top:-5px; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa; margin-bottom:-10px">Personal Information</h4>
                                            <br/>
                                            <br/>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label1" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa" runat="server" Text="Initials(*)"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtInitials" style=" width:300px; margin-left:-150px" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label2" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="First Name"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtFirstName" style=" width:300px;  margin-left:-150px" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label3" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Surname"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtSurname" style=" width:300px;  margin-left:-150px" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label4" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Full Name"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtFullName" style=" width:300px; margin-left:-150px" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label5" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Middle Name"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtMiddleName"  style="margin-left:-150px" runat="server"></asp:TextBox>
                                                </div>
                                            </div> 
                                            
                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label6" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Gender"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListGender" style=" width:150px;  text-align:center; height:26px; margin-left:-150px" runat="server">
                                                          <asp:ListItem Value="0">--select--</asp:ListItem>
                                                          <asp:ListItem Value="Male">Male</asp:ListItem>
                                                          <asp:ListItem Value="Female">Female</asp:ListItem> 
                                                     </asp:DropDownList>
                                                </div>
                                             </div>
                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label7" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Title"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListTitle" style=" width:150px; text-align:center;  height:26px; margin-left:-150px" runat="server">
                                                          <asp:ListItem Value="0">--select--</asp:ListItem>
                                                          <asp:ListItem Value="Male">Male</asp:ListItem>
                                                          <asp:ListItem Value="Female">Female</asp:ListItem> 
                                                     </asp:DropDownList>
                                                </div>
                                             </div>
                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label8" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Merital status"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListMeritalStatus" style=" width:150px; text-align:center;  height:26px; margin-left:-150px" runat="server">
                                                          <asp:ListItem Value="0">--select--</asp:ListItem>
                                                          <asp:ListItem Value="Male">Male</asp:ListItem>
                                                          <asp:ListItem Value="Female">Female</asp:ListItem> 
                                                     </asp:DropDownList>
                                                </div>
                                             </div>
                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label9" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Blood Group"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListBloodGroup" style=" width:150px; text-align:center;  height:26px; margin-left:-150px" runat="server">
                                                          <asp:ListItem Value="0">--select--</asp:ListItem>
                                                          <asp:ListItem Value="Male">Male</asp:ListItem>
                                                          <asp:ListItem Value="Female">Female</asp:ListItem> 
                                                     </asp:DropDownList>
                                                </div>
                                             </div>

                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label10" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Date of Birth"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtDOB" style=" width:150px; text-align:center;  margin-left:-150px" runat="server" TextMode="Date"></asp:TextBox>
                                                </div>
                                            </div> 

                                        </div>
                                    </div>

                                    </div>
                                        
                                     
                                     <div class="card" style="margin-left:100px; background-color:#194C43; width:500px; margin-top:5px">
                                
                                        <div class="card-body">
                                        <div class="personalInfo">
                                            <h4 style="text-align:left; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa; margin-top:-5px; margin-bottom:-10px">Identification Information</h4>
                                            <br/>
                                            <br/>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label11" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="NIC Number"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <div class="input-group">
                                                        <asp:TextBox ID="txtNICNumber" style=" width:200px; margin-left:-80px" runat="server"></asp:TextBox>
                                                        
                                                     </div>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label12" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Driving License Number"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtDrivingLicenseNumber" style=" width:200px;  margin-left:-80px" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label13" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Passport Number"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtPassportNumber" style=" width:200px;  margin-left:-80px" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label14" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Passport Expiry Date"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtPassportExpryDate" style=" width:200px; text-align:center;  margin-left:-80px" runat="server" TextMode="Date"></asp:TextBox>
                                                </div>
                                            </div>
                                             
                                        
                                            
                                        </div>
                                    </div>

                                    </div>


                                     <div class="card" style="margin-left:100px; background-color:#194C43; width:500px; margin-top:5px">
                                
                                        <div class="card-body">
                                        <div class="personalInfo">
                                            <h4 style="text-align:left; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa; margin-top:-5px; margin-bottom:-10px">Ethnic Information</h4>
                                            <br/>
                                            <br/>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label15" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Religon Number"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListReligonNumber" style=" width:150px;  text-align:center; height:26px; margin-left:-100px" runat="server">
                                                          <asp:ListItem Value="0">--select one--</asp:ListItem>
                                                          <asp:ListItem Value="Male">Male</asp:ListItem>
                                                          <asp:ListItem Value="Female">Female</asp:ListItem> 
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label16" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Race"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListRace" style=" width:150px;  text-align:center; height:26px; margin-left:-100px" runat="server">
                                                          <asp:ListItem Value="0">--select one--</asp:ListItem>
                                                          <asp:ListItem Value="Male">Male</asp:ListItem>
                                                          <asp:ListItem Value="Female">Female</asp:ListItem> 
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label17" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Nationality"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListNationality" style=" width:150px;  text-align:center; height:26px; margin-left:-100px" runat="server">
                                                          <asp:ListItem Value="0">--select one--</asp:ListItem>
                                                          <asp:ListItem Value="Male">Male</asp:ListItem>
                                                          <asp:ListItem Value="Female">Female</asp:ListItem> 
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </div>

                                    </div> 

                                     
                                     <div class="card" style="margin-left:100px; background-color:#194C43; width:500px; margin-top:5px">
                                
                                        <div class="card-body">
                                        <div class="personalInfo">
                                            <h4 style="text-align:left; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa; margin-top:-5px; margin-bottom:-10px">Living Situation</h4>
                                            <br/>
                                            <br/>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label18" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Living Status"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListLivingStatus" style=" width:150px;text-align:center; height:26px; margin-left:-80px" runat="server">
                                                          <asp:ListItem Value="0">--select one--</asp:ListItem>
                                                          <asp:ListItem Value="Male">Male</asp:ListItem>
                                                          <asp:ListItem Value="Female">Female</asp:ListItem> 
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                            
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label20" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="No: of Department"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtNumberOfDepartment" style=" width:200px; margin-left:-80px" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label21" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="No: of Children"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtNumberOfChildren" style=" width:200px; margin-left:-80px" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                             
                                        
                                            
                                        </div>
                                    </div>

                                    </div> 

                                        
                                      <div class="card" style="margin-left:100px; background-color:gainsboro; width:500px; margin-top:5px">
                                
                                        <div class="card-body">
                                        <div class="personalInfo">
                                            
                                            <br/>
                                           
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col-6">
                                                    <asp:Button ID="btnNew" class="btn btn-danger btn-block" runat="server" Text="New" OnClick="btnNew_Click" />
                                                </div>
                                                
                                                <div class="col-6">
                                                     <asp:Button ID="btnPersonClear" class="btn btn-primary btn-block" runat="server" Text="Clear" OnClick="btnPersonClear_Click" />
                                                </div>
                                            </div>
                                            
                                   
                                        </div>
                                    </div>

                                    </div>  

                              </div>

                                <div class="col-6" style="margin-left:-43px">
                                  <h3 style="margin-left:300px; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; margin-bottom:-20px; font-size:30px; text-decoration-style:solid"><i class="fas fa-users-cog"></i><b>Worker</b></h3>
                                     <div class="card" style="margin-left:100px; background-color:#194C43; width:500px; margin-top:30px">
                                      
                                        <div class="card-body">
                                        <div class="personalInfo">
                                            <h4 style="text-align:left; margin-top:-5px; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa; margin-bottom:-10px">Employee Numbers</h4>
                                            <br/>
                                            <br/>

                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label22" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa" runat="server" Text="Employee Number"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtEmployeeNumber" style=" width:300px; margin-left:-100px" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label23" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="NIC Number"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtNicsNumber" style=" width:300px;  margin-left:-100px" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label24" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="EPF No"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtEPFNumber" style=" width:300px;  margin-left:-100px" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label25" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Previous EPF No"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtPreviousEpfNumber" style=" width:300px; margin-left:-100px" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            

                                        </div>
                                    </div>

                                    </div>
                                        
                                     
                                     <div class="card" style="margin-left:100px; background-color:#194C43; width:500px; margin-top:5px">
                                
                                        <div class="card-body">
                                        <div class="personalInfo">
                                            <h4 style="text-align:left; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa; margin-top:-5px; margin-bottom:-10px">Organization Details</h4>
                                            <br/>
                                            <br/>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label32" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Group(*)"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                      <asp:DropDownList ID="DropDownListGroup" style=" width:150px; text-align:center;  height:26px; margin-left:-80px" runat="server">
                                                          <asp:ListItem Value="0">--select--</asp:ListItem>
                                                          <asp:ListItem Value="Male">Male</asp:ListItem>
                                                          <asp:ListItem Value="Female">Female</asp:ListItem> 
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label33" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Company(*)"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                      <asp:DropDownList ID="DropDownListCompany" style=" width:150px; text-align:center;  height:26px; margin-left:-80px" runat="server">
                                                          <asp:ListItem Value="0">--select--</asp:ListItem>
                                                          <asp:ListItem Value="Male">Male</asp:ListItem>
                                                          <asp:ListItem Value="Female">Female</asp:ListItem> 
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label34" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Department"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListDeprtment" style=" width:150px; text-align:center;  height:26px; margin-left:-80px" runat="server">
                                                          <asp:ListItem Value="0">--select--</asp:ListItem>
                                                          <asp:ListItem Value="Male">Male</asp:ListItem>
                                                          <asp:ListItem Value="Female">Female</asp:ListItem> 
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label35" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Division"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListDivision" style=" width:150px; text-align:center;  height:26px; margin-left:-80px" runat="server">
                                                          <asp:ListItem Value="0">--select--</asp:ListItem>
                                                          <asp:ListItem Value="Male">Male</asp:ListItem>
                                                          <asp:ListItem Value="Female">Female</asp:ListItem> 
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label26" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Seconded Department"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListSecondedDepartment" style=" width:150px; text-align:center;  height:26px; margin-left:-80px" runat="server">
                                                          <asp:ListItem Value="0">--select--</asp:ListItem>
                                                          <asp:ListItem Value="Male">Male</asp:ListItem>
                                                          <asp:ListItem Value="Female">Female</asp:ListItem> 
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                             
                                        
                                            
                                        </div>
                                    </div>

                                    </div>


                                     <div class="card" style="margin-left:100px; background-color:#194C43; width:500px; margin-top:5px">
                                
                                        <div class="card-body">
                                        <div class="personalInfo">
                                            <h4 style="text-align:left; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa; margin-top:-5px; margin-bottom:-10px">Employee Position</h4>
                                            <br/>
                                            <br/>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label36" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Job Category"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListJobCategory" style=" width:150px;  text-align:center; height:26px; margin-left:-100px" runat="server">
                                                          <asp:ListItem Value="0">--select one--</asp:ListItem>
                                                          <asp:ListItem Value="Male">Male</asp:ListItem>
                                                          <asp:ListItem Value="Female">Female</asp:ListItem> 
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label37" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Current Designation"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListCurrentDesignation" style=" width:300px; height:26px; margin-left:-100px" runat="server">
                                                          <asp:ListItem style="font-style:italic" Value="0" Selected="True">select designation</asp:ListItem>
                                                          <asp:ListItem Value="Male">Male</asp:ListItem>
                                                          <asp:ListItem Value="Female">Female</asp:ListItem> 
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label38" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Joined Designation"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListJoinedDesignation" style=" width:300px; text-align:left; height:26px; margin-left:-100px" runat="server">
                                                          <asp:ListItem style="font-style:italic" Value="0">select joined designation</asp:ListItem>
                                                          <asp:ListItem Value="Male">Male</asp:ListItem>
                                                          <asp:ListItem Value="Female">Female</asp:ListItem> 
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label27" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Reporting Designation"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListReportingDesignation" style=" width:300px; text-align:left; height:26px; margin-left:-100px" runat="server">
                                                          <asp:ListItem style="font-style:italic" Value="0">select reporting designation</asp:ListItem>
                                                          <asp:ListItem Value="Male">Male</asp:ListItem>
                                                          <asp:ListItem Value="Female">Female</asp:ListItem> 
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label28" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Reporting Persion"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListReportingPersion" style=" width:300px;  text-align:left; height:26px; margin-left:-100px" runat="server">
                                                          <asp:ListItem style="font-style:italic" Value="0">select reporting persion</asp:ListItem>
                                                          <asp:ListItem Value="Male">Male</asp:ListItem>
                                                          <asp:ListItem Value="Female">Female</asp:ListItem> 
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label29" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Location Branch"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListLocationBranch" style=" width:150px;  text-align:center; height:26px; margin-left:-100px" runat="server">
                                                          <asp:ListItem Value="0">--select one--</asp:ListItem>
                                                          <asp:ListItem Value="Male">Male</asp:ListItem>
                                                          <asp:ListItem Value="Female">Female</asp:ListItem> 
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label30" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Assign JD"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                    <a  href="#" style="margin-left:-100px; color:aliceblue;">Click to Assign</a>      
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    </div> 

                                     
                                     <div class="card" style="margin-left:100px; background-color:#194C43; width:500px; margin-top:5px">
                                
                                        <div class="card-body">
                                        <div class="personalInfo">
                                            <h4 style="text-align:left; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa; margin-top:-5px; margin-bottom:-10px">Employeement Details</h4>
                                            <br/>
                                            <br/>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label39" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Basic Salary"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <div class="input-group">
                                                     <asp:TextBox ID="txtBasicSalary" style="margin-left:-40px; text-align:right" runat="server"> .00</asp:TextBox>
                                                     <asp:DropDownList ID="DropDownListLKR" style=" width:80px;text-align:center; height:24px; margin-left:5px" runat="server">
                                                          <asp:ListItem Value="0">LKR</asp:ListItem>
                                                          <asp:ListItem Value="Male">Male</asp:ListItem>
                                                          <asp:ListItem Value="Female">Female</asp:ListItem> 
                                                     </asp:DropDownList>
                                                     </div>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label31" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Budgetary Relief Allowance 02"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <div class="input-group">
                                                     <asp:TextBox ID="txtBudgetaryReliefAllowance02" style="margin-left:-40px; text-align:right" runat="server"> .00</asp:TextBox>
                                                     </div>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label43" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Budgetary Relief Allowance 01"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <div class="input-group">
                                                     <asp:TextBox ID="txtBudgetaryReliefAllowance01" style="margin-left:-40px; text-align:right" runat="server"> .00</asp:TextBox>
                                                     </div>
                                                </div>
                                            </div>
                                            <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label40" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Employeement Plan"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <div class="input-group">                                                   
                                                     <asp:DropDownList ID="DropDownListEmployeementPlan" style=" width:330px;text-align:left; height:24px; margin-left:-100px" runat="server">
                                                          <asp:ListItem Value="0">--select one--</asp:ListItem>
                                                          <asp:ListItem Value="Male">Male</asp:ListItem>
                                                          <asp:ListItem Value="Female">Female</asp:ListItem> 
                                                     </asp:DropDownList>
                                                     </div>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label41" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Annual Leave"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <div class="input-group">                                                   
                                                        <asp:TextBox ID="txtAnnualLeave" style="margin-left:-40px" runat="server"></asp:TextBox>
                                                     </div>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label42" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Casula Leave"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <div class="input-group">                                                   
                                                        <asp:TextBox ID="txtCasualLeave" style="margin-left:-40px" runat="server"></asp:TextBox>
                                                     </div>
                                                </div>
                                            </div>
                                            
                                            
                                            
                                            
                                        </div>
                                    </div>

                                    </div> 

                                        
                                     <div class="card" style="margin-left:100px; background-color:gainsboro; width:500px; margin-top:5px">
                                
                                        <div class="card-body">
                                        <div class="personalInfo">
                                            
                                            <br/>
                                           
                                             <div class="row" style="margin-bottom:10px;" >
                                                 <div class="col-6">
                                                     <asp:Button ID="btnSaveWork" class="btn btn-danger btn-block" runat="server" Text="Save" OnClick="btnSaveWork_Click" />
                                                </div>
                                                <div class="col-6">
                                                     <asp:Button ID="btnWorkClear" class="btn btn-primary btn-block" runat="server" Text="Clear" OnClick="btnWorkClear_Click" />
                                                </div>
                                            </div>
                                            
                                   
                                        </div>
                                    </div>

                                    </div>  

                              </div>

           
                           </div>
                      </div>
                    
            </asp:View>



            <asp:View ID="ViewProfiles" runat="server">

            </asp:View>


            
            <asp:View ID="ViewLabourrep" runat="server">


            </asp:View>



            <asp:View ID="ViewMonthlyrep" runat="server">

            </asp:View>


           


            <asp:View ID="ViewOutsideworkers" runat="server">
                            


                <div class="container">
                            <div class="row justify-content-start">
                            <div class="col-4">

                            <div class="card" style="border-radius:25px; width: 45rem;background-color:#50DBB4; margin-left:60px;margin-right:5px; margin-top:10px; margin-bottom:20px">
                            <div class="card-body">
                            <h2 class="card-title" id="cardOutSideWorkers" style="color:black;text-align:center;font-family:Segoe UI;color:#303952" >Preformance Evaluation of Out Side Workers</h2>
                                                
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
                                                                <label style="margin-top:10px;font-size: 15px; color:#2c3e50"><b>Profit Precentage</b></label>
                                                            </div>

                                                            <div class="col-6">
                                                                    <asp:TextBox ID="txtProfitPrecentage" runat="server" style="margin-left:-30px;margin-top:10px;height:30px; width:200px" CssClass="form-control" placeholder="Profit Precentage" ReadOnly="True"></asp:TextBox>
                                                            </div>
                                                   </div>  
                                                                
                                                              <br />    

                                       
                                                   <div class="row">
                                                            <div class="col-6">
                                                                <label style=" margin-top:10px;font-size: 15px; color:#2c3e50"><b>Reject Precentage</b></label>
                                                            </div>
                                                                
                                                            <div class="col-6">
                                                                <asp:TextBox style=" margin-left:-30px;margin-top:10px;height:30px; width:200px" CssClass="form-control" ID="txtReject" runat="server" placeholder="Reject Precentage" ReadOnly="True"></asp:TextBox>
                                                            </div>
                                                   </div>
                                <br />
                                                   <div class="row">
                                                            <div class="col-6">
                                                                <label style=" margin-top:10px;font-size: 15px; color:#2c3e50"><b>Final Status</b></label>
                                                            </div>
                                                                
                                                            <div class="col-6">
                                                                <asp:TextBox style=" margin-left:-30px;margin-top:10px;height:30px; width:200px" CssClass="form-control" ID="txtFinalStatus" runat="server" placeholder="Final Status" ReadOnly="True"></asp:TextBox>
                                                            </div>
                                                   </div>
                                <br />
                                                   <div class="row">
                                                            <div class="col-6">
                                                                <label style=" margin-top:10px;font-size: 15px; color:#2c3e50"><b>Gross Profit Amount</b></label>
                                                            </div>
                                                                
                                                            <div class="col-6">
                                                                <asp:TextBox style=" margin-left:-30px;margin-top:10px;height:30px; width:200px" CssClass="form-control" ID="txtGrossProfit" runat="server" placeholder="Gross Profit" ReadOnly="True"></asp:TextBox>
                                                            </div>
                                                   </div>
                                <br />
                                                   

                                                                
                                                                <br />
                                                                <asp:Button ID="btnEvaluate" runat="server" class="btn btn-primary" Height="46px" style="margin-top:20px; margin-left:130px;" Text="Evaluate" Width="147px" OnClick="btnEvaluate_Click" />
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
