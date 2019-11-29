<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="KelolaLowongan.aspx.vb" Inherits="ProyekKetenagakerjaan.KelolaLowongan" MasterPageFile="~/MasterPageAdmin.Master" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
          Kelola Lowongan
      </h1>
      <ol class="breadcrumb">
        <li><a href="Index.aspx"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Kelola Lowongan</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Kelola lowongan anda disini..</h3>
            </div>
              <div class="box-body">
          
            <asp:PlaceHolder ID = "PlaceHolder1" runat="server" />
        </div>
        <!-- /.box-body -->
    </div>
          <!-- /.box -->

         
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