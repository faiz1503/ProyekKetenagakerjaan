Imports System.Data.Sql
Imports System.Data.SqlClient
Public Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Session("email") Is Nothing) Then
            Response.Redirect("LoginAdmin.aspx")
        ElseIf (Session("email") IsNot Nothing) Then
            lblNamaSidebar.Text = Session("email").ToString()
            lblNamaAkun.Text = Session("email").ToString()
            lblNamaTab.Text = Session("email").ToString()
        End If
    End Sub

    Protected Sub btnSignOut_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSignOut.Click
        Session.Remove("email")
        Session.RemoveAll()
        Response.Redirect("LoginAdmin.aspx")
    End Sub
End Class