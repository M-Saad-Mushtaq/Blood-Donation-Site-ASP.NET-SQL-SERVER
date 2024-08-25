<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="patient.aspx.cs" Inherits="Blood.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Custom%20CSS/patient.css" rel="stylesheet" />
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
                           <img width="150" src="https://th.bing.com/th/id/OIP.f4FH7DpzH2DvJtTAkIHy5QAAAA?pid=ImgDet&w=188&h=188&c=7"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Patient Entry</h3>
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
                        <label>CNIC</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="CNIC"></asp:TextBox>
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
                      <div class="col-md-4">
                        <label>Blood Type</label>
                            <div class="form-group">
                               <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                  <asp:ListItem Text="Select blood type" Value="select" />
                                  <asp:ListItem Text="O+" Value="O+" />
                                  <asp:ListItem Text="O-" Value="O-" />
                                  <asp:ListItem Text="A+" Value="A+" />
                                  <asp:ListItem Text="A-" Value="A-" />
                                  <asp:ListItem Text="B+" Value="B+" />
                                  <asp:ListItem Text="B-" Value="B-" />
                                  <asp:ListItem Text="AB+" Value="AB+" />
                                  <asp:ListItem Text="AB-" Value="AB-" />
                               </asp:DropDownList>
                            </div>
                      </div>
                       <div class="col-md-4">
                        <label>Tempreature</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="celcius" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                       <div class="col-md-4">
                        <label>Blood Pressure</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Bp" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                       <div class="col-md-4">
                        <label>Haemoglobin</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="g/dL" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                       <div class="col-md-4">
                        <label>Platelets</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="platelets/uL" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                       <div class="col-md-4">
                        <label>RedBlood Count</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="cells/uL" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                       
                  </div>

                   <center>
                          <div class="col-md-4">
                                <label>Center ID</label>
                                <div class="form-group">
                                   <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="ID"></asp:TextBox>
                                </div>
                         </div>
                       </center>

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
