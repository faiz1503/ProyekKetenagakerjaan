Imports System.Web
Imports System.Web.Services
Imports System.Data
Imports System.Data.SqlClient
Public Class EditLowongan
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim id As Int32
        If Not Context.Request.QueryString("id") Is Nothing Then
            id = Convert.ToInt32(Context.Request.QueryString("id"))
        Else
            Throw New ArgumentException("No parameter specified")
        End If
        GetData(id)
        Label5.Text = "Tanggal tutup lowongan sekarang: "
    End Sub

    Private Sub GetData(ByVal id)
        Dim dt As New DataTable()
        Dim connection As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\SistemKetenagakerjaan.mdf;Integrated Security=True;User Instance=True")
        connection.Open()
        Dim sqlCmd As New SqlCommand("SELECT * from lowongan WHERE id_lowongan= '" & id & "'", connection)

        'Cek apakah user, password dan hak akses yang telah dipilih/dimasukan ada di database 

        Dim sqlDa As New SqlDataAdapter(sqlCmd)

        sqlDa.Fill(dt)
        If dt.Rows.Count > 0 Then
            Label4.Text = dt.Rows(0)("id_lowongan").ToString()
            txtNamaLowongan.Text = dt.Rows(0)("nama_lowongan").ToString()  'Where ColumnName is the Field from the DB that you want to display
            txtJenisLowongan.Text = dt.Rows(0)("jenis_lowongan").ToString()
            txtPosisiLowongan.Text = dt.Rows(0)("posisi_lowongan").ToString()
            txtGajiLowongan.Text = dt.Rows(0)("gaji_lowongan").ToString()
            txtKetLowongan.Text = dt.Rows(0)("ket_lowongan").ToString()
            lblTanggal.Text = dt.Rows(0)("tgl_buka_lowongan").ToString()
            Label3.Text = dt.Rows(0)("tgl_tutup_lowongan").ToString()
        End If
        connection.Close()
    End Sub


    Protected Sub btnPost_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnPost.Click
        Dim Sql, user, nama, jenis, posisi, gaji, ket, tglbuk, tgltup, id As String
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

        nama = txtNamaLowongan.Text
        jenis = txtJenisLowongan.Text
        posisi = txtPosisiLowongan.Text
        gaji = txtGajiLowongan.Text
        ket = txtKetLowongan.Text
        tglbuk = lblTanggal.Text
        tgltup = Label3.Text
        id = Label4.Text

        'Cek apakah user, password dan hak akses yang telah dipilih/dimasukan ada di database 
        Sql = "UPDATE lowongan SET nama_lowongan = '" + nama + "', jenis_lowongan = '" + jenis + "', posisi_lowongan = '" + posisi + "', gaji_lowongan = '" + gaji + "', ket_lowongan = '" + ket + "', tgl_buka_lowongan = '" + tglbuk + "', tgl_tutup_lowongan = '" + tgltup + "' where id_lowongan = '" + id + "'"
        cmd.Connection = koneksi
        cmd.CommandText = Sql
        cmd.ExecuteNonQuery()

        koneksi.Close()
        Response.Redirect("KelolaLowongan.aspx")


    End Sub

    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As EventArgs) Handles Calendar1.SelectionChanged
        Label3.Text = ""

        For Each d As DateTime In Calendar1.SelectedDates()
            Label3.Text = d.ToString("dd/MM/yyyy")
            Label5.Text = "Tanggal tutup lowongan diperpanjang menjadi tanggal: "
        Next
    End Sub
End Class