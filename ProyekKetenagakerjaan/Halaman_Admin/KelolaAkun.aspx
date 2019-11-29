<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="KelolaAkun.aspx.vb" Inherits="ProyekKetenagakerjaan.KelolaAkun" MasterPageFile="~/MasterPageAdmin.Master" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
          Data Instansi
      </h1>
      <ol class="breadcrumb">
        <li><a href="index.aspx"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Kelola Akun</li>  
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">Edit Profile Instansi Anda Disini..</h3>

        </div>
        <div class="box-body">
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
                            PostBackUrl="~/Halaman_Admin/GantiPass.aspx" />
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
        
        </div>    
        <!-- /.box-body -->
        <div class="box-footer">
            Loker PEKANBARU</div>
      <!-- /.box -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

</asp:Content>
