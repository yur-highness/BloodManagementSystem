<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="DonorRegistrationPage.aspx.cs" Inherits="BloodManagementSystem.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
     
    <div class="container mt-5 py-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class=" mt-5">
                    <div class="card-header bg-success text-white text-center">
                        <h3>Donor Registration</h3>
                    </div>
                   <div class="card-body">
    <div class="row">
        <div class="col-md-6 mb-3">
            <label>First Name</label>
            <asp:TextBox ID="firstName" runat="server" CssClass="form-control" placeholder="Enter first name" Height="38px" Width="330px"></asp:TextBox>
        </div><br />
        <div class="col-md-6 mb-3">
            <label>Last Name</label>
            <asp:TextBox ID="lastName" runat="server" CssClass="form-control" placeholder="Enter last name" Height="38px" Width="330px" ></asp:TextBox>
        </div>
    </div>
    <div class="mb-3">
        <label>Date of Birth</label>
        <asp:TextBox ID="dob" runat="server" CssClass="form-control" TextMode="Date" Height="38px" Width="330px" ></asp:TextBox>
    </div>
    <div class="mb-3">
        <label>Gender</label><br>
        <asp:RadioButtonList ID="gender" runat="server" RepeatDirection="Horizontal" >
            <asp:ListItem Value="Male">Male</asp:ListItem>
            <asp:ListItem Value="Female">Female</asp:ListItem>
        </asp:RadioButtonList>
    </div>
    <div class="mb-3">
        <label>Phone Number</label>
        <asp:TextBox ID="phone" runat="server" CssClass="form-control" placeholder="Enter phone number" Height="38px" Width="330px" ></asp:TextBox>
    </div>
    <div class="mb-3">
        <label>Blood Group</label>
        <asp:DropDownList ID="bloodGroup" runat="server" CssClass="form-select select">
            <asp:ListItem Value="">Select Blood Group</asp:ListItem>
            <asp:ListItem Value="A+">A+</asp:ListItem>
            <asp:ListItem Value="A-">A-</asp:ListItem>
            <asp:ListItem Value="B+">B+</asp:ListItem>
            <asp:ListItem Value="B-">B-</asp:ListItem>
            <asp:ListItem Value="O+">O+</asp:ListItem>
            <asp:ListItem Value="O-">O-</asp:ListItem>
            <asp:ListItem Value="AB+">AB+</asp:ListItem>
            <asp:ListItem Value="AB-">AB-</asp:ListItem>
        </asp:DropDownList>
    </div>
    <div class="d-grid">
        <asp:Button ID="register" runat="server" Text="Register" CssClass="btn" OnClick="Button1_Click" />
    </div>
</div>
                      
                    </div>
                </div>
            </div>
        </div>
    </div>
  
</asp:Content>
