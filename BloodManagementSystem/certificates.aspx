<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="certificates.aspx.cs" Inherits="BloodManagementSystem.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
<div class="container mt-5 py-5">
    <h1 class="text-center mb-4 py-5">Certificate</h1>
    <div class="row justify-content-center">
        <div class="col-md-6">
        
                <div class="mb-3">
                    <label for="donorId" class="form-label">Donor ID</label>
                    <asp:TextBox ID="donorId" runat="server" placeholder="Enter your Donor ID" class="form-control" Height="53px" Width="523px"></asp:TextBox>
                
                </div>
                <div class="d-grid">
                    <button type="submit" class="btn btn-primary">View Certificate</button>
                </div>
        </div>
    </div>
 
    <div class="row justify-content-center mt-5" id="certificateDetails" style="display: none;">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header text-center bg-success text-white">
                    <h4>Donation Certificate</h4>
                </div>
                <div class="card-body">
                    <p class="text-center">This certificate is awarded to:</p>
                    <h3 class="text-center text-uppercase">[Donor Name]</h3>
                    <p class="text-center">for their valuable contribution to saving lives by donating blood.</p>
                    <p class="text-center">Blood Group: <strong>[Blood Group]</strong></p>
                    <p class="text-center">Date of Donation: <strong>[Date]</strong></p>
                    <div class="text-center mt-4">
                        <button class="btn btn-secondary" onclick="window.print();">Print Certificate</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</asp:Content>
