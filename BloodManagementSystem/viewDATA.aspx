<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="viewDATA.aspx.cs" Inherits="BloodManagementSystem.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


 

    <p>

    </p>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Stock details"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="445px" Width="1635px">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="bloodgroup" HeaderText="bloodgroup" SortExpression="bloodgroup" />
            <asp:BoundField DataField="units" HeaderText="units" SortExpression="units" />
            <asp:BoundField DataField="collectiondate" HeaderText="collectiondate" SortExpression="collectiondate" />
            <asp:BoundField DataField="expirydate" HeaderText="expirydate" SortExpression="expirydate" />
        </Columns>
    </asp:GridView>
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bloodBankDBConnectionString %>" SelectCommand="SELECT * FROM [detailsstock]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Button ID="EDIT1" runat="server" PostBackUrl="~/stockedit.aspx" Text="EDIT" Width="410px" />
    <br />
&nbsp;<br />
    <br />
    <br />
&nbsp;<br />
    <br />
&nbsp;<asp:Label ID="Label4" runat="server" Text="donor details"></asp:Label>
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2" Height="472px" Width="1141px">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
            <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
            <asp:BoundField DataField="d.o.b" HeaderText="d.o.b" SortExpression="d.o.b" />
            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
            <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
            <asp:BoundField DataField="phoneno" HeaderText="phoneno" SortExpression="phoneno" />
            <asp:BoundField DataField="bloodgroup" HeaderText="bloodgroup" SortExpression="bloodgroup" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <asp:Button ID="EDIT0" runat="server" PostBackUrl="~/donoredit.aspx" Text="EDIT" Width="410px" />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:bloodBankDBConnectionString %>" SelectCommand="SELECT * FROM [detailsdonor]"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="user details"></asp:Label>
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource3" Height="499px" Width="1196px">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
            <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            <asp:BoundField DataField="d.o.b" HeaderText="d.o.b" SortExpression="d.o.b" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
            <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="contactno" HeaderText="contactno" SortExpression="contactno" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:Button ID="EDIT2" runat="server" PostBackUrl="~/useredit.aspx" Text="EDIT" Width="410px" />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:bloodBankDBConnectionString %>" SelectCommand="SELECT * FROM [detailsuser]"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
  
</asp:Content>
