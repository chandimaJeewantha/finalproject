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
        <br/>
        <br/>
        
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
       
    </div>
    <div class="main_content">
        

        <asp:MultiView ID="MultiViewSupervisor" runat="server">


            <asp:View ID="ViewHome" runat="server">

              
            </asp:View>



            <asp:View ID="ViewAddemp" runat="server">
                  <div class="container-fluid">
                            <div class="row justify-content-start">

                                <div class="col-6">
                                  <h3 style="margin-left:300px; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; margin-bottom:-20px; font-size:30px"><i style="margin-left:-130px; margin-top:20px" class="fas fa-street-view"></i><b>Personal Details</b></h3>
                                     <div class="card" style="margin-left:150px; background-color:#194C43; width:500px; margin-top:30px">
                                      
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
                                                          <asp:ListItem Value="Mr">Mr</asp:ListItem>
                                                          <asp:ListItem Value="Mrs">Mrs</asp:ListItem>
                                                         <asp:ListItem Value="Miss">Miss</asp:ListItem>
                                                         <asp:ListItem Value="Ms">Ms</asp:ListItem>
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
                                                          <asp:ListItem Value="Single">Single</asp:ListItem>
                                                          <asp:ListItem Value="Married">Married</asp:ListItem> 
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
                                                          <asp:ListItem Value="A+">A+</asp:ListItem>
                                                          <asp:ListItem Value="O+">O+</asp:ListItem>
                                                         <asp:ListItem Value="B+">B+</asp:ListItem>
                                                         <asp:ListItem Value="AB+">AB+</asp:ListItem>
                                                         <asp:ListItem Value="A-">A-</asp:ListItem>
                                                         <asp:ListItem Value="O-">O-</asp:ListItem>
                                                         <asp:ListItem Value="B-">B-</asp:ListItem>
                                                         <asp:ListItem Value="AB-">AB-</asp:ListItem>
                                                         
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
                                        
                                     
                                     <div class="card" style="margin-left:150px; background-color:#194C43; width:500px; margin-top:5px">
                                
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


                                     <div class="card" style="margin-left:150px; background-color:#194C43; width:500px; margin-top:5px">
                                
                                        <div class="card-body">
                                        <div class="personalInfo">
                                            <h4 style="text-align:left; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa; margin-top:-5px; margin-bottom:-10px">Ethnic Information</h4>
                                            <br/>
                                            <br/>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label15" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Religon"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListReligonNumber" style=" width:150px;  text-align:center; height:26px; margin-left:-100px" runat="server">
                                                          <asp:ListItem Value="0">--select one--</asp:ListItem>
                                                          <asp:ListItem Value="Buddhist">Buddhist</asp:ListItem>
                                                          <asp:ListItem Value="Catholic">Catholic</asp:ListItem>
                                                         <asp:ListItem Value="Hindu">Hindu</asp:ListItem>
                                                         <asp:ListItem Value="Islam">Islam</asp:ListItem>
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
                                                          <asp:ListItem Value="Sinhala">Sinhala</asp:ListItem>
                                                          <asp:ListItem Value="Tamil">Tamil</asp:ListItem>
                                                         <asp:ListItem Value="Muslim">Muslim</asp:ListItem>
                                                         <asp:ListItem Value="Other">Other</asp:ListItem>
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
                                                          <asp:ListItem Value="Sri lankan">Sri Lankan</asp:ListItem>
                                                          <asp:ListItem Value="Indian">Indian</asp:ListItem> 
                                                         <asp:ListItem Value="Other">Other</asp:ListItem>
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </div>

                                    </div> 

                                     
                                     <div class="card" style="margin-left:150px; background-color:#194C43; width:500px; margin-top:5px">
                                
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
                                                          <asp:ListItem Value="Home">Home</asp:ListItem>
                                                          <asp:ListItem Value="Bording House">Bording House</asp:ListItem>
                                                         <asp:ListItem Value="Hostel">Hostel</asp:ListItem>
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

                                        
                                      <div class="card" style="margin-left:150px; background-color:gainsboro; width:500px; margin-top:5px">
                                
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
                                  <h3 style="margin-left:130px; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; margin-bottom:-20px; font-size:30px; text-decoration-style:solid"><i style="margin-left:-40px; margin-top:20px" class="fas fa-users-cog"></i><b>Employeement Details</b></h3>
                                     <div class="card" style="margin-left:70px; background-color:#194C43; width:500px; margin-top:30px">
                                      
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
                                        
                                     
                                     <div class="card" style="margin-left:70px; background-color:#194C43; width:500px; margin-top:5px">
                                
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
                                                          <asp:ListItem Value="Aenvera Group">Aenvera Group</asp:ListItem>
                                                          <asp:ListItem Value="Sync Group">Sync Group</asp:ListItem> 
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
                                                          <asp:ListItem Value="Sync Umbrella">Sync Umbrella</asp:ListItem>
                                                          <asp:ListItem Value="Sync Food">Sync Food</asp:ListItem> 
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
                                                          <asp:ListItem Value="Hr">Hr</asp:ListItem>
                                                          <asp:ListItem Value="Marketing">Marketing</asp:ListItem>
                                                         <asp:ListItem Value="Finance">Finance</asp:ListItem>
                                                         <asp:ListItem Value="Accounting">Accounting</asp:ListItem>
                                                         <asp:ListItem Value="Production">Production</asp:ListItem>
                                                         <asp:ListItem Value="Quality Assurance">Quality Assurance</asp:ListItem>


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
                                                          <asp:ListItem Value="Print">Print</asp:ListItem>
                                                          <asp:ListItem Value="Handle">Handle</asp:ListItem>
                                                            <asp:ListItem Value="Cutting">Cutting</asp:ListItem>
                                                            <asp:ListItem Value="Bordering">Bordering</asp:ListItem>
                                                            <asp:ListItem Value="Tailoring">Tailoring</asp:ListItem>
                                                         <asp:ListItem Value="Complete">Complete</asp:ListItem>
                                                        
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
                                                          <asp:ListItem Value="Sync Second">Sync Second</asp:ListItem>
                                                          <asp:ListItem Value="Sync Third">Sync Third</asp:ListItem> 
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                             
                                        
                                            
                                        </div>
                                    </div>

                                    </div>


                                     <div class="card" style="margin-left:70px; background-color:#194C43; width:500px; margin-top:5px">
                                
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
                                                          <asp:ListItem Value="Minor">Minor</asp:ListItem>
                                                          <asp:ListItem Value="Staff">Staff</asp:ListItem>
                                                       
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
                                                         <asp:ListItem Value="0">--select one--</asp:ListItem>
                                                          <asp:ListItem Value="Coo">Coo</asp:ListItem>
                                                          <asp:ListItem Value="Genaral Manager">Genaral Manager</asp:ListItem>
                                                         <asp:ListItem Value="Manager"> Manager</asp:ListItem>
                                                         <asp:ListItem Value="Assistant Manager">Assistant Manager</asp:ListItem>
                                                         <asp:ListItem Value="Executive">Executive</asp:ListItem>
                                                         <asp:ListItem Value="Assitant">Assistant</asp:ListItem>
                                                         <asp:ListItem Value="Supervisor">Supervisor</asp:ListItem>
                                                         <asp:ListItem Value="Worker">Worker</asp:ListItem>
                                                        
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
                                                         <asp:ListItem Value="0">--select one--</asp:ListItem>
                                                          <asp:ListItem Value="Coo">Coo</asp:ListItem>
                                                          <asp:ListItem Value="Genaral Manager">Genaral Manager</asp:ListItem>
                                                         <asp:ListItem Value="Manager"> Manager</asp:ListItem>
                                                         <asp:ListItem Value="Assistant Manager">Assistant Manager</asp:ListItem>
                                                         <asp:ListItem Value="Executive">Executive</asp:ListItem>
                                                         <asp:ListItem Value="Assitant">Assistant</asp:ListItem>
                                                         <asp:ListItem Value="Supervisor">Supervisor</asp:ListItem>
                                                         <asp:ListItem Value="Worker">Worker</asp:ListItem>
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
                                                         <asp:ListItem Value="0">--select one--</asp:ListItem>
                                                          <asp:ListItem Value="Coo">Coo</asp:ListItem>
                                                          <asp:ListItem Value="Genaral Manager">Genaral Manager</asp:ListItem>
                                                         <asp:ListItem Value="Manager"> Manager</asp:ListItem>
                                                         <asp:ListItem Value="Assistant Manager">Assistant Manager</asp:ListItem>
                                                         <asp:ListItem Value="Executive">Executive</asp:ListItem>
                                                         <asp:ListItem Value="Assitant">Assistant</asp:ListItem>
                                                         <asp:ListItem Value="Supervisor">Supervisor</asp:ListItem>
                                                         <asp:ListItem Value="Worker">Worker</asp:ListItem>
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
                                                          <asp:ListItem Value="Mr.Gamunu">Mr.Gamunu</asp:ListItem>
                                                          <asp:ListItem Value="Mr.Chamath">Mr.Chamath</asp:ListItem>
                                                         <asp:ListItem Value="Mr.Janaka">Mr.Janaka</asp:ListItem>
                                                          <asp:ListItem Value="Mr.Sugath">Mr.Sugath</asp:ListItem>
                                                          <asp:ListItem Value="Mr.Nimal">Mr.Nimal</asp:ListItem>
                                                         <asp:ListItem Value="Mr.Kamal">Mr.Kamal</asp:ListItem>
                                                         <asp:ListItem Value="Mr.Chamara">Mr.Chamara</asp:ListItem>
                                                         <asp:ListItem Value="Mrs.Anoma">Mrs.Anoma</asp:ListItem>
                                                         <asp:ListItem Value="Mrs.Seetha">Mrs.Seetha</asp:ListItem>
                                                         <asp:ListItem Value="Mrs.Renuka">Mrs.Renuka</asp:ListItem>
                                                         <asp:ListItem Value="Mrs.Sachini">Mrs.Sachini</asp:ListItem>
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
                                                          <asp:ListItem Value="Kandy">Kandy</asp:ListItem>
                                                          <asp:ListItem Value="Mawanella">Mawanella</asp:ListItem> 
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

                                     
                                     <div class="card" style="margin-left:70px; background-color:#194C43; width:500px; margin-top:5px">
                                
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
                                                         
                                                            
                                                     <asp:TextBox ID="txtBasicSalary" style="margin-left:-45px; text-align:right" runat="server"> .00</asp:TextBox>
                                                     <asp:DropDownList ID="DropDownListLKR" style=" width:80px;text-align:center; height:24px; margin-left:5px; margin-right:-5px" runat="server">
                                                          <asp:ListItem Value="0">LKR</asp:ListItem>
                                                         
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
                                                          <asp:ListItem Value="Executive">Executive</asp:ListItem>
                                                          <asp:ListItem Value="Nonexecutive">Nonexecutive</asp:ListItem> 
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

                                        
                                     <div class="card" style="margin-left:70px; background-color:gainsboro; width:500px; margin-top:5px">
                                
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
                <div class="container">
                    <div class="row justify-content-start">

                        <div class="col-4">
                            <div class="card" style="height:25rem; width: 40rem;  background-color:#194C43; margin-top:30px; margin-bottom:20px">
                                           <div class="card-body">
                                           <h3 class="card-title" id="viewprofileCard1"  style=" text-align:center; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa; margin-bottom:10px;"><b>Find</b></h3>
                                            
                                                        

                                                               <div class="row">
                                                                   <div class="col-6">
                                                                 
                                                                    <label style="margin-top:30px; margin-left:10px; font-size:medium; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa""><b>Employee Id</b></label><asp:TextBox ID="txtEmployeeIdsearch" runat="server"></asp:TextBox>
                                                               </div>

                                                                   <div class="col-6">
                                                                     
                                                                       <label style="margin-top:30px; margin-left:10px; font-size:medium; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa""><b>NIC No</b></label><asp:TextBox ID="txtNicsearch" runat="server"></asp:TextBox>
                                                                   
                                                                           </div>

                                                                </div>
                                                                <br />
                                                                <br />

                                                                <div class="row">
                                                                 
                                                                <asp:Button class="btn btn-danger" style="margin-top:10px; margin-left:120px;width:150px" ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                                                                </div>

                                              
                                                               
                                                                    
                                                             
                                               
                                           </div>
                                           </div>
                        </div>


                        <div class="col-4">                    
                            <div class="card" style="margin-left:-350px; background-color:#194C43; width:500px; margin-top:300px">
                                      
                                        <div class="card-body">
                                        <div class="personalInfo">
                                            <h4 style="text-align:left; margin-top:-5px; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa; margin-bottom:-10px">Personal Details</h4>
                                            <br/>
                                            <br/>
                                            <br/>
                                                
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col-4">
                                                    <asp:Label ID="Label53" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa; margin-left:10px" runat="server" Text="NIC No"></asp:Label>
                                                </div>
                                                <div class="col-4">
                                                     <asp:TextBox ID="txtPersonDetailNicNo" style=" width:210px; margin-left:-80px" runat="server" ReadOnly="false"></asp:TextBox>
                                                </div>
                                                <div class="col-4">
                                                    <asp:Button ID="btnPersonalDataView" style="width:100px; height:30px; margin-left:-30px" class="btn btn-danger" runat="server" Text="View" OnClick="btnPersonalDataView_Click" />
                                                </div>
                                            </div>
                                                
                                              
                                            <br/>
                                            <br/>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label19" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa" runat="server" Text="Full Name"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtFullNames" style=" margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label44" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Gender"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtGenders" style="  margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label45" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Marital Status"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtMaritalStatus" style=" margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label46" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Blood Group"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtBloodGroup" style=" margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label47" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Date of birth"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtDoBs"  style="margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div> 
                                            
                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label48" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Nationality"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                      <asp:TextBox ID="txtNationalitys"  style="margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                             </div>
                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label49" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Race"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                      <asp:TextBox ID="txtRace"  style="margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                             </div>
                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label50" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="No of children"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtNoOfChildrens"  style="margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                             </div>
                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label51" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Living Status"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtLivingStatuss"  style="margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                             </div>

                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label52" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Religon"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtReligones" style=" width:210px;margin-left:-100px" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div> 

                                        </div>
                                    </div>

                                    </div> 
                            </div>
                        


                        <div class="col-4">
                    
                             <div class="card" style="margin-left:-150px; background-color:#194C43; width:500px; margin-top:300px">
                                      
                                        <div class="card-body">
                                        <div class="personalInfo">
                                            <h4 style="text-align:left; margin-top:-5px; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa; margin-bottom:-10px">Employeement Details</h4>
                                            <br/>
                                            <br/>
                                            <br/>
                                                
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col-4">
                                                    <asp:Label ID="Label54" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa; margin-left:10px" runat="server" Text="Employee Id"></asp:Label>
                                                </div>
                                                <div class="col-4">
                                                     <asp:TextBox ID="txtEmpId" style=" width:210px; margin-left:-40px" runat="server" ></asp:TextBox>
                                                </div>
                                                <div class="col-4">
                                                    <asp:Button ID="btnEmpDetailsView" style="width:100px; height:30px; margin-left:10px" class="btn btn-danger" runat="server" Text="View" OnClick="btnEmpDetailsView_Click" />
                                                </div>
                                            </div>
                                                
                                              
                                            <br/>
                                            <br/>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label55" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa" runat="server" Text="EPF No"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtEmpDetailsEPFNo" style=" margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label56" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Previous EPF No"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtEmpDetailsPreviousEPFNo" style="  margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label57" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Group"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtEmpDetailsGroup" style=" margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label58" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Company"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtEmpDetailsCompany" style=" margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label59" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Department"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtEmpDetailsDepartment"  style="margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div> 
                                            
                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label60" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Division"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                      <asp:TextBox ID="txtEmpDetailsDivision"  style="margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                             </div>
                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label61" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Job Category"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                      <asp:TextBox ID="txtEmpDetailsJobCategory"  style="margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                             </div>
                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label62" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Current Designation"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtEmpDetailsCurrentDesignation"  style="margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                             </div>
                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label63" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Annual Leave"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtEmpDetailsAnnualLeave"  style="margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                             </div>

                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label64" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Casual Leave"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtEmpDetailsCasulaLeave" style=" width:210px;  margin-left:-100px" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div> 

                                        </div>
                                    </div>

                                    </div> 
                    
                        </div>

                        </div>
                    </div>

            </asp:View>


            <asp:View ID="ViewActiveInactive" runat="server">


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
