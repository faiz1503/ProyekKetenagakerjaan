Imports System.Web
Imports System.Web.Services
Imports System.Data
Imports System.Data.SqlClient


Public Class Detail_Lowongan
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        ambilIdLowongan()

        ambilPengguna()
    End Sub

    Private Sub ambilPengguna()
        Dim dt As New DataTable()
        Dim connection As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\SistemKetenagakerjaan.mdf;Integrated Security=True;User Instance=True")

        connection.Open()
        Dim sqlCmds As New SqlCommand("SELECT * from pengguna where email_pengguna = '" + Session("email") + "'", connection)

        'Cek apakah user, password dan hak akses yang telah dipilih/dimasukan ada di database 

        Dim sqlDas As New SqlDataAdapter(sqlCmds)

        sqlDas.Fill(dt)
        If dt.Rows.Count > 0 Then


        End If
        connection.Close()
    End Sub

    Private Sub ambilInstansi()
        Dim dt As New DataTable()
        Dim connection As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\SistemKetenagakerjaan.mdf;Integrated Security=True;User Instance=True")

        connection.Open()
        Dim sqlCmdss As New SqlCommand("SELECT * from lowongan ", connection)

        'Cek apakah user, password dan hak akses yang telah dipilih/dimasukan ada di database 

        Dim sqlDass As New SqlDataAdapter(sqlCmdss)

        sqlDass.Fill(dt)
        If dt.Rows.Count > 0 Then


        End If
        connection.Close()
    End Sub

    Private Sub ambilIdLowongan()

        Dim id_lowongan As Integer = Convert.ToInt32(Request.QueryString("id_lowongan"))
        If Not IsPostBack Then
            Dim conString As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\SistemKetenagakerjaan.mdf;Integrated Security=True;User Instance=True"
            Dim cn As New SqlConnection(conString)
            cn.Open()
            Dim cmd As New SqlCommand("select * FROM lowongan where id_lowongan='" + id_lowongan + "'", cn)

            Dim da As New SqlDataAdapter(cmd)
            Dim ds As DataSet = New DataSet()
            da.Fill(ds, "lowongan")
            DataList1.DataSource = ds
            DataList1.DataBind()
            cn.Close()
        End If

    End Sub
End Class