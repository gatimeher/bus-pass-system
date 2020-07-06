<%@ Page EnableEventValidation="true" Title="" Language="C#" MasterPageFile="~/Site1Home.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="BusPassSystem2.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <!-- Page Content -->
    <!-- Banner Starts Here -->
    <div class="main-banner header-text" id="top">
        <div class="Modern-Slider">
          <!-- Item -->
          <div class="item item-1">
            <div class="img-fill">
                <div class="text-content">
                 <!-- <h6>we are here to help you</h6> -->
                  <h4><u>Digital Pass</u><br></h4>

                   <p>We provide an effective solution of maintaining bus passes using QR code.</p>
                  <!--<a href="contact.html" class="filled-button">contact us</a>-->
                </div>
            </div>
          </div>
            <!-- // Item -->
          <!-- Item -->
           <div class="item item-2">
            <div class="img-fill">
                <div class="text-content">
                  <h6>we are here to help you</h6>
                  <h4>Now go anywhere..<br></h4>
                 <!-- <p>You are allowed to use this template for your company websites. You are NOT allowed to re-distribute this template ZIP file on any template download website. Please contact TemplateMo for more detail.</p>
                  <a href="services.html" class="filled-button">our services</a>-->
              </div>
            </div>
          </div>
          <!-- // Item -->
          <!-- Item -->
         <div class="item item-3">
            <div class="img-fill">
                <div class="text-content">
                  <!--<h6>we have a solid background</h6>-->
                  <h4>Your destination<br>&amp; partner</h4>
                  <p>We are going your way-daily!The better way to get from here..</p>
                   
                 <!-- <a href="about.html" class="filled-button">learn more</a>-->
                </div>
            </div>
          </div>
          <!-- // Item -->
     </div>
    </div>
    <!-- Banner Ends Here -->

    <!-- bus detail form start-->
     <div class="callback-form">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-heading">
              <h2>Check <em>Bus details</em></h2>
              <span>Can see bus deatils of every route..</span>
            </div>
          </div>
          <div class="col-md-12">
            <div class="contact-form">
            <form id="contact" action="" method="post">
                <div class="row">
                  <div class="col-lg-4 col-md-12 col-sm-12">
                    <fieldset>
                       <label for="source">Source: </label>
                        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                      <!-- <select id="source" name="source" >
                         <option value="wadi">wadi</option>
                         <option value="campus">campus</option>
                         <option value="futala">futala</option>
                         <option value="ravinagaar">ravinagar</option>
                      </select>-->
                    </fieldset>
                  </div>
                  <div class="col-lg-4 col-md-12 col-sm-12">
                    <fieldset>
                      <label for="destination">Destination: </label>
                        <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
                       <!--<select id="destination" name="destination">
                         <option value="wadi">wadi</option>
                         <option value="campus">campus</option>
                         <option value="futala">futala</option>
                         <option value="ravinagaar">ravinagar</option>
                      </select>-->
                    </fieldset>
                  </div>
                  <div class="col-lg-4 col-md-12 col-sm-12">
                    <fieldset>
                     <asp:Button ID="Button1" runat="server" Text="View" OnClick="Button1_Click" />
                    </fieldset>
                  </div>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <div class="col-lg-12">
                    <fieldset>
                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                    </fieldset>
                  </div>                 
                </div>
              </form>
            </div>
          </div>
        </div>
        </div>
      </div>
    <!-- bus details form ends here -->

    <!-- About bus digital pass info-->
    <div class="more-info">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="more-info-content">
              <div class="row">
                <div class="col-md-6">
                  <div class="left-image">
                    <img src="assets/images/more-info.jpg" alt="">
                  </div>
                </div>
                <div class="col-md-6 align-self-center">
                  <div class="right-content">
                    <!--<span>Who we are</span> -->
                    <h2>Get to know about <em>Digital Pass</em></h2>
                    <p>This system provides effective software for maintaining bus passes. Digital bus pass generating systems are useful for people to get their bus pass online instead of standing in long queues to get their bus pass. This system reduces paperwork, time consumption and makes the process of issuing passes in a simpler and faster way.<br><br> Users can use the pass for a long time, just need to recharge their account of digital pass and extend the validity of the pass every time the pass expires. 
                       No need to print the pass every time. This system performs functionalities like accessing basic information of user authentication. This system provides a security option for users by notifying them when a pass is scanned.</p>
                   <a href="aboutus.aspx" class="filled-button">Read More</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--About bus digital pass info ends here--> 
</form>
</asp:Content>
