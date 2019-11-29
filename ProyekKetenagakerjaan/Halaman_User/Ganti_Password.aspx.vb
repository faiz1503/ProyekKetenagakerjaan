Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlDataReader
Imports System.Web

Public Class Ganti_Password
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        GetData()

        If (TextBox1.Text = Label2.Text) And (TextBox2.Text = TextBox3.Text) Then

            Dim Sql As String
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


            'Cek apakah user, password dan hak akses yang telah dipilih/dimasukan ada di database 
            Sql = "UPDATE instansi SET password_instansi = '" + TextBox2.Text + "' where email_instansi = '" + Session("email") + "'"
            cmd.Connection = koneksi
            cmd.CommandText = Sql
            cmd.ExecuteNonQuery()

            koneksi.Close()

            Response.Redirect("Index.aspx")
        Else
            Label1.Text = "Error"
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
            Label2.Text = dt.Rows(0)("password_instansi").ToString()  'Where ColumnName is the Field from the DB that you want to display
        End If
        connection.Close()
    End Sub

End Class