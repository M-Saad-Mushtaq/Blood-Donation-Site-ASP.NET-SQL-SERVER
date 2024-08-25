<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CenterReview.aspx.cs" Inherits="Blood.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

.gridview {
    width: 100%;
    border-collapse: collapse;
    border-radius: 20px;
    font-family: Arial, sans-serif;
    font-size: 14px;
    margin-top: 20px;
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

    <center>
       <img width="300" src="Images/staffrevew.jpg" />

    </center>
   <hr />


   <div>
       <asp:GridView ID="GridView1" runat="server" CssClass="gridview" 
                                          HeaderStyle-CssClass="gridview-header" 
                                          RowStyle-CssClass="gridview-row" 
                                          AlternatingRowStyle-CssClass="gridview-alternating-row"
                                          PagerStyle-CssClass="gridview-pager" 
                                          AutoGenerateColumns="False">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="Review ID" />
                                    <asp:BoundField DataField="centerid" HeaderText="Center ID" />
                                    <asp:BoundField DataField="centerrating" HeaderText="Center Rating" />
                                    <asp:BoundField DataField="remarks" HeaderText="Center Remarks" />
                                          
                                </Columns>
        </asp:GridView>
    </div>
    <br />
    <br />
    <a href="Home.aspx"><< Back Home</a>
</asp:Content>
