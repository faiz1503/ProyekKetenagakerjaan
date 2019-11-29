Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlDataReader
Imports System.Data
Imports System.Text
Imports System.Configuration

Public Class DaftarLamaran
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            'Populating a DataTable from database.
            Dim dt As DataTable = Me.GetData()

            'Building an HTML string.
            Dim html As New StringBuilder()

            'Table start.
            html.Append("<table id='example1' class='table table-bordered table-striped'>")

            'Building the Header row.
            html.Append("<tr>")
            For Each column As DataColumn In dt.Columns
                html.Append("<th>")
                html.Append(column.ColumnName)
                If column.ColumnName.Equals("berkas_lamaran") Then
                    html.Append("</th><th>Aksi")
                End If
                html.Append("</th>")
            Next
            html.Append("</tr>")

            'Building the Data rows.
            For Each row As DataRow In dt.Rows
                html.Append("<tr>")
                For Each column As DataColumn In dt.Columns
                    html.Append("<td>")
                    Dim aksi As String
                    If column.ColumnName.Equals("id_lamaran") Then
                        aksi = row(column.ColumnName)
                    End If
                    If column.ColumnName.Equals("berkas_lamaran") Then
                        html.Append(row(column.ColumnName))
                        html.Append("</td>")
                        html.Append("<td><input id='edit' class='btn btn-block btn-primary' type='button' value='Download' width='70px'/>  ")
                        html.Append("<a href='HapusLamaran.ashx?id=" & aksi & "' id='hapus'><input id='hapus' class='btn btn-block btn-primary' type='button' value='Hapus' width='70px'/></a>")

                    Else
                        html.Append(row(column.ColumnName))
                    End If

                    html.Append("</td>")
                Next
                html.Append("</tr>")
            Next

            'Table end.
            html.Append("</table>")

            'Append the HTML string to Placeholder.
            PlaceHolder1.Controls.Add(New Literal() With { _
               .Text = html.ToString() _
             })
        End If
    End Sub

    Private Function GetData() As DataTable
        Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\SistemKetenagakerjaan.mdf;Integrated Security=True;User Instance=True"
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand("SELECT lamaran.id_lamaran, lowongan.nama_lowongan, [pengguna].nama_pengguna, lamaran.ket_lamaran, lamaran.berkas_lamaran FROM instansi INNER JOIN lamaran ON instansi.id_instansi = lamaran.id_instansi INNER JOIN lowongan ON instansi.id_instansi = lowongan.id_instansi AND lamaran.id_lowongan = lowongan.id_lowongan INNER JOIN [pengguna] ON lamaran.id_pengguna = [pengguna].id_pengguna WHERE instansi.email_instansi ='" + Session("email") + "'")
                Using sda As New SqlDataAdapter()
                    cmd.Connection = con
                    sda.SelectCommand = cmd
                    Using dt As New DataTable()
                        sda.Fill(dt)
                        Return dt
                    End Using
                End Using
            End Using
        End Using
    End Function
    Protected Sub btnFilter_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnFilter.Click
        Session("filter") = TextBox1.Text
        Response.Redirect("FilterDaftarLamaran.aspx")

    End Sub
End Class