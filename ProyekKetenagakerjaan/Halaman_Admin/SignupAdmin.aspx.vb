Imports System.Data.Sql
Imports System.Data.SqlClient
Public Class SignupAdmin
    Inherits System.Web.UI.Page


    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnLogin.Click
        Dim Sql, user, pass, nama, alamat, web, ket As String
        Dim koneksi As New SqlConnection
        Dim cmd As New SqlCommand

        koneksi = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\SistemKetenagakerjaan.mdf;Integrated Security=True;User Instance=True")
        Try
            If koneksi.State = ConnectionState.Closed Then
                koneksi.Open()
            End If
        Catch ex As Exception
            MsgBox(Err.Description, MsgBoxStyle.Critical, "Error")
        End Try

        user = txtEmail.Text
        pass = txtPassword.Value
        nama = txtNama.Text
        alamat = txtAlamat.Text
        web = txtWeb.Text
        ket = txtKet.Text


        'Cek apakah user, password dan hak akses yang telah dipilih/dimasukan ada di database 
        Sql = "insert into instansi (email_instansi,password_instansi,nama_instansi,alamat_instansi,web_instansi,ket_instansi) values ('" + user + "','" + pass + "','" + nama + "','" + alamat + "','" + web + "','" + ket + "')"
        cmd.Connection = koneksi
        cmd.CommandText = Sql
        cmd.ExecuteNonQuery()

        koneksi.Close()

        Response.Redirect("LoginAdmin.aspx")
    End Sub
End Class