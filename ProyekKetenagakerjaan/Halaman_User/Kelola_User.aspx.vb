Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlDataReader
Imports System.Web

Public Class Kelola_User
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            GetData()
        End If
    End Sub

    Private Sub GetData()
        Dim dt As New DataTable()
        Dim connection As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\SistemKetenagakerjaan.mdf;Integrated Security=True;User Instance=True")
        connection.Open()
        Dim sqlCmd As New SqlCommand("SELECT * FROM instansi WHERE email_instansi='" + Session("email") + "'", connection)

        'Cek apakah user, password dan hak akses yang telah dipilih/dimasukan ada di database 

        Dim sqlDa As New SqlDataAdapter(sqlCmd)

        sqlDa.Fill(dt)
        If dt.Rows.Count > 0 Then
            TextBox1.Text = dt.Rows(0)("nama_instansi").ToString()  'Where ColumnName is the Field from the DB that you want to display
            TextBox2.Text = dt.Rows(0)("email_instansi").ToString()
            TextBox3.Text = dt.Rows(0)("alamat_instansi").ToString()
            TextBox4.Text = dt.Rows(0)("web_instansi").ToString()
            TextBox5.Text = dt.Rows(0)("ket_instansi").ToString()
        End If
        connection.Close()
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim Sql, user, nama, alamat, web, ket As String
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

        nama = TextBox1.Text
        user = TextBox2.Text
        alamat = TextBox3.Text
        web = TextBox4.Text
        ket = TextBox5.Text

        'Cek apakah user, password dan hak akses yang telah dipilih/dimasukan ada di database 
        Sql = "update instansi set email_instansi = '" + user + "',nama_instansi = '" + nama + "',alamat_instansi = '" + alamat + "',web_instansi = '" + web + "',ket_instansi = '" + ket + "' where email_instansi = '" + Session("email") + "'"
        cmd.Connection = koneksi
        cmd.CommandText = Sql
        cmd.ExecuteNonQuery()

        koneksi.Close()

        Response.Redirect("Index.aspx")
    End Sub

End Class