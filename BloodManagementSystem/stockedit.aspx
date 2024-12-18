<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="stockedit.aspx.cs" Inherits="BloodManagementSystem.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div>
   
     <div class="container mt-5 py-5">
     <div class="row mt-5">
         <div class="col-md-12">
             <h2 class="text-center mb-3">Blood Stock Details edit</h2>
     <div class="row">
          <div class="col-md-6 mb-3">
     <label>Blood Group</label>
     <asp:DropDownList ID="bloodgroup1" runat="server" CssClass="form-select select">
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
 </div><br />
     <div class="col-md-6 mb-3">
         <label>Blood Group  id</label>
          <asp:DropDownList ID="id" runat="server" CssClass="form-select select"> 
     <asp:ListItem Value="">Select Blood Group   id</asp:ListItem>
     <asp:ListItem Value="A+">A+</asp:ListItem>
     <asp:ListItem Value="A-">A-</asp:ListItem>
     <asp:ListItem Value="B+">B+</asp:ListItem>
     <asp:ListItem Value="B-">B-</asp:ListItem>
     <asp:ListItem Value="O+">O+</asp:ListItem>
     <asp:ListItem Value="O-">O-</asp:ListItem>
     <asp:ListItem Value="AB+">AB+</asp:ListItem>
     <asp:ListItem Value="AB-">AB-</asp:ListItem>
 </asp:DropDownList>
                  <div> <asp:Button ID="search" runat="server" Text="search" CssClass="btn" OnClick="Button3_Click1"    /></div><br />
     </div>

        
     <div class="col-md-6 mb-3">
         <label>Stock</label>
         <asp:TextBox ID="stock" runat="server" CssClass="form-control" placeholder="Enter Stock units" Height="38px" Width="330px" ></asp:TextBox>
     </div>
         <br />
     <div class="col-md-6 mb-3">
         <label>Collection Date</label>
         <asp:TextBox ID="collectiondate" runat="server" TextMode="Date" CssClass="form-control" placeholder="Enter Collection Date" Height="38px" Width="330px" ></asp:TextBox>
     </div>
         <br />
     <div class="col-md-6 mb-3">
         <label>Expiry Date</label>
         <asp:TextBox ID="expirydate" runat="server" CssClass="form-control" TextMode="Date" placeholder="Enter Expiry Date" Height="38px" Width="330px" ></asp:TextBox>
     </div>
   </div>
         </div>
         </div>
          <div class="d-grid">
     <asp:Button ID="Button1" runat="server" Text="delete" CssClass="btn" />
               <asp:Button ID="Button2" runat="server" Text="update" CssClass="btn"   />
               <asp:Button ID="Button4" runat="server" Text="viewDATA" CssClass="btn" PostBackUrl="~/viewDATA.aspx"   />
 </div>
</div>
    
   

</asp:Content>
