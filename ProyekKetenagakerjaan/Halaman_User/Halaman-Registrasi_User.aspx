<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Kelola_User.aspx.vb" Inherits="ProyekKetenagakerjaan.Tentang"
    MasterPageFile="~/MasterPageUser.Master" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
   
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <!-- start banner Area -->
    <section class="banner-area relative" id="home">	
				<div class="overlay overlay-bg"></div>
				<div class="container">
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Registrasi Akun				
							</h1>	
							<p class="text-white link-nav"><a href="index.html">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="about-us.html"> Registrasi Akun</a></p>
						</div>											
					</div>
				</div>
			</section>
    <!-- End banner Area -->
    <!-- Start service Area -->
    <section class="service-area section-gap" id="service">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="col-md-8 pb-40 header-text">
							<h1>Why Choose Us</h1>
							<p>
								Who are in extremely love with eco friendly system.
							</p>
                        </div>
					</div>
					<div class="row">
						<div class="col-lg-4 col-md-6">

                        </div>
                        <div class="col-lg-4 col-md-6>
                            <form id="form1" runat="server">
						    <table class="w-100">
                                <tr>
                                    <td style="width: 120px">
                                        Id User</td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 120px">
                                        Email User</td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 120px">
                                        Password</td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 120px">
                                        Nama User</td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 120px">
                                        Jenis Kelamin</td>
                                    <td>
                                        <asp:RadioButton ID="RadioButton1" runat="server" />
                                        <asp:RadioButton ID="RadioButton2" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 120px">
                                        Alamat User</td>
                                    <td>
                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 120px">
                                        Tanggal Lahir</td>
                                    <td>
                                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                                            BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" 
                                            Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" 
                                            Width="330px">
                                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                                                Height="8pt" />
                                            <DayStyle BackColor="#CCCCCC" />
                                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                                            <OtherMonthDayStyle ForeColor="#999999" />
                                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                            <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" 
                                                Font-Size="12pt" ForeColor="White" Height="12pt" />
                                            <TodayDayStyle BackColor="#999999" ForeColor="White" />
                                        </asp:Calendar>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 120px">
                                        No HP</td>
                                    <td>
                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 120px">
                                        Pendidikan</td>
                                    <td>
                                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Button ID="Button1" runat="server" Text="Proses" />
                                    </td>
                                </tr>
                            </table>

						    </form>
                        </div>

                    </div>
				</div>	
			</section>
    <!-- End service Area -->
    <!-- Start team Area -->
    <section class="team-area section-gap" id="team">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-70 col-lg-8">
							<div class="title text-center">
								<h1 class="mb-10">Experienced Developer Team</h1>
								<p>Who are in extremely love with eco friendly system.</p>
							</div>
						</div>
					</div>						
					<div class="row justify-content-center d-flex align-items-center">
						<div class="col-md-3 single-team">
						    
						</div>
						<div class="col-md-3 single-team">
						    <div class="thumb">
						        <img class="img-fluid" src="../App_Themes/img/pages/t2.jpg" alt="">
						        <div class="align-items-center justify-content-center d-flex">
									<a href="#"><i class="fa fa-facebook"></i></a>
									<a href="#"><i class="fa fa-twitter"></i></a>
									<a href="#"><i class="fa fa-linkedin"></i></a>
						        </div>
						    </div>
						    <div class="meta-text mt-30 text-center">
							    <h4>Brima Zidane</h4>
							    <p>Raja Pelangi (Junior Programmer)</p>			    	
						    </div>
						</div>	
						<div class="col-md-3 single-team">
						    <div class="thumb">
						        <img class="img-fluid" src="../App_Themes/img/pages/t3.png"  width="263px" height="300px" alt="">
						        <div class="align-items-center justify-content-center d-flex">
									<a href="#"><i class="fa fa-facebook"></i></a>
									<a href="#"><i class="fa fa-twitter"></i></a>
									<a href="#"><i class="fa fa-linkedin"></i></a>
						        </div>
						    </div>
						    <div class="meta-text mt-30 text-center">
							    <h4>M. Faiz Pratama</h4>
							    <p>Junior Web Developer</p>			    	
						    </div>
						</div>	
						<div class="col-md-3 single-team">
						    
						</div>																									
				
					</div>
				</div>	
			</section>
    <!-- End team Area -->
</asp:Content>
