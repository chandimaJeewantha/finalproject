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
        <div class="header">Welcome!! Have a nice day.</div>
        
        <asp:MultiView ID="MultiViewSupervisor" runat="server" ActiveViewIndex="0">


            <asp:View ID="ViewHome" runat="server">

                
            </asp:View>



            <asp:View ID="ViewProduction" runat="server">
                

            </asp:View>



            <asp:View ID="ViewTraining" runat="server">
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
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
