Imports UniwersalneFunkcje
Imports System.Security.Cryptography

Partial Class _Default
    Inherits System.Web.UI.Page
    Public dodatki As New Tools

    Private Sub ShowAlert(ByVal Message As String)
        ClientScript.RegisterStartupScript(Me.GetType(), "AlertScript", "alert('" & Message & "');", True)
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load


        If Not IsPostBack Then


        End If

    End Sub


End Class
