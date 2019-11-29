<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Index.aspx.vb" Inherits="ProyekKetenagakerjaan.Index"
MasterPageFile="~/MasterPageUser.Master" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<form id="form1" runat="server">
	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
	<!-- start banner Area -->
	<section class="banner-area relative" id="home">	
		<div class="overlay overlay-bg"></div>
		<div class="container">
			<div class="row fullscreen d-flex align-items-center justify-content-center">
				<div class="banner-content col-lg-12">
					<h1 class="text-white">
						<span>Halo, <asp:Label ID="email" runat="server" Text=""></asp:Label></span> Silahkan Mencari Pekerjaan				
					</h1>	
					<div class="row justify-content-center form-wrap">
						<div class="col-lg-4 form-cols">
							<input type="text" class="form-control" name="search" placeholder="Masukkan Kata Kunci?">
						</div>
						<div class="col-lg-3 form-cols">
							<div class="default-select" id="default-selects2">
								<select>
									<option value="1">Berdasarkan Kategori</option>
									<option value="2">Medical</option>
									<option value="3">Technology</option>
									<option value="4">Goverment</option>
									<option value="5">Development</option>
								</select>
							</div>										
						</div>
						<div class="col-lg-2 form-cols">
							<button type="button" class="btn btn-info">
								<span class="lnr lnr-magnifier"></span> Search
							</button>
						</div>								
					</div>
					<p class="text-white"> <span>Cari Berdasarkan Kategori:</span> Tecnology, Business, Consulting, IT Company, Design, Development</p>
				</div>											
			</div>
		</div>
	</section>
	<!-- End banner Area -->
	<!-- Start features Area -->
	<section class="features-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="single-feature">
						<h4>Mudah</h4>
						<p>
							Lorem ipsum dolor sit amet, consectetur adipisicing.
						</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="single-feature">
						<h4>Cepat</h4>
						<p>
							Lorem ipsum dolor sit amet, consectetur adipisicing.
						</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="single-feature">
						<h4>Simpel</h4>
						<p>
							Lorem ipsum dolor sit amet, consectetur adipisicing.
						</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="single-feature">
						<h4>Bermanfaat</h4>
						<p>
							Lorem ipsum dolor sit amet, consectetur adipisicing.
						</p>
					</div>
				</div>																		
			</div>
		</div>	
	</section>
	<!-- End features Area -->
	<!-- Start post Area -->
	<section class="post-area section-gap">
		<div class="container">
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
			ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
			
                SelectCommand="SELECT lowongan.nama_lowongan, lowongan.jenis_lowongan, lowongan.posisi_lowongan, lowongan.id_lowongan, lowongan.tgl_tutup_lowongan, lowongan.tgl_buka_lowongan, lowongan.ket_lowongan, lowongan.gaji_lowongan, instansi.nama_instansi FROM instansi INNER JOIN lowongan ON instansi.id_instansi = lowongan.id_instansi"></asp:SqlDataSource>

			<div class="row justify-content-center d-flex">
				<div class="col-lg-8 post-list">
					<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
					DataKeyNames="id_lowongan" GridLines="None" DataSourceID="SqlDataSource1" AllowPaging="True" 
					AllowSorting="True">
					<Columns>
						<asp:TemplateField>
						<ItemTemplate>
							<div class="single-post d-flex flex-row">
								<div class="thumb">
									<img src="../App_Themes/user/img/imagex.png" alt="">
									<ul class="tags">
										<li>
											<a href="#"></a>
										</li>
										<li>
											<a href="#"></a>
										</li>
										<li>
											<a href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>					
										</li>
									</ul>
								</div>
								<div class="details">
									<div class="title d-flex flex-row justify-content-between">
										<div class="titles">
											<asp:TemplateField>                                           
											<ItemTemplate>
												<h4><asp:LinkButton ID="lnkId" CommandName="Result" runat="server" Text="" PostBackUrl='<%# "Detail_Lowongan.aspx?id_lowongan=" & Eval("id_lowongan") %>'><%# Eval("nama_lowongan")%><asp:Label ID="id_lowongan" runat="server" Text=""></asp:Label></asp:LinkButton></h4>
											</ItemTemplate>
										</asp:TemplateField>
										<h6></h6>					
									</div>
									<ul class="btns">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</ul>
								</div>
								<p>
									Requirement: <%# Eval("ket_lowongan")%>
								</p>
								<h5><%# Eval("nama_instansi")%></h5>
								<p class="address"></p>
								<p class="address"><span class="">Rp. </span><%# Eval("gaji_lowongan")%></p>
							</div>
						</div>
					</ItemTemplate>
				</asp:TemplateField>
			</Columns>
		</asp:GridView>
	</div>

	<div class="col-lg-4 sidebar">

		<div class="single-slidebar">
			<h4>Jobs by Categoryy</h4>
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
</div>
</div>	
</section>
<!-- End post Area -->
</form>
</form>
</asp:Content>
