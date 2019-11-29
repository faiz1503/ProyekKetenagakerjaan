<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Detail_Lowongan.aspx.vb"
    Inherits="ProyekKetenagakerjaan.Detail_Lowongan" MasterPageFile="~/MasterPageUser.Master" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <!-- start banner Area -->
    <section class="banner-area relative" id="home">	
	<div class="overlay overlay-bg"></div>
	<div class="container">
		<div class="row d-flex align-items-center justify-content-center">
			<div class="about-content col-lg-12">
				<h1 class="text-white">
					Job Details			
				</h1>	
				<p class="text-white link-nav"><a href="index.html">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="single.html"> Job Details</a></p>
			
            <asp:Label ID="Label1" runat="server" Text="label" Visible="True"></asp:Label>
            <asp:Label ID="lbl_idinstansi" runat="server" Text="" Visible="True"></asp:Label>
            <asp:Label ID="lbl_idpengguna" runat="server" Text="" Visible="True"></asp:Label>
            </div>											
		</div>
	</div>
</section>
    <!-- End banner Area -->
    <!-- Start post Area -->
    <section class="post-area section-gap">
	<div class="container">
		<div class="row justify-content-center d-flex">
        <asp:datalist id="DataList1" runat="server" xmlns:asp="#unknown">
        <itemtemplate>
			<div class="col-lg-8 post-list">
				<div class="single-post d-flex flex-row">
					<div class="thumb">
						<img src="../App_Themes/user/img/post.png" alt="">
						<ul class="tags">
							<li>
								<a href="#">Art</a>
							</li>
							<li>
								<a href="#">Media</a>
							</li>
							<li>
								<a href="#">Design</a>					
							</li>
						</ul>
					</div>
                    
					<div class="details">
						<div class="title d-flex flex-row justify-content-between">
							<div class="titles">
								<h4><%# Eval("nama_lowongan")%></h4></a>
								<h6><%# Eval("jenis_lowongan")%></h6>	
                                				
							</div>
						</div>
						<p>
							<%# Eval("posisi_lowongan")%>
						</p>
                        <p>
                        <%# Eval("id_lowongan")%>
                        </p>
                        <p>
                        <%# Eval("id_instansi") %>
                        </p>
						<p class="address"><span class="">Rp.</span> <%# Eval("gaji_lowongan")%></p>
					</div>
				</div>	
				<div class="single-post job-details">
					<h4 class="single-title">Whom we are looking for</h4>
					<p>
                        <%# Eval("ket_lowongan")%>
                    </p>
				</div>
				<!--
                <div class="single-post job-experience">
					<h4 class="single-title">Experience Requirements</h4>
					<ul>
						<li>
							<img src="../App_Themes/user/img/pages/list.jpg" alt="">
							<span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquaut enim ad minim veniam.</span>
						</li>																											
					</ul>
				</div>
				<div class="single-post job-experience">
					<h4 class="single-title">Job Features & Overviews</h4>
					<ul>
						<li>
							<img src="../App_Themes/user/img/pages/list.jpg" alt="">
							<span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquaut enim ad minim veniam.</span>
						</li>													
					</ul>
				</div>	
				<div class="single-post job-experience">
					<h4 class="single-title">Education Requirements</h4>
					<ul>
						<li>
							<img src="../App_Themes/user/img/pages/list.jpg" alt="">
							<span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquaut enim ad minim veniam.</span>
						</li>
						<li>
							<img src="../App_Themes/user/img/pages/list.jpg" alt="">
							<span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquaut enim ad minim veniam.</span>
						</li>
						<li>
							<img src="../App_Themes/user/img/pages/list.jpg" alt="">
							<span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquaut enim ad minim veniam.</span>
						</li>																										
					</ul>
				</div>
                -->    
                <div class="single-post job-experience">
					<h4 class="single-title">Lamar Sekarang</h4>
					<ul>
						<li>
							<span>PEMBERITAHUAN KEAMANAN YANG PENTING
                            Berhati-hatilah terhadap iklan yang mengharuskan Anda mengeluarkan biaya 
                            untuk melamar atau memproses lamaran.</span>
						</li>
                        <li>
                        <form id="form1" runat="server">
                        <div class="mt-10">
                        <asp:TextBox ID="ket_lamaran" runat="server" class="form-control" placeholder="Masukkan Keterangan..."></asp:TextBox>
                        <br />
                        <br />
                        </div>
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Proses"></asp:Button>
                        </form>
                        </li>											
					</ul>
				</div>														
			</div>
            </itemtemplate>
    </asp:datalist>
           <!--
			<div class="col-lg-4 sidebar">						
				<div class="single-slidebar">
					<h4>Jobs by Category</h4>
					<ul class="cat-list">
						<li><a class="justify-content-between d-flex" href="category.html"><p>Technology</p><span>37</span></a></li>
						<li><a class="justify-content-between d-flex" href="category.html"><p>Media & News</p><span>57</span></a></li>
						<li><a class="justify-content-between d-flex" href="category.html"><p>Goverment</p><span>33</span></a></li>
						<li><a class="justify-content-between d-flex" href="category.html"><p>Medical</p><span>36</span></a></li>
						<li><a class="justify-content-between d-flex" href="category.html"><p>Restaurants</p><span>47</span></a></li>
						<li><a class="justify-content-between d-flex" href="category.html"><p>Developer</p><span>27</span></a></li>
						<li><a class="justify-content-between d-flex" href="category.html"><p>Accounting</p><span>17</span></a></li>
					</ul>
				</div>							
			</div>
            -->
		</div>
	</div>	
</section>
    <!-- End post Area -->
</asp:Content>
