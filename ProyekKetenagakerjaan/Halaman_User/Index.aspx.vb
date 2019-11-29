Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlDataReader
Imports System.Web

Public Class Index
    Inherits System.Web.UI.Page

    Public Sub FillGridView()

        Dim conString As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\SistemKetenagakerjaan.mdf;Integrated Security=True;User Instance=True"
        Dim conn As New SqlConnection(conString)
        Dim ds As New DataSet()
        Try
            conn.Open()
            Dim cmd As New SqlCommand("SELECT * FROM lowongan", conn)
            Dim da As New SqlDataAdapter()
            da.SelectCommand = cmd
            da.Fill(ds)

            'Exception Message
        Catch ex As Exception
        Finally
            conn.Close()
            conn.Dispose()
        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

        If Not Me.IsPostBack Then
            FillGridView()
            GetData()

            Dim conString As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\SistemKetenagakerjaan.mdf;Integrated Security=True;User Instance=True"
            Dim conn As New SqlConnection(conString)
            Dim ds As New DataTable()
            Try
                conn.Open()
                Dim cmd As New SqlCommand("SELECT * FROM lowongan", conn)
                Dim da As New SqlDataAdapter()
                da.SelectCommand = cmd
                da.Fill(ds)

                'Exception Message
            Catch ex As Exception
            Finally
                conn.Close()
                conn.Dispose()
            End Try
        End If

    End Sub


    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As GridViewCommandEventArgs)
        If e.CommandName = "Result" Then
            Dim row As GridViewRow = CType(((CType(e.CommandSource, LinkButton)).NamingContainer), GridViewRow)
            Dim lnk As LinkButton = CType(row.FindControl("lnkId"), LinkButton)
            Response.Redirect("Detail_Lowongan.aspx?id" & lnk.Text)
        End If
    End Sub

    Private Sub GetData()
        Dim dt As New DataTable()
        Dim connection As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\SistemKetenagakerjaan.mdf;Integrated Security=True;User Instance=True")
        connection.Open()
        Dim sqlCmd As New SqlCommand("SELECT * FROM pengguna WHERE email_pengguna='" + Session("email") + "'", connection)

        'Cek apakah user, password dan hak akses yang telah dipilih/dimasukan ada di database 

        Dim sqlDa As New SqlDataAdapter(sqlCmd)

        sqlDa.Fill(dt)
        If dt.Rows.Count > 0 Then
            email.Text = dt.Rows(0)("email_pengguna").ToString()  'Where ColumnName is the Field from the DB that you want to display
        End If
        connection.Close()
    End Sub
End Class

