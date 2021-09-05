<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productionManager.aspx.cs" Inherits="synchr2.productionManager" %>

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
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
    <div class="sidebar">
        
            <img src="imgs/MicrosoftTeams-image%20(11).png" />
        
        <ul>
            <li><asp:LinkButton ID="btnHome" runat="server" class="fas fa-home" OnClick="btnHome_Click"> Home</asp:LinkButton></li>
            <li><asp:LinkButton ID="btnStatus" runat="server" class="fas fa-umbrella" OnClick="btnStatus_Click"> Daily view Production Efficiency and status of each unit</asp:LinkButton></li>
            <li><asp:LinkButton ID="btnExpenses" runat="server" class="fas fa-child" OnClick="btnExpenses_Click"> Daily view of Expenses in each</asp:LinkButton></li>
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

        <asp:MultiView ID="MultiViewProduction" runat="server" ActiveViewIndex="0">



            <asp:View ID="ViewHome" runat="server">

            </asp:View>


            <asp:View ID="ViewStatus" runat="server">

            </asp:View>


            <asp:View ID="ViewExpenses" runat="server">

            </asp:View>



        </asp:MultiView>
        


    </div>
</div>
    </form>
</body>
</html>
