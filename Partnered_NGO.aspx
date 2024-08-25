<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Partnered_NGO.aspx.cs" Inherits="Blood.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Custom%20CSS/NGO.css" rel="stylesheet" />
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
        <div class="row">
            <center>
                <div class="col-md-6 mb-4">
                    <a id="a1" href="https://aimc.edu.pk/jinnah-hospital-lahore/" target="_blank">
                         <div class="card">
                            <img src="Images/Jinnah.jpg" class="card-img-top" alt="NGO Image">
                            <div class="card-body">
                                <h5 class="card-title">Jinnah Hospital Lahore</h5>
                                <p class="card-text">Jinnah Hospital  (named after Quaid-e-Azam Muhammad Ali Jinnah, founder of Pakistan), established in 1996 in Lahore is a teaching hospital in the Pakistani province of Punjab. It is spread over 105 acres. It began operations in 1994, with very limited facilities, and was formally inaugurated on 2 February 1996, although with only basic specialties at first.</p>
                            </div>
                         </div>
                    </a>

                    <a id="a2" href="https://sundas.org/" target="_blank">
                          <div class="card">
                            <img src="Images/sundas.jpg" class="card-img-top" alt="NGO Image">
                            <div class="card-body">
                                <h5 class="card-title">Sundas Foundation Lahore</h5>
                                <p class="card-text">The Sundas Foundation was founded in 1998 as a blood transfusion center focused on treating patients suffering from Thalassemia, Hemophilia, Blood Cancer and other chronic Blood Diseases. Before this establishment, many people set up commercial blood banks without equipment and without permission. These blood banks provided untested and contaminated blood that was unsuitable for transfusion. After the establishment of Sundas Foundation, all the charlatans disappeared - this is the most important service we have provided to the community. </p>
                            </div>
                         </div>
                    </a>
                </div>
            </center>
            
            <!-- Add more card -->
        </div>
    </div>
</asp:Content>
