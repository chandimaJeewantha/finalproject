<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hrDepartment.aspx.cs" Inherits="synchr2.hrDepartment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/supervisorcss.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
                            <div class="wrapper">
    <div class="sidebar">
        
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
        <div class="header">Welcome!! Have a nice day.</div>  

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

            </asp:View>


        </asp:MultiView>
        


    </div>
</div>
    </form>
</body>
</html>
