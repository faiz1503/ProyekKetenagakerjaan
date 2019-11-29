Imports System.Web
Imports System.Web.Services
Imports System.Data
Imports System.Data.SqlClient

Public Class HapusLowongan
    Implements System.Web.IHttpHandler

    Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest
        Dim id As Int32
        If Not context.Request.QueryString("id") Is Nothing Then
            id = Convert.ToInt32(context.Request.QueryString("id"))
        Else
            Throw New ArgumentException("No parameter specified")
        End If
        Dim dt2 As DataTable = Me.GetDataLamaran(id)
        Dim dt As DataTable = Me.GetData(id)

        context.Response.Redirect("KelolaLowongan.aspx")
    End Sub
    Private Function GetDataLamaran(ByVal id As String) As DataTable
        Dim connection As SqlConnection = Nothing
        Dim conn As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\SistemKetenagakerjaan.mdf;Integrated Security=True;User Instance=True"
        connection = New SqlConnection(conn)

        Using cmd As New SqlCommand("DELETE FROM lamaran FROM lamaran INNER JOIN lowongan ON lamaran.id_lowongan = lowongan.id_lowongan WHERE lowongan.id_lowongan='" & id & "'")
            Using sda As New SqlDataAdapter()
                cmd.Connection = connection
                sda.SelectCommand = cmd
                Using dt As New DataTable()
                    sda.Fill(dt)
                    Return dt
                End Using
            End Using

        End Using

    End Function

    Private Function GetData(ByVal id As String) As DataTable
        Dim connection As SqlConnection = Nothing
        Dim conn As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\SistemKetenagakerjaan.mdf;Integrated Security=True;User Instance=True"
        connection = New SqlConnection(conn)

        Using cmd As New SqlCommand("delete from lowongan where id_lowongan='" & id & "'")
            Using sda As New SqlDataAdapter()
                cmd.Connection = connection
                sda.SelectCommand = cmd
                Using dt As New DataTable()
                    sda.Fill(dt)
                    Return dt
                End Using
            End Using

        End Using

    End Function

    ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property

End Class