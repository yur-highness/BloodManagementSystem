<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="StockManagementPage.aspx.cs" Inherits="BloodManagementSystem.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div>
   
     <div class="container mt-5 py-5">
     <div class="row mt-5">
         <div class="col-md-12">
             <h2 class="text-center mb-3">Blood Stock Details</h2>
     <div class="row">
          <div class="col-md-6 mb-3">
     <label>ID</label>
     <asp:DropDownList ID="id" runat="server" CssClass="form-select select">
     <asp:ListItem Value="">Select Blood Group ID</asp:ListItem>
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
     <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn" OnClick="Button1_Click" />
               <asp:Button ID="Button2" runat="server" Text="viewDATA" CssClass="btn" PostBackUrl="~/viewDATA.aspx"  />
 </div>
</div>
    <div class="container mt-5 py-5">
        <div class="row mt-5">
            <div class="col-md-12">
                <h2 class="text-center mb-4">Blood Stock Details</h2>
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
               <!--  <table class="table table-bordered table-striped">
                    <thead class="table-dark">
                        <tr>
                            <th>Blood Group</th>
                            <th>Stock</th>
                            <th>Collection Date</th>
                            <th>Expiry Date</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>A+</td>
                            <td>10</td>
                            <td>2024-12-01</td>
                            <td>2024-12-15</td>
                            <td>
                                <button class="btn btn-primary btn-sm">Edit</button>
                                <button class="btn btn-danger btn-sm">Delete</button>
                            </td>
                        </tr>
                
                    </tbody>
                </table> -->
            </div>
        </div>
    </div>

    </div>

</asp:Content>
