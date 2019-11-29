Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlDataReader
Public Class TambahLowongan
    Inherits System.Web.UI.Page


    Protected Sub btnPost_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnPost.Click
        GetId()

        Dim Sql, nama, jenis, posisi, gaji, ket, buka, tutup As String
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
        buka = lblTanggal.Text.ToString
        tutup = Label3.Text.ToString
        ID = Label2.Text

        'Cek apakah user, password dan hak akses yang telah dipilih/dimasukan ada di database 
        Sql = "insert into lowongan(nama_lowongan,jenis_lowongan,posisi_lowongan,gaji_lowongan,ket_lowongan,tgl_buka_lowongan,tgl_tutup_lowongan,id_instansi) values ('" + nama + "','" + jenis + "','" + posisi + "','" + gaji + "','" + ket + "','" + buka + "','" + tutup + "','" + ID + "')"
        cmd.Connection = koneksi
        cmd.CommandText = Sql
        cmd.ExecuteNonQuery()

        koneksi.Close()

        Response.Redirect("KelolaLowongan.aspx")
    End Sub

    Private Sub GetId()
        Dim dt As New DataTable()
        Dim connection As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\SistemKetenagakerjaan.mdf;Integrated Security=True;User Instance=True")
        connection.Open()
        Dim sqlCmd As New SqlCommand("SELECT id_instansi FROM instansi WHERE email_instansi='" + Session("email") + "'", connection)

        'Cek apakah user, password dan hak akses yang telah dipilih/dimasukan ada di database 

        Dim sqlDa As New SqlDataAdapter(sqlCmd)

        sqlDa.Fill(dt)
        If dt.Rows.Count > 0 Then
            Label2.Text = dt.Rows(0)("id_instansi").ToString()  'Where ColumnName is the Field from the DB that you want to display
        End If
        connection.Close()
    End Sub

    Private Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblTanggal.Text = Date.Now.ToString("dd/MM/yyyy")
    End Sub

    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As EventArgs) Handles Calendar1.SelectionChanged
        Label3.Text = ""
        Label1.Text = "Tanggal tutup lowongan: "
        For Each d As DateTime In Calendar1.SelectedDates()
            Label3.Text &= d.ToString("dd/MM/yyyy")
        Next
    End Sub
End Class