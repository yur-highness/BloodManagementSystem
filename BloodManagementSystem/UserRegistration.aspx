<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="BloodManagementSystem.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="my-5">
     <div class="container justify-content-center my-5">
            <div class="row">
                <div class="col-md-12 my-3">
                    <h2 class="py-5 ">User Registration</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <label>FirstName:</label>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="firstname" Text="*Required" ForeColor="red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="firstname" runat="server" CssClass="form-control" Height="38px" Width="450px"></asp:TextBox>
                      
                </div>

                <div class="col-md-6">
    <label>LastName:</label>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="lastname" Text="*Required" ForeColor="red"></asp:RequiredFieldValidator>
    <asp:TextBox ID="lastname" runat="server" CssClass="form-control" Height="38px" Width="450px"></asp:TextBox>
                    
</div>
                <div class="col-md-6">
                    <label for="txtContactNumber">Contact Number:</label>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtContactNumber" Text="*Required" ForeColor="red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtContactNumber" runat="server" CssClass="form-control" Height="38px" Width="450px"></asp:TextBox>
                    
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <label for="txtDateOfBirth">Date of Birth:</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtDateOfBirth" Text="*Required" ForeColor="red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtDateOfBirth" runat="server" CssClass="form-control" TextMode="Date" Height="38px" Width="450px"></asp:TextBox>
                
                    </div>
              
            </div>
            <div class="row">
                <div class="col-md-6">
                    <label for="city">City:</label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="city" Text="*Required" ForeColor="red"></asp:RequiredFieldValidator>
                    <asp:DropDownList ID="city" runat="server" CssClass="form-control select">
                        <asp:ListItem Value="">Select City</asp:ListItem>
                        <asp:ListItem Value="city1">city1</asp:ListItem>
                        <asp:ListItem Value="city2">city2</asp:ListItem>
                          <asp:ListItem Value="bngn">bngn</asp:ListItem>
                    </asp:DropDownList>
                    
                </div>
                  <div class="col-md-6">
      <label for="state">State:</label>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="state" Text="*Required" ForeColor="red"></asp:RequiredFieldValidator>
      <asp:DropDownList ID="state" runat="server" CssClass="form-control select">
          <asp:ListItem Value="">Select State</asp:ListItem>
          <asp:ListItem Value="state1">state1</asp:ListItem>
          <asp:ListItem Value="state2">state2</asp:ListItem>
           <asp:ListItem Value="assam">assam</asp:ListItem>
      </asp:DropDownList>
                       
  </div>
                <div class="col-md-6">
                    <label for="txtPinCode">Pin Code:</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtPinCode" Text="*Required" ForeColor="red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtPinCode" runat="server" CssClass="form-control" Height="38px" Width="450px"></asp:TextBox>
                     
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <label for="txtFullAddress">Full Address:</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtFullAddress" Text="*Required" ForeColor="red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtFullAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Height="100px" Width="449px"></asp:TextBox>
                 
                </div>
            </div>
            <div class="row py-5">
                <div class="col-md-12">
                    <h4>Login Credentials</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <label for="txtUsername">Username:</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtUsername" Text="*Required" ForeColor="red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" Height="38px" Width="450px"></asp:TextBox>
                    </div>
                <div class="col-md-6">
                    <label for="txtPassword">Password:</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtPassword" Text="*Required" ForeColor="red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" Height="38px" Width="450px"></asp:TextBox>
                    </div>
            </div>
            <div class="row pb-5">
                <div class="col-md-12">
                    <asp:Button ID="btnRegister" runat="server" CssClass="btn" Text="Register" OnClick="btnRegister_Click" />
                </div>
            </div>
        </div>
       </div>
</asp:Content>
