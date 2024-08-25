<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Acceptor_Donor.aspx.cs" Inherits="Blood.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Custom%20CSS/Acceptor_Donor.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">\
    
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
         <div class="col-md-8 mx-auto">
            <div class="card" id="card1">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="150" src="Images/blood.jpg"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Blood Data</h3>
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
                            <label>CITY</label>
                            <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="City"></asp:TextBox>
                            </div>
                        </div>

                      <div class="col-md-6">
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

                            
                   </div>
                  
                         
                         <%-- Ask donor or Acceptor --%>
                   <center>
                          <div class="col-md-6">              
                               <label>Patient Type</label>
                                <div class="form-group">
                                   <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                      <asp:ListItem Text="Select" Value="select" />
                                      <asp:ListItem Text="Acceptor" Value="Acceptor" />
                                      <asp:ListItem Text="Donor" Value="Donor" />
                                       </asp:DropDownList>
                              </div>
                           </div>
                       </center>
                      
                         <br />
                         

                        <div class="form-group">
                                        <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Enter" OnClick="Button1_Click" />
                            </div>

                         <div>
                             <%--<div>
                            <asp:GridView ID="GridView2" runat="server" CssClass="grid-view"></asp:GridView>
                        </div>--%>
                            <asp:GridView ID="GridView1" runat="server" CssClass="gridview" 
                                          HeaderStyle-CssClass="gridview-header" 
                                          RowStyle-CssClass="gridview-row" 
                                          AlternatingRowStyle-CssClass="gridview-alternating-row"
                                          PagerStyle-CssClass="gridview-pager" 
                                          AutoGenerateColumns="False">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="ID" />
                                    <asp:BoundField DataField="address" HeaderText="Address" />
                                    <asp:BoundField DataField="city" HeaderText="City" />
                                    <asp:BoundField DataField="facilities" HeaderText="Facilities" />
                                    
                                </Columns>
                            </asp:GridView>
                        </div>
                    <div>
                             <%--<div>
                            <asp:GridView ID="GridView2" runat="server" CssClass="grid-view"></asp:GridView>
                        </div>--%>
                            <asp:GridView ID="GridView2" runat="server" CssClass="gridview" 
                                          HeaderStyle-CssClass="gridview-header" 
                                          RowStyle-CssClass="gridview-row" 
                                          AlternatingRowStyle-CssClass="gridview-alternating-row"
                                          PagerStyle-CssClass="gridview-pager" 
                                          AutoGenerateColumns="False">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="ID" />
                                    <asp:BoundField DataField="address" HeaderText="Address" />
                                    <asp:BoundField DataField="name" HeaderText="Center" />
                                    <asp:BoundField DataField="amount" HeaderText="Amount(Li)" />
                                    
                                </Columns>
                            </asp:GridView>
                        </div>
                   <br />
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Enter Center ID"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                   <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Button class="btn btn-success btn-block btn-lg" ID="Button2" runat="server" Text="Book Appointment" OnClick="Button2_Click" />
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
