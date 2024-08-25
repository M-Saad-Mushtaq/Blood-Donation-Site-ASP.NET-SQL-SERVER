<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="profileedit.aspx.cs" Inherits="Blood.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                           <img width="150" src="https://cdn-icons-png.flaticon.com/512/5238/5238442.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Profile Update</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                 
                  <div class="row">
                      
                     <div class="col-md-6">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                   
                  </div>
                  <div class="row">                    
                     <div class="col-md-4">
                        <label>City</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Weight(kg)</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Weight(kg)" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                      <div class="col-md-4">
                        <label>Health Card</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="ID" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  
                      
                  </div>
                   <div class="row">
                     <div class="col">
                        <label>Medical Condition</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Medical Condition" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Full Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <hr />

                   <%-- PASSWORD --%>
                   <div class="col-md-6">
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox11" runat="server" placeholder="Create Passwword" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>

                   <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click1" />
                    </div>
         </div>
      </div>
             <a href="Home.aspx"><< Back to Home</a><br><br>
          </div>
      </div>
     </div>


</asp:Content>
