<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="enterstaff.aspx.cs" Inherits="Blood.enterdata" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Custom%20CSS/entrydata.css" rel="stylesheet" />
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
                           <img width="200" src="https://img.freepik.com/premium-vector/cute-little-student-boy-with-laptop-computer-notebook-vector-illustration-design_1142-104227.jpg"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Staff Entry</h3>
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
                        <label>Center ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Center ID"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Date of Birth</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                      <div class="col-md-6">
                        <label>CNIC</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="CNIC"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Email</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                      <div class="col-md-6">
                          <label>Gender</label>
                            <div class="form-group">
                               <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                  <asp:ListItem Text="Select" Value="select" />
                                  <asp:ListItem Text="M" Value="M" />
                                  <asp:ListItem Text="F" Value="F" />
                               </asp:DropDownList>
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
                        <label>Create Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox11" runat="server" placeholder="Create Passwword" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>

                   <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Enter" OnClick="Button1_Click" />
                    </div>
         </div>
      </div>
             <a href="Home.aspx"><< Back to Home</a><br><br>
          </div>
      </div>
     </div>
</asp:Content>
