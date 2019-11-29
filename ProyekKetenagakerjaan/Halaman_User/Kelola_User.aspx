<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Kelola_User.aspx.vb" Inherits="ProyekKetenagakerjaan.Kelola_User"
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
								Kelola Akun				
							</h1>	
							<p class="text-white link-nav"><a href="index.html">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="about-us.html"> Kelola Akun User</a></p>
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
                            <form id="form1" runat="server">
                            <table class="nav-justified">
                <tr>
                    <td style="width: 141px">
                        Nama Instansi</td>
                    <td style="width: 13px">
                        :</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 141px">
                        Email</td>
                    <td style="width: 13px">
                        :</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="height: 20px; width: 141px">
                        Alamat</td>
                    <td style="width: 13px; height: 20px">
                        :</td>
                    <td style="height: 20px">
                        <asp:TextBox ID="TextBox3" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 141px">
                        Website</td>
                    <td style="width: 13px">
                        :</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 141px">
                        Profile Instansi</td>
                    <td style="width: 13px">
                        :</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Height="80px" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 141px">
                        Ganti Password</td>
                    <td style="width: 13px">
                        :</td>
                    <td>
                        <asp:Button ID="Button2" class="btn btn-block btn-primary" runat="server" 
                            Text="Klik Disini" Width="87px" 
                            PostBackUrl="~/Halaman_User/Ganti_Password.aspx" Enabled="False" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 141px">
                        <asp:Button ID="Button1" class="btn btn-block btn-primary" runat="server" Text="Simpan Perubahan" />
                    </td>
                    <td style="width: 13px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            </form>
                        </div>
					</div>
					<div class="row">
						<div class="col-lg-4 col-md-6">
                            
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
