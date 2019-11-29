<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Index.aspx.vb" Inherits="ProyekKetenagakerjaan.Home" MasterPageFile="~/MasterPageAdmin.Master" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Halaman Instansi
        <small><asp:Label ID="lblNama" runat="server"></asp:Label></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="../Halaman_Admin/Index.aspx"><i class="fa fa-dashboard"></i> Home</a></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">Welcome</h3>

        </div>
        <div class="box-body">
            
            <table class="nav-justified">
                <tr>
                    <td style="width: 122px">
                        Nama Instansi</td>
                    <td style="width: 18px">
                        :</td>
                    <td>
                        <asp:Label ID="nama" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 122px">
                        Email 
                    </td>
                    <td style="width: 18px">
                       :</td>
                    <td>
                        <asp:Label ID="email" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 122px">
                        Alamat  
                    </td>
                    <td style="width: 18px">
                      :</td>
                    <td>
                        <asp:Label ID="alamat" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 122px">
                        Website</td>
                    <td style="width: 18px">
                      :</td>
                    <td>
                        <asp:Label ID="web" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 122px">
                        Profile Instansi</td>
                    <td style="width: 18px">
                      :</td>
                    <td>
                        <asp:Label ID="ket" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            
        </div>
        <!-- /.box-body -->
        <div class="box-footer">
          Edit Data Instansi Anda pada bagian profile.
          </div>
        <!-- /.box-footer-->
      </div>
      <!-- /.box -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  </asp:Content>