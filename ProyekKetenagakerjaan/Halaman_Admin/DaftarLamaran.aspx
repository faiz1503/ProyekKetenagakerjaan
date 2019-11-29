<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="DaftarLamaran.aspx.vb" Inherits="ProyekKetenagakerjaan.DaftarLamaran" MasterPageFile="~/MasterPageAdmin.Master" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Daftar Lamaran
 
      </h1>
      <ol class="breadcrumb">
        <li><a href="Index.aspx"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Daftar Lamaran</li>  
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">Filter berdasarkan nama lowongan</h3>
        </div>
        <div class="box-body">
            <table class="nav-justified">
                <tr>
                    <td style="width: 113px">
                        Nama Lowongan</td>
                    <td style="width: 10px">
                        :</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnFilter" runat="server" Text="Filter" class="btn btn-block btn-primary" Width="90px" />
                    </td>
                   
                </tr>
            </table>
     
        </div>
        <!-- /.box-body -->

      <!-- /.box -->
      <div class="box">
            <div class="box-header">
              <h3 class="box-title">Daftar lamaran anda..</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
            <asp:PlaceHolder ID = "PlaceHolder1" runat="server" />
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
</div>
  <!-- /.content-wrapper -->

 </asp:Content>