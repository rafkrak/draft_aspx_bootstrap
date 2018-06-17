Imports System.Data
Imports System.Data.SqlClient
Imports UniwersalneFunkcje

Partial Class szablon_masterpage
    Inherits System.Web.UI.Page
    Public Shared user_id As String
    Public dodatki As New Tools


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        user_id = Replace(User.Identity.Name.ToString, "LUXMED\", "")

        div_error.Visible = False
        div_success.Visible = False

        If Not IsPostBack Then



        End If



    End Sub




    Private Sub ShowAlert(ByVal Message As String)
        ClientScript.RegisterStartupScript(Me.GetType(), "AlertScript", "alert('" & Message & "');", True)
    End Sub





    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles but_modal.Click

        label_modal.Text = "Aktualna godzina: " & Now.ToShortTimeString
        ClientScript.RegisterStartupScript(Me.GetType(), "alert", "ShowPopup();", True)

    End Sub

    Protected Sub but_error_Click(sender As Object, e As EventArgs) Handles but_error.Click

        lab_error.Text = "Jestem błędem który wystąpił o  " & Now.ToShortTimeString
        div_error.Visible = True
    End Sub
    Protected Sub but_sukces_Click(sender As Object, e As EventArgs) Handles but_sukces.Click


        Lab_sukces.Text = "Jestem sukcesem który wystąpił o  " & Now.ToShortTimeString
        div_success.Visible = True



    End Sub
    Protected Sub Button1_Click1(sender As Object, e As EventArgs) Handles Button1.Click

        '  ShowAlert(Request.UserHostAddress.ToString)
        ShowAlert(HttpContext.Current.Request.Url.AbsolutePath)

        If Button1.Attributes.Item("Class") = "btn btn-danger btn-block" Then

            Button1.Attributes.Add("class", "btn btn-light btn-block")

        Else
            Button1.Attributes.Add("class", "btn btn-danger btn-block")
        End If



    End Sub


    Protected Sub gv_action(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand

        Dim index As Integer
        index = Convert.ToInt32(e.CommandArgument)
        Dim id As Integer
        id = GridView1.Rows(index).Cells.Item(0).Text


        If e.CommandName.ToString = "akcja1" Then

            ShowAlert("akcja 1 dla id: " & id & " id jest w ukrytej za pomocą sylu komorce")

        End If




    End Sub
    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click

        dodatki.wykonaj_na_bazie("Insert into example values ('1','2','" & Now() & "')")

        Lab_sukces.Text = "wiersz dodany"
        div_success.Visible = True
        GridView1.DataBind()

    End Sub
    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Dim wartosc As String

        wartosc = dodatki.pobierz_z_bazy_scalar("select max(id) from example")

        ShowAlert("Max id w bazie to " & wartosc)
    End Sub
End Class



