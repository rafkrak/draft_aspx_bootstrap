Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data
Imports System.Security.Cryptography
Namespace UniwersalneFunkcje

    Public Class Tools
        Inherits System.Web.UI.Page

        Public Function Namiary() As String

            Namiary = "Server=localhost\MSSQL2012;Database=security;Trusted_Connection=True;"
            'Namiary = "Data Source=mssql3.webio.pl,2401;Initial Catalog=kuvation1_optyczny;Persist Security Info=True;User ID=kuvation1_master;Password=Dywizjonu303#"

        End Function


        Public Function Waliduj(ByVal tekst As String) As String

            Dim walidowany As String
            walidowany = tekst
            walidowany = Replace(walidowany, "'", "")
            walidowany = Replace(walidowany, "<", "")
            walidowany = Replace(walidowany, ">", "")
            walidowany = Replace(walidowany, ";", "")
            walidowany = Replace(walidowany, "script", "")
            walidowany = Replace(walidowany, "\r", "")
            walidowany = Replace(walidowany, "\n", "")
            walidowany = Replace(walidowany, "0xff", "")
            walidowany = Replace(walidowany, "&", "")
            walidowany = Replace(walidowany, "EBCDIC 0x0f'", "")

            Return walidowany

        End Function


        Public Sub wykonaj_na_bazie(ByVal sql_command As String)

            Dim Polecenie As New SqlCommand
            Dim SQLConn As New SqlConnection

            SQLConn.ConnectionString = Namiary()
            SQLConn.Open()
            Polecenie.Connection = SQLConn

            Polecenie.CommandType = CommandType.Text
            Polecenie.CommandText = sql_command
            Polecenie.ExecuteNonQuery()

            SQLConn.Close()

        End Sub


        Public Function pobierz_z_bazy_dt(ByVal select_command As String) As DataTable

            Dim strSql As String = select_command
            Dim dtb As New DataTable
            Using cnn As New SqlConnection(Namiary())
                cnn.Open()
                Using dad As New SqlDataAdapter(strSql, cnn)
                    dad.Fill(dtb)
                End Using
                cnn.Close()
            End Using

            Return dtb

        End Function



        Public Function pobierz_z_bazy_scalar(ByVal select_command As String) As String

            Dim Polecenie As New SqlCommand
            Dim SQLConn As New SqlConnection
            Dim cmd As String
            Dim odp_z_bazy As String

            SQLConn.ConnectionString = Namiary()
            SQLConn.Open()
            Polecenie.Connection = SQLConn

            cmd = select_command

            Polecenie.CommandType = CommandType.Text
            Polecenie.CommandText = cmd

            odp_z_bazy = Polecenie.ExecuteScalar()

            SQLConn.Close()

            Return odp_z_bazy

        End Function

        Public Function zamien_czas(ByVal sekundy As Long) As String   'Funkcja konwertuje czas w sekundach na czas w formacie GG:MM:SS

            Dim godzina, minuta, sekunda As Double

            godzina = 0
            minuta = 0
            sekunda = 0
            godzina = sekundy \ 3600
            minuta = (sekundy Mod 3600) \ 60
            sekunda = ((sekundy Mod 3600) Mod 60)
            zamien_czas = godzina & " g " & minuta & " m " & sekunda & " s"
        End Function

        Public Sub waliduj_textboxy(ByVal cph As ContentPlaceHolder)

            For Each kontrolka As Control In cph.Controls
                If TypeOf kontrolka Is TextBox Then
                    Dim tb As TextBox
                    tb = kontrolka
                    tb.Text = Waliduj(tb.Text)
                End If
            Next

        End Sub
        Public Sub waliduj_textboxy_w_panelu(ByVal panel As Panel)

            For Each kontrolka As Control In panel.Controls
                If TypeOf kontrolka Is TextBox Then
                    Dim tb As TextBox
                    tb = kontrolka
                    tb.Text = Waliduj(tb.Text)
                End If
            Next

        End Sub

    End Class
End Namespace
