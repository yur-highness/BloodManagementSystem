<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="BloodManagementSystem.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <!-- Hero Section -->
    <div class="hero">
        <div class="text-center">
            <h1 class="display-4"><span class="white">Welc</span>ome to Blood Bank Management System</h1>
            <p class="lead">Efficiently saving lives with modern technology.</p>
            <a href="DonorRegistrationPage.aspx" title="login to register" class="btn btn-success btn-lg" id="donor">Become a Donor</a>
        </div>
    </div>

    <!-- About Section -->
    <section id="about" class="py-5 px-2">
        <div class="container">
            <h2 class="text-center mb-4">About Us</h2>
            <p class="text-center text-black-50">We are dedicated to managing blood donations and stocks to ensure availability when needed. Our system connects donors and recipients with efficiency and transparency.
                Welcome to our blood donation platform! We aim to make blood donation easy, safe, and accessible to everyone. Our mission is to connect donors with recipients in need, while promoting a culture of generosity and community service. We believe that every donation has the power to save lives and make a difference.

At our platform, we are dedicated to providing a seamless and convenient experience for donors and recipients alike. Our team works tirelessly to ensure that every donation is processed efficiently and effectively, and that every recipient receives the blood they need in a timely manner.

We are proud to be a part of a community that values the gift of life, and we are committed to doing our part to make a positive impact. Whether you are a donor, a recipient, or simply someone who cares about making a difference, we invite you to join us in our mission to create a healthier, more compassionate community.

Together, we can make a difference, one donation at a time!
            </p>
        </div>
    </section>

    <!-- Services Section -->
    <section id="services" class="py-5 bg-light">
        <div class="container">
            <h2 class="text-center mb-4">Our Services</h2>
            <div class="row">
                <div class="col-md-4">
                    <div class="card p-3 text-center">
                        <i class="fas fa-hand-holding-heart fa-3x text-danger mb-3"></i>
                        <h4>Blood Donation</h4>
                        <p class="text-black-50">Connect with donors and ensure seamless blood donations.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card p-3 text-center">
                        <i class="fas fa-database fa-3x text-primary mb-3"></i>
                        <h4>Stock Management</h4>
                        <p class="text-black-50">Track and manage blood stock availability efficiently.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card p-3 text-center">
                        <i class="fas fa-certificate fa-3x text-success mb-3"></i>
                        <h4>Certificates</h4>
                        <p class="text-black-50">Issue and manage donor certificates easily just a click away.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Testimonials Section -->
    <section id="testimonials" class="py-5">
        <div class="container">
            <h2 class="text-center mb-4">What People Say</h2>
            <div class="row text-black-50">
                <div class="col-md-6">
                    <blockquote class="blockquote">
                        <p class="mb-0">"This system made it so easy to donate blood and save lives. Highly recommend!"</p>
                        <footer class="blockquote-footer">John Doe</footer>
                    </blockquote>
                </div>
                <div class="col-md-6">
                    <blockquote class="blockquote">
                        <p class="mb-0">"Efficient, reliable, and user-friendly. A life-saving platform!"</p>
                        <footer class="blockquote-footer">Jane Smith</footer>
                    </blockquote>
                </div>
                 <div class="col-md-6">
     <blockquote class="blockquote">
         <p class="mb-0">"Efficient, reliable, and user-friendly. A life-saving platform!"</p>
         <footer class="blockquote-footer">Jane Smith</footer>
     </blockquote>
 </div>
                 <div class="col-md-6">
     <blockquote class="blockquote">
         <p class="mb-0">"Efficient, reliable, and user-friendly. A life-saving platform!"</p>
         <footer class="blockquote-footer">Jane Smith</footer>
     </blockquote>
 </div>
            </div>
        </div>
    </section>
    
    <!-- Contact Section -->
    <section id="contact" class="py-5 bg-light">
        <div class="container">
            <h2 class="text-center mb-4">Contact Us</h2>
            <div class="row justify-content-center">
                <div class="col-md-6">
                    
                        <div class="mb-3">
                            <label>Name</label>
                         
                            <asp:TextBox ID="name" runat="server" class="form-control" placeholder="Your Name" Height="37px" Width="525px"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label>Email</label>
            
                            <asp:TextBox ID="email" runat="server" class="form-control" placeholder="Your Email" Height="35px" Width="524px"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label>Message</label>
                            
                            <asp:TextBox ID="message" runat="server" class="form-control" placeholder="Your Message" TextMode="MultiLine" Height="103px" Width="523px"></asp:TextBox>
                        </div>
                        <div class="d-grid">
                          
                            <asp:Button ID="Button1" runat="server" Text="Send Message" class="btn" />
                        </div>
                    
                </div>
            </div>
        </div>
    </section>


</asp:Content>
