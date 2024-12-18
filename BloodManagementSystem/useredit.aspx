<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="useredit.aspx.cs" Inherits="BloodManagementSystem.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="my-5">
     <div class="container justify-content-center my-5">
            <div class="row">
                <div class="col-md-12 my-3">
                    <h2 class="py-5 ">User EDIT</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
    <label>ID:</label>
    
    <asp:TextBox ID="id" runat="server" CssClass="form-control" Height="38px" Width="450px"></asp:TextBox>
      
</div>
                 <div class="col-md-12">
     <asp:Button ID="search" runat="server" CssClass="btn" Text="search" OnClick="search_Click"  />
 </div>
                <div class="col-md-6">
                    <label>FirstName:</label>
                    
                    <asp:TextBox ID="firstname" runat="server" CssClass="form-control" Height="38px" Width="450px"></asp:TextBox>
                      
                </div>

                <div class="col-md-6">
    <label>LastName:</label>
                     
    <asp:TextBox ID="lastname" runat="server" CssClass="form-control" Height="38px" Width="450px"></asp:TextBox>
                    
</div>
                <div class="col-md-6">
                    <label for="txtContactNumber">Contact Number:</label>
                     
                    <asp:TextBox ID="txtContactNumber" runat="server" CssClass="form-control" Height="38px" Width="450px"></asp:TextBox>
                    
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <label for="txtDateOfBirth">Date of Birth:</label>
                    
                    <asp:TextBox ID="txtDateOfBirth" runat="server" CssClass="form-control" TextMode="Date" Height="38px" Width="450px"></asp:TextBox>
                
                    </div>
              
            </div>
            <div class="row">
                <div class="col-md-6">
                    <label for="city">City:</label>
               
                    <asp:DropDownList ID="city" runat="server" CssClass="form-control select">
                        <asp:ListItem Value="">Select City</asp:ListItem>
                        <asp:ListItem Value="city1">city1</asp:ListItem>
                        <asp:ListItem Value="city2">city2</asp:ListItem>
                             <asp:ListItem Value="bngn">bngn</asp:ListItem>
                    </asp:DropDownList>
                    
                </div>
                  <div class="col-md-6">
      <label for="state">State:</label>
     
      <asp:DropDownList ID="state" runat="server" CssClass="form-control select">
          <asp:ListItem Value="">Select State</asp:ListItem>
          <asp:ListItem Value="state1">state1</asp:ListItem>
          <asp:ListItem Value="state2">state2</asp:ListItem>
                 <asp:ListItem Value="assam">assam</asp:ListItem>
      </asp:DropDownList>
                       
  </div>
                <div class="col-md-6">
                    <label for="txtPinCode">Pin Code:</label>
                   
                    <asp:TextBox ID="txtPinCode" runat="server" CssClass="form-control" Height="38px" Width="450px"></asp:TextBox>
                     
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <label for="txtFullAddress">Full Address:</label>
                    
                    <asp:TextBox ID="txtFullAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Height="100px" Width="449px"></asp:TextBox>
                 
                </div>
            </div>
           
            <div class="row pb-5">
                <div class="col-md-12">
                    <asp:Button ID="btnRegister" runat="server" CssClass="btn" Text="update"  />
                           <asp:Button ID="Button2" runat="server" CssClass="btn" Text="delete"  />
  
              
       <asp:Button ID="Button3" runat="server" CssClass="btn" Text="viewDATA" PostBackUrl="~/viewDATA.aspx"  />
                </div>
              

   </div>
           
        </div>
       </div>
</asp:Content>
