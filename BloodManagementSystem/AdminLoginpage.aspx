<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="AdminLoginpage.aspx.cs" Inherits="BloodManagementSystem.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


 <div>


 <div class="container bg-light mt-5 py-5">
     <div class="row justify-content-center mt-5 py-5">
         <div class="col-md-6">
             <div class="mt-5">
                 <div class="card-header text-center bg-primary text-white">
                     <h3>ADMIN Login</h3>
                 </div>
                 <div class="card-body">
                      <div class="mb-3">
   
     <asp:TextBox ID="email" runat="server" placeholder="Enter your email" type="text" name="email" class="form-control" Height="38px" Width="495px" ></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="email" Text="*Required" ForeColor="red"></asp:RequiredFieldValidator>
 </div>
 <div>
                              
     <asp:TextBox ID="password" runat="server" placeholder="Enter your password" type="password" name="password" class="form-control" Height="40px" Width="495px" ></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="password" Text="*Required"  ForeColor="red"></asp:RequiredFieldValidator></div>
 <div class="d-grid">
     <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn" OnClick="Button1_Click" />
 </div>
                     
                 </div>
                 <div class="card-footer text-center mb-3">
                     <small class="text-muted">
                         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UserLoginPage.aspx">Donor</asp:HyperLink> Login </small>
                 </div>
             </div>
         </div>
     </div>
 </div>


 </div>

</asp:Content>
