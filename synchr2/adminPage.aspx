<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminPage.aspx.cs" Inherits="synchr2.adminPage" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    
    <link href="boostrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/CustmCss.css" rel="stylesheet" />
    <link href="fontawesome/css/all.css" rel="stylesheet" />
    <link href="table/css/jquery.dataTables.min.css" rel="stylesheet" />

    <script src="boostrap/js/jquery-3.3.1.slim.min.js"></script>
    <script src="boostrap/js/popper.min.js"></script>
    <script src="boostrap/js/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%-- Nav Bar--%>
            <nav class="navbar navbar-expand-lg navbar-light" id="demoNav">
                 <div class="collapse navbar-collapse" id="navbarSupportedContent">
                   
                </div>
            </nav>

                        <div class="container">
                           <div class="row">
                              <div class="col-sm" id="1stcol">
                                    <%--card add operator --%>
                                      <div class="card" style="width: 22rem;background-color:#50DBB4; margin-left:-30%; margin-top:20px; margin-bottom:20px">
                                           <div class="card-body">
                                             <h3 class="card-title" id="cardtitle" style="color:black;text-align:center;font-family:Segoe UI;color:#303952" >Add Operator</h3>
                                               <center>
                                                  <asp:DropDownList ID="selectDepartment" runat="server">
                                                  <asp:ListItem Value="0">Please Select</asp:ListItem>  
                                                    
                                                  <asp:ListItem Value="1">HR Department </asp:ListItem>  
                                                  <asp:ListItem Value="2">Supervisor</asp:ListItem>  
                                                  <asp:ListItem Value="3">Production Manager</asp:ListItem>  
                                                 </asp:DropDownList>
                                               </center>
                                               <br />
                                               <div class="form-group">
                                                  <label style="color:#2c3e50"><b>Employee Id</b></label>&nbsp<asp:TextBox style="height:30px" CssClass="form-control" ID="txtEmployeeId" runat="server"></asp:TextBox>
                                                   <br />
                                                   <label style="color:#2c3e50"><b>User Name</b></label>&nbsp<asp:TextBox style="height:30px;" CssClass="form-control" ID="txtUserName" runat="server"></asp:TextBox>
                                                   <br />
                                                   <label style="color:#2c3e50"><b>Password</b></label>&nbsp<asp:TextBox style="height:30px;" CssClass="form-control" ID="txtPassword" runat="server"></asp:TextBox>
                                                   <br />
                                                   <label style="color:#2c3e50"><b>Security Question</b></label>&nbsp<asp:DropDownList ID="DropDownListSecurityQuestion" CssClass="form-control" runat="server">
                                                  <asp:ListItem Value="0">Please Select</asp:ListItem>  
                                                  <asp:ListItem Value="1">In what city were you born?</asp:ListItem>  
                                                  <asp:ListItem Value="2">What is the name of your favorite pet?</asp:ListItem>  
                                                  <asp:ListItem Value="3">What high school did you attend?</asp:ListItem>  
                                                  <asp:ListItem Value="4">What was your favorite food as a child?</asp:ListItem>
                                                  <asp:ListItem Value="5">What is your favorite car?</asp:ListItem> 
                                                 </asp:DropDownList>
                                                   <br />
                                                   <label style="color:#2c3e50"><b>Answer</b></label>&nbsp<asp:TextBox style="height:30px;" CssClass="form-control" ID="txtAnswer" runat="server"></asp:TextBox>
                                                  <br />
                                                    <center>
                                                        <div class="btn-group btn-group-lg" role="group" aria-label="Basic example" style="margin-left:-200px">
                                                         <asp:Button ID="btnAdd" runat="server" Text="Add" class="btn btn-secondary" OnClick="btnAdd_Click"  />
                                                            <asp:Button ID="btnUpdate" runat="server" Text="Update" class="btn btn-secondary" OnClick="btnUpdate_Click" />
                                                             <asp:Button ID="btnClearr" runat="server" Text="Clear" class="btn btn-secondary" OnClick="btnClearr_Click" />
                                                        </div>
                                                    </center>
                                                        
                                               </div>
                                                
                                             
                                             
                                          </div>
                                        </div>



                              </div>
                             <div class="col-sm">
                                 <div id="calendar" style="margin-top:50px; margin-left:-49px"> 
                                     <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                                 </div>
                                  <br />

                                     <div id="deleteOperator">
                                       
                                           <div class="card" style="width: 18rem; margin-left:-16%; background-color:#50DBB4; margin-top:20px">
                                            <div class="card-body">
                                                <h5 class="card-title" style="color:black">Delete Operator</h5>
                                                
                                                 <left>
                                                  <asp:DropDownList ID="deleteDropdown" runat="server">
                                                  <asp:ListItem Value="0">Please Select</asp:ListItem>  
                                                    
                                                  <asp:ListItem Value="1">HR Department </asp:ListItem>  
                                                  <asp:ListItem Value="2">Supervisor</asp:ListItem>  
                                                  <asp:ListItem Value="3">Production Manager</asp:ListItem>  
                                                 </asp:DropDownList>
                                               </left>
                                                <br />
                                                <br />
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <label style="width:100px; color:#2c3e50"><b>Employee ID<b/></label>
                                                        </td>
                                                            
                                                        <td>
                                                            <asp:TextBox style="height:30px;" CssClass="form-control" ID="txtDelete" runat="server"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                     
                                                   <%-- <tr>
                                                        <td>
                                                           
                                                        </td>
                                                             
                                                        <td>
                                                           <button style="width:130px; margin-top:10px; width:150px" type="button" class="btn btn-danger">Delete</button>
                                                        </td>
                                                    </tr>--%>
                                                </table>
                                                <br />
                                                <center>
                                                 <asp:Button ID="btnDelete" runat="server" Text="Delete" style="width:130px; margin-top:10px; width:150px" type="button" class="btn btn-danger" OnClick="btnDelete_Click" />
                                              
                                                </center>
                                         </div>
                                    </div>
                             

                                     </div>
                            </div>

                        
                        

                            <div class="col-sm">
                               <div class="row" style="margin-top:20px">
                                   <div class="col">
                                       <center>
                                       <h3 style="color:black">Hr Department</h3>
                                       </center>
                                   </div>
                               </div>
                                <div class="row">
                                    <div class="col">
                                      <hr/>
                                    </div>
                                 </div>

                                <div class="row" style="width:150px">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HrmsDatabaseConnectionString %>" SelectCommand="SELECT * FROM [hrDepartmentTbl]"></asp:SqlDataSource>
                                    <div class="col">
                                        <asp:GridView ID="GridViewHrDepartment" style="margin-left:-90px" Width="150px" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="employeeid" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:BoundField DataField="employeeid" HeaderText="employeeid" ReadOnly="True" SortExpression="employeeid" />
                                                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                                                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                                                <asp:BoundField DataField="security_question" HeaderText="security_question" SortExpression="security_question" />
                                                <asp:BoundField DataField="answer" HeaderText="answer" SortExpression="answer" />
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                               </div>
                                <br/>
                                 <div class="row">
                                   <div class="col">
                                       <center>
                                       <h3 style="color:black">Supervisor</h3>
                                       </center>
                                   </div>
                               </div>
                               <div class="row">
                                  <div class="col">
                                    <hr/>
                                  </div>
                               </div>

                                <div class="row" style="width:150px"> 
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HrmsDatabaseConnectionString2 %>" SelectCommand="SELECT * FROM [supervisorTbl]"></asp:SqlDataSource>
                                    <div class="col">
                                        <asp:GridView ID="GridViewSupervisor" style="margin-left:-90px" Width="150px" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="employeeid" DataSourceID="SqlDataSource2">
                                            <Columns>
                                                <asp:BoundField DataField="employeeid" HeaderText="employeeid" ReadOnly="True" SortExpression="employeeid" />
                                                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                                                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                                                <asp:BoundField DataField="security_question" HeaderText="security_question" SortExpression="security_question" />
                                                <asp:BoundField DataField="answer" HeaderText="answer" SortExpression="answer" />
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                               </div>
                                <br/>

                                 <div class="row">
                                   <div class="col">
                                       <center>
                                       <h3 style="color:black">Production Manager</h3>
                                       </center>
                                   </div>
                               </div>
                               <div class="row">
                                  <div class="col">
                                    <hr/>
                                  </div>
                               </div>

                                <div class="row" style="width:150px">
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:HrmsDatabaseConnectionString2 %>" SelectCommand="SELECT * FROM [productionManagerTbl]"></asp:SqlDataSource>
                                    <div class="col">
                                        <asp:GridView ID="GridViewProductionMan" style="margin-left:-90px" Width="150px" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="employeeid" DataSourceID="SqlDataSource3">
                                            <Columns>
                                                <asp:BoundField DataField="employeeid" HeaderText="employeeid" ReadOnly="True" SortExpression="employeeid" />
                                                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                                                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                                                <asp:BoundField DataField="security_question" HeaderText="security_question" SortExpression="security_question" />
                                                <asp:BoundField DataField="answer" HeaderText="answer" SortExpression="answer" />
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                                <div style="align-content:center">
                                    <center>
                                      
                                         <asp:Button ID="btnRefresh" runat="server" Text="Refresh" class="btn btn-secondary" OnClick="btnRefresh_Click" />

                                    </center>
                                   
                                </div>

                            </div>
                        </div>






            <%--footer--%>
            <footer style="width:1550px;margin-left:-199px">
                <div id="footer1" class="container-fluid">
                    <div align="center">
                        <h5>&copy All right #####.<a class="footerlinks" href="#" target="_blank">E Rats</a></h5>
                    </div>
                
                </div>
           </footer>
            
        </div>

        
          
    </form>
</body>
</html>



