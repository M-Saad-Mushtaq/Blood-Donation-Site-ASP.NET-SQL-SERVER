<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Blood.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Custom%20CSS/lun.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <section style="position: relative;">
        <img src="Images/blood%20banner.jpg" class="img-fluid" id="img1" />
        <div style="position: absolute; top: 50%; right: 40px; transform: translateY(-50%); font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">
            <h1 style="color: #fff; font-size: 27px; margin-bottom: 10px;">Save Lives, Donate and Get Blood Today!</h1>
            <p style="color: #d7f3f1; font-size: 23px; margin-bottom: 0;">You DON'T NEED TO BE A DOCTOR TO BE <br />A HERO JUST DONATE BLOOD.</p>
        </div>
    </section>

    <div class="container">

         <div class="row" id="r1">
            <div class="col-12">
               <center>
                  <h2 id="he">Our Features</h2>
                   <hr/>
               </center>

            </div>
         </div>

         <div class="row" id="r2">

            <div class="col-md-4" id="c1">
               <center>
                   <%-- add image --%>
                   <%-- must change this link to redirect  --%>
                   <a class="u3" ID="f1" href="Partnered_NGO.aspx"> 
                       <h4 id="he1">Partnered NGO'S</h4>
                   </a> 
                    <div class =" textbox">
                        <p class="text-justify">Here is the information about the different NGO's and Hospital that are currently being associated with us.</p>
                   </div>
                  
               </center>
            </div>
             <div class="col-md-4" id="c2">
                   <center>
                       <%-- add image --%>
                       <%-- must change this link to redirect  --%>
                       <a class="u3" href="HealthCard.aspx"> 
                           <h4 id="he2">Health Cards</h4>
                       </a> 
                       <div class="textbox">
                           <p class="text-justify">Interested in our Health Card? Get significant discounts by providing the necessary details here!</p>
                       </div>
                   </center>
             </div>
             <div class="col-md-4" id="c3">
                   <center>
                       <%-- add image --%>
                       <%-- must change this link to redirect  --%>
                       <a class="u3" href="Acceptor_Donor.aspx"> 
                           <h4 id="he3">Am I Eligible to Donate?</h4>
                       </a> 
                       <div class="textbox">
                            <p class="text-justify">Check the necessary conditions for the donation of your blood and book the appointment.</p>
                       </div>
                   </center>
             </div>
             <div class="col-md-4" id="c4">
                   <center>
                       <%-- add image --%>
                       <%-- must change this link to redirect  --%>
                       <a class="u3" href="Acceptor_Donor.aspx"> 
                           <h4 id="he4">Looking for Blood?</h4>
                       </a> 
                       <div class="textbox">
                            <p class="text-justify">Your Seacrh ends here because your blood is in our hands.</p>
                       </div>
                   </center>
             </div>
             <div class="col-md-4" id="c5">
                   <center>
                       <%-- add image --%>
                       <%-- must change this link to redirect  --%>
                       <a class="u3" href="Test_Result.aspx"> 
                           <h4 id="he5">Get your Test Results</h4>
                       </a> 
                       <div class="textbox">
                            <p class="text-justify">Your test results are one click away.</p>
                       </div>
                   </center>
             </div>
             <div class="col-md-4" id="c6">
                   <center>
                       <%-- add image --%>
                       <%-- must change this link to redirect  --%>
                       <a class="u3" href="review.aspx"> 
                           <h4 id="he6">Review Section</h4>
                       </a> 
                       <div class="textbox">
                            <p class="text-justify">Want to open up?</p>
                       </div>
                   </center>
             </div>

          </div>

           

     </div>
    <br />
    <br />
</asp:Content>
