Imports System.Data.Sql
Imports System.Data.SqlClient
Public Class LoginAdmin
    Inherits System.Web.UI.Page

    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnLogin.Click
        Dim Sql, user, pass As String
        Dim koneksi As New SqlConnection
        Dim cmd As New SqlCommand
        Dim baca As SqlDataReader

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


        'Cek apakah user, password dan hak akses yang telah dipilih/dimasukan ada di database 
        Sql = "SELECT * FROM instansi WHERE email_instansi='" + user + "' AND password_instansi='" + pass + "'"
        cmd = New SqlCommand(Sql, koneksi)
        baca = cmd.ExecuteReader()
        If baca.HasRows = True Then
            Session("email") = txtEmail.Text
            Response.Redirect("Index.aspx")
        Else
            'Munculkan messagebox pesan salah 
            lblSign.Text = " Email atau Password salah!"
            lblSign.Font.Bold = True
            lblSign.Font.Italic = True
            txtEmail.Text = ""
            txtPassword.Value = ""
            txtEmail.Focus()
        End If
        
        baca.Close()
        cmd.Dispose()
    End Sub
End Class