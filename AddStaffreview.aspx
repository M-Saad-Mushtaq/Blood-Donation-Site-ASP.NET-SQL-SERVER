<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddStaffreview.aspx.cs" Inherits="Blood.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Custom%20CSS/Addreview.css" rel="stylesheet" />
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
                           <img width="150" src="Images/review1.jpg"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Add Staff Review</h3>
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
                               <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                            </div>
                          </div>
                         <div class="col-md-6">
                            <label>Staff ID</label>
                            <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="ID"></asp:TextBox>
                            </div>
                          </div>
                            <div class="col-md-6">
                                <label>Staff Rating</label>
                                <div class="form-group">
                                   <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                      <asp:ListItem Text="Select" Value="select" />
                                      <asp:ListItem Text="1" Value="1" />
                                      <asp:ListItem Text="2" Value="2" />
                                      <asp:ListItem Text="3" Value="3" />
                                      <asp:ListItem Text="4" Value="4" />
                                      <asp:ListItem Text="5" Value="5" />
                                   </asp:DropDownList>
                                </div>
                             </div>
                     </div>
                           <div class="row">
                             <div class="col">
                                <label>Staff Remarks</label>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder=" " TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                             </div>
                            </div>

                   <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="ADD" OnClick="Button1_Click" />
                    </div>
               </div>
            </div>
            <a href="Review.aspx"><< Back to Review Section</a><br><br>
         </div>
      </div>
   </div>


</asp:Content>
