<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="UserLoginPage.aspx.cs" Inherits="BloodManagementSystem.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <div class="container bg-light h-100 mt-5 mb-5 py-3">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="mt-5">
                    <div class="card-header text-center ">
                        <h2>Login</h2>
                        
                     <img src="img/_Blood Donation Awareness_ Magnet for Sale by 87-Aesthetics.jpg" width="500px" height="340px"/>
                    </div>
                    <div class="card-body">
                  
                            <div class="mb-3">
                              <label>Email</label>
                                <asp:TextBox ID="email" runat="server" placeholder="Enter your email" name="email" class="form-control" Height="38px" Width="450px" ></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="email" Text="*Required" ForeColor="red"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                 <label>Password</label>                      
                                <asp:TextBox ID="password" runat="server" placeholder="Enter your password" TextMode="password" name="password" class="form-control" Height="38px" Width="450px" ></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="password" Text="*Required" ForeColor="red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="d-grid">
                                <asp:Button ID="Button1" runat="server" Text="Login" class="btn" OnClick="Button1_Click"/>
                               
                                
                            </div>
                     
                    </div>
                    <div class="card-footer text-center">
                        <small class="text-muted">
                            <asp:HyperLink ID="admin" runat="server" NavigateUrl="~/AdminLoginpage.aspx">Admin</asp:HyperLink> Login or</small>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UserRegistration.aspx">Signup</asp:HyperLink>

                    </div>
               
                </div>
            </div>
        </div>
    </div>


    </div>

</asp:Content>
