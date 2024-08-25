<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Review.aspx.cs" Inherits="Blood.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Custom%20CSS/review.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div style="background-image: url('https://c4.wallpaperflare.com/wallpaper/200/845/250/red-balls-wallpaper-preview.jpg'); 
                background-size: cover; 
                background-position: center;
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                opacity: 0.7; 
                z-index: -1; 
                ">
        
    </div>

    <div class="container">
        <center>
            <h3 id="he">Welcome to Review Section</h3>
            <hr />
        </center>
        <div class="row">
            <div class="col-md-6">
                <div class="review-card">
                    <a href="StaffReview.aspx" class="card-link">
                        <div class="card">
                            <div class="card-body">
                                <img width ="126" src="Images/review2.png" />
                                <h5 class="card-title">Staff Review</h5>
                                <p class="card-text">Check reviews on different staff members.</p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-6">
                <div class="review-card">
                    <a href="CenterReview.aspx" class="card-link">
                        <div class="card">
                            <div class="card-body">
                                <img width="150" src="Images/review3.jpg" />
                                <h5 class="card-title">Center Review</h5>
                                <p class="card-text">Check reviews on different Centers.</p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
             <div class="col-md-6">
                <div class="review-card">
                    <a href="AddStaffreview.aspx" class="card-link">
                        <div class="card">
                            <div class="card-body">
                                <img width="150" src="Images/review1.jpg" />
                                <h5 class="card-title">Add Staff Review</h5>
                                <p class="card-text">Add some reviews on different Staff Members.</p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-6">
                <div class="review-card">
                    <a href="AddCenterreview.aspx" class="card-link">
                        <div class="card">
                            <div class="card-body">
                                <img width="150" src="Images/review1.jpg" />
                                <h5 class="card-title">Add Center Review</h5>
                                <p class="card-text">Add some reviews on different Medical Centers.</p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
             <a href="Home.aspx"><< Back to Home</a><br><br>
        </div>
            
    </div>
</asp:Content>