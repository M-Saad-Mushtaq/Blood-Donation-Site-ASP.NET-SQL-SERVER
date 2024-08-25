<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="test_result.aspx.cs" Inherits="Blood.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Custom%20CSS/Test_Result.css" rel="stylesheet" />
    <style>
        
.gridview {
    width: 100%;
    border-collapse: collapse;
    font-family: Arial, sans-serif;
    font-size: 14px;
    margin-top: 20px;
    border-radius: 10px;
}

.gridview-header {
    background-color: #c9302c;
    border-bottom: 1px solid #ddd;
    font-weight: bold;
    text-align: center;
    padding: 10px;
    color: white;
}


.gridview-row {
    border-bottom: 1px solid #ddd;
}


.gridview-alternating-row {
    background-color: #fafafa;
    border-bottom: 1px solid #ddd;
}


.gridview td, .gridview th {
    padding: 10px;
}


.gridview-pager {
    text-align: center;
    padding: 10px;
}
    </style>
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
         <div class="col-md-10 mx-auto">
            <div class="card" id="card1">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="250" src="https://static.vecteezy.com/system/resources/previews/015/410/499/non_2x/medical-blood-test-concept-chemical-laboratory-analysis-medical-office-or-laboratory-patient-blood-in-test-tubes-exam-checklist-blank-document-banner-flyer-landing-page-illustration-vector.jpg"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Check Test Results</h3>
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
                        <label>CNIC</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="xxxxxx-xxxxxx-x"></asp:TextBox>
                        </div>
                         <label>Appointment ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="ID"></asp:TextBox>
                        </div>
                        <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Get Result" OnClick="Button1_Click" />
                        </div>

                         <br />
                         <div>
                           <asp:GridView ID="GridView1" runat="server" CssClass="gridview" 
                                                              HeaderStyle-CssClass="gridview-header" 
                                                              RowStyle-CssClass="gridview-row" 
                                                              AlternatingRowStyle-CssClass="gridview-alternating-row"
                                                              PagerStyle-CssClass="gridview-pager" 
                                                              AutoGenerateColumns="False">
                                                    <Columns>
                                                        <asp:BoundField DataField="id" HeaderText="Appointment ID" />
                                                        <asp:BoundField DataField="cnic" HeaderText="CNIC" />
                                                        <asp:BoundField DataField="bloodtype" HeaderText="Blood Type" />
                                                        <asp:BoundField DataField="centreid" HeaderText="Center ID" />
                                                        <asp:BoundField DataField="bloodpressure" HeaderText="Bp" />
                                                        <asp:BoundField DataField="temp" HeaderText="Tempreature" />
                                                        <asp:BoundField DataField="haemoglobin" HeaderText="Haemoglobin" />
                                                        <asp:BoundField DataField="plateletecount" HeaderText="Platelets" />
                                                        <asp:BoundField DataField="redbloodcell" HeaderText="RBC" />
                                                        <asp:BoundField DataField="result" HeaderText="Result" />
                                          
                                                    </Columns>
                            </asp:GridView>
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