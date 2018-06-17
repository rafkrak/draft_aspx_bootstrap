Imports UniwersalneFunkcje
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage



    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load



    End Sub

    Protected Sub Page_Preint(sender As Object, e As EventArgs) Handles Me.PreRender


    End Sub


    Protected Sub AddAlertMessage(Message As String)
        Dim script = [String].Format("alert('{0}');", Message)
        Me.Page.ClientScript.RegisterStartupScript(Me.[GetType](), "PageAlertMessage", script, True)
    End Sub


End Class

