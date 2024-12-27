<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="certificates.aspx.cs" Inherits="BloodManagementSystem.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
     <div class="container mt-5 py-5">
     <div class="row mt-5">
         <div class="col-md-12">
             <h2 class="text-center mb-3 mr-5 ">Add Certificate</h2>
     <div class="row">
              <div class="col-md-6 mb-3">
         <asp:Label ID="lblID" runat="server" Text="ID: "></asp:Label>
<asp:TextBox ID="txtID" runat="server" placeholder="Enter ID" CssClass="input"></asp:TextBox>
      <asp:Button ID="search" runat="server" Text="Search"  CssClass="btn" OnClick="search_Click"  />   
     </div><br />
                    <div class="col-md-6 mb-3">
    <asp:Label ID="lblFirstName" runat="server" Text="First Name: "></asp:Label>
 <asp:TextBox ID="txtFirstName" runat="server" placeholder="Enter First Name"></asp:TextBox>
      </div>   <br />
     

     <div class="col-md-6 mb-3">
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
         <br />
                  <div class="col-md-6 mb-3">
    <asp:Label ID="lblLastName" runat="server" Text="Last Name: "></asp:Label>
<asp:TextBox ID="txtLastName" runat="server" placeholder="Enter Last Name"></asp:TextBox>
</div><br />

     <div class="col-md-3 mb-3">
         <asp:Label ID="lblDate" runat="server" Text="Date: "></asp:Label>
 <asp:TextBox ID="txtDate" runat="server" placeholder="Enter Date (YYYY-MM-DD)" TextMode="Date"></asp:TextBox>
     </div>
   </div>
         </div>
         </div>
          <div class="d-grid">
     <asp:Button ID="btnViewCertificate" runat="server" Text="View Certificate"  CssClass="btn" OnClick="btnViewCertificate_Click" />
              
 </div>
</div>
</asp:Content>
