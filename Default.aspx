<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>


  
<asp:Content ID="Content1" ContentPlaceHolderID="tresc_strony" Runat="Server">
    

      <div class="container">
        <div class="row">
            <div class="col-12">

               

            </div>
            </div>
          </div>


  <div class="container">
        <div class="row">
                   
                    <!-- Modal -->
                                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title" id="myModalLabel">ZMIEŃ HASŁO</h4>
                                         </div>
                                <div class="modal-body">
                                   
                                    <asp:TextBox ID="tb_pass1" runat="server" placeholder="Nowe hasło" class="form-control" TextMode="Password"></asp:TextBox><br />
                                    <asp:TextBox ID="tb_pass2" runat="server" placeholder="Powtórz hasło" class="form-control" TextMode="Password"></asp:TextBox><br />
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">ANULUJ</button>
                             
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
    </div> <!-- MODAL EXAMPLE -->     
  
    
</asp:Content>

