<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="TambahLowongan.aspx.vb" Inherits="ProyekKetenagakerjaan.TambahLowongan" MasterPageFile="~/MasterPageAdmin.Master" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Tambah Lowongan
      </h1>
      <ol class="breadcrumb">
        <li><a href="Index.aspx"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Tambah Lowongan</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Tambahkan Lowongan Anda Disini..</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">

            <table class="nav-justified">
                <tr>
                    <td style="width: 113px">
                        Nama Lowongan</td>
                    <td style="width: 10px">
                        :</td>
                    <td>
                        <asp:TextBox ID="txtNamaLowongan" runat="server"></asp:TextBox>
                    </td>
                </tr>
     

                <tr>
                    <td style="width: 113px">
                        Jenis Lowongan</td>
                    <td style="width: 10px">
                        :</td>
                    <td>
                        <asp:TextBox ID="txtJenisLowongan" runat="server"></asp:TextBox>
                    </td>
                </tr>
     

                <tr>
                    <td style="width: 113px">
                        Posisi Lowongan</td>
                    <td style="width: 10px">
                        :</td>
                    <td>
                        <asp:TextBox ID="txtPosisiLowongan" runat="server"></asp:TextBox>
                    </td>
                </tr>
     

                <tr>
                    <td style="width: 113px">
                        Gaji</td>
                    <td style="width: 10px">
                        :</td>
                    <td>
                        <asp:TextBox ID="txtGajiLowongan" runat="server"></asp:TextBox>
                    </td>
                </tr>
     

                <tr>
                    <td style="width: 113px">
                        Keterangan</td>
                    <td style="width: 10px">
                        :</td>
                    <td>
                        <asp:TextBox ID="txtKetLowongan" runat="server"></asp:TextBox>
                    </td>
                </tr>
     

                <tr>
                    <td style="width: 113px">
                        Tanggal Buka</td>
                    <td style="width: 10px">
                        :</td>
                    <td>
                        <asp:Label ID="lblTanggal" runat="server"></asp:Label>
                    </td>
                </tr>
     

                <tr>
                    <td style="width: 113px">
                        Tanggal Tutup</td>
                    <td style="width: 10px">
                        :</td>
                    <td>
                        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                       <asp:Label ID="Label1" runat="server"></asp:Label>
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
                <asp:Button ID="btnPost" runat="server" Text="POST" 
                    class="btn btn-block btn-primary" Width="120px"/>
            <br />
          
                <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
          
            <br />
            
            
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
   </asp:Content>