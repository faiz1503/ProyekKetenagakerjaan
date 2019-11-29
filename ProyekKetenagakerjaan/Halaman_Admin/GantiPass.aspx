<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="GantiPass.aspx.vb" Inherits="ProyekKetenagakerjaan.GantiPass" MasterPageFile="~/MasterPageAdmin.Master" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
          Ganti Password

      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Kelola Akun</li>  
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">Ganti password anda disini..</h3>

        </div>
        <div class="box-body">
            <table class="nav-justified">
                <tr>
                    <td style="width: 141px">
                        Password Lama</td>
                    <td style="width: 13px">
                        :</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="300px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 141px">
                        Password Baru</td>
                    <td style="width: 13px">
                        :</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="300px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="height: 20px; width: 141px">
                        Konfimasi Password</td>
                    <td style="width: 13px; height: 20px">
                        :</td>
                    <td style="height: 20px">
                        <asp:TextBox ID="TextBox3" runat="server" Width="300px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 141px">
                        <asp:Button ID="Button1" class="btn btn-block btn-primary" runat="server" Text="Simpan Perubahan" />
                    </td>
                    <td style="width: 13px">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                        <br />
                        <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
                    </td>
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
