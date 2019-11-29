Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlDataReader
Imports System.Web
Public Class Home
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
            nama.Text = dt.Rows(0)("nama_instansi").ToString()  'Where ColumnName is the Field from the DB that you want to display
            email.Text = dt.Rows(0)("email_instansi").ToString()
            alamat.Text = dt.Rows(0)("alamat_instansi").ToString()
            Web.Text = dt.Rows(0)("web_instansi").ToString()
            ket.Text = dt.Rows(0)("ket_instansi").ToString()
        End If
        connection.Close()
    End Sub

End Class