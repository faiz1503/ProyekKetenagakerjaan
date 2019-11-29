Imports System.Data.Sql
Imports System.Data.SqlClient

Public Class Login_User
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
        Sql = "SELECT * FROM pengguna WHERE email_pengguna='" + user + "' AND password_pengguna='" + pass + "'"
        cmd = New SqlCommand(Sql, koneksi)
        baca = cmd.ExecuteReader()
        If baca.HasRows = True Then
            Session("email") = txtEmail.Text
            Response.Redirect("Index.aspx")
        Else
            'Munculkan messagebox pesan salah 
            lblSign.Text = " Email atau Password salah!"
            txtEmail.Text = ""
            txtPassword.Value = ""
            txtEmail.Focus()
        End If

        baca.Close()
        cmd.Dispose()
    End Sub

    Protected Sub btnSignUp_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSignUp.Click
        Dim Sql, email, nama, pass As String
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

        email = txtEmailBaru.Text
        nama = txtNamaBaru.Text
        pass = txtPasswordBaru.Value

        'Cek apakah user, password dan hak akses yang telah dipilih/dimasukan ada di database 
        Sql = "insert into instansi (email_instansi,nama_instansi,password_instansi) values ('" + email + "','" + nama + "','" + pass + "')"
        cmd.Connection = koneksi
        cmd.CommandText = Sql
        cmd.ExecuteNonQuery()

        koneksi.Close()

        Response.Redirect("Login_User.aspx")
    End Sub

End Class