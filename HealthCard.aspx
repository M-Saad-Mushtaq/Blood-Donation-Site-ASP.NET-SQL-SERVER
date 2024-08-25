<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HealthCard.aspx.cs" Inherits="Blood.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Custom%20CSS/HealthCard.css" rel="stylesheet" />
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
         <div class="col-md-6 mx-auto">
            <div class="card" id="card1">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="150" src="https://cdn-icons-png.flaticon.com/512/5917/5917256.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Health Card</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Health Card ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="xxxxxx-xxxxxx-x"></asp:TextBox>
                        </div>
                         <label>Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Name" ></asp:TextBox>
                        </div>
                        <label>CNIC</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="CNIC"></asp:TextBox>
                        </div>
                        
                         <div class="col-md-6">
                            <label>Date of Birth</label>
                            <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Enter" OnClick="Button1_Click" />
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a href="Home.aspx"><< Back to Home</a><br><br>
         </div>
      </div>
   </div>


</asp:Content>
