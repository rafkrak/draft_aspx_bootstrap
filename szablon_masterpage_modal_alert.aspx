<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="szablon_masterpage_modal_alert.aspx.vb" Inherits="szablon_masterpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="tresc_strony" Runat="Server">

    <script >
         function ShowPopup() {
             $('#myModal').modal('show');
        }


        ShowPopup();
    </script> 

    <style>
          .hideGridColumn
    {
        display:none;
    }

    </style>

    <div class="container">  
            <div class="row">
                            <div class="col-12">

                                     <h4>Nagłówek</h4>
                                     
                            </div>
                    </div>
      </div>


                        <div class="container" id="div_error" runat="server" visible = "false"> <%--ERROR INFO--%>
                          <div class="row">
                            <div class="col-md-12">
                             <div class="alert alert-danger" role="alert">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">×</button>
            
                            <p class="mb-0"> <asp:label runat="server" text="Informacja o błędzie" id="lab_error" ></asp:label></p>
             
                          </div>
                        </div>
                      </div>
                    </div> <%-- KONIEC ERROR INFO--%>


                    <div class="container" id="div_success" runat="server" visible = "false"> <%--Sukces INFO--%>
                          <div class="row">
                            <div class="col-md-12">
                             <div class="alert alert-success" role="alert">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">×</button>
            
                            <p class="mb-0"> <asp:label runat="server" text="Informacja o błędzie" id="Lab_sukces" ></asp:label></p>
             
                          </div>
                        </div>
                      </div>
                    </div> <%-- KONIEC sukces INFO--%>
              

        

          <%--  BOOTSTRAP --%>

              <div class="container">  

                         <div class="row">
                         
                             <div class="col-4">

                                 <asp:Button ID="but_modal" runat="server" Text="Pokaż modal z kodu VB" class="form-control btn-warning"/>

                             </div>
                             
                             <div class="col-4">
                                 <asp:Button ID="but_error" runat="server" Text="POKAŻ ERROR" class="form-control btn-danger"/>
                                                                    
                             </div>

                             <div class="col-4">
                                    <asp:Button ID="but_sukces" runat="server" Text="POKAŻ SUKCES" class="form-control btn-success"/>
                                                          
                             </div>

                             
                         </div>


                    <div class="row my-3">
                     <div class ="col-md-12">
             


                       <div class="input-group">
                      <asp:TextBox ID="TextBox_data_wystawienia" runat="server" type="text" class="form-control"  placeholder="Data wystawienia - przyklad klanedarza z ikona" data-toggle="datepicker" ToolTip="Data wystawienia" ></asp:TextBox>
                   <span class="input-group-btn">
                      <button type="button" class="btn btn-default docs-datepicker-trigger" disabled>
                        <i class="fa fa-calendar" aria-hidden="true"></i>
                      </button>
                    </span>
                </div>


                             
           
                        </div>

                 </div>




                   <div class="row my-3">
                           
                             
                          <div class="col-3">
                     
                            <div class="form-group">
                             
                                    <small  class="form-text text-muted">Etykieta do pola - przykład</small>
                                      <asp:DropDownList ID="DDL_liczba_odp" class="form-control" runat="server" AutoPostBack="True">
                                          <asp:ListItem Value="0">Wybierz:</asp:ListItem>
                              
                                          <asp:ListItem>2</asp:ListItem>
                              
                                          <asp:ListItem>3</asp:ListItem>
                                          <asp:ListItem>4</asp:ListItem>
                                          <asp:ListItem>5</asp:ListItem>
                                          <asp:ListItem>6</asp:ListItem>
                                    </asp:DropDownList>

                            </div>
                     
                         </div>

                       <div class="col-3">

                            <div class="form-group">
                             
                                    <small  class="form-text text-muted">Zajebisty CB 1</small>
                                       <div class="checkbox my-1" >
                                            <label style="font-size: 1.5em">
                                                <asp:CheckBox ID="Cb_aktywne" runat="server" />
                                                <span class="cr"><i class="cr-icon fa fa-check"></i></span>
                                            </label>
                                     </div>
                             </div>



                       </div>

                       <div class="col-3">

                            <div class="form-group">
                             
                                    <small  class="form-text text-muted">Zajebisty CB 2</small>
                                       <div class="checkbox my-1" >
                                            <label style="font-size: 1.5em">
                                                <asp:CheckBox ID="CheckBox1" runat="server" />
                                                <span class="cr"><i class="cr-icon fa fa-check"></i></span>
                                            </label>
                                     </div>
                             </div>



                       </div>

                       <div class="col-3">

                            <div class="form-group">
                             
                                    <small  class="form-text text-muted">Zajebisty CB 3</small>
                                       <div class="checkbox my-1" >
                                            <label style="font-size: 1.5em">
                                                <asp:CheckBox ID="CheckBox2" runat="server" />
                                                <span class="cr"><i class="cr-icon fa fa-check"></i></span>
                                            </label>
                                     </div>
                             </div>



                       </div>
         
                    </div>




                   <div class="row my-3">
                                                        
                          <div class="col-12">
                              <asp:Button ID="Button1" runat="server" Text="Jak pobrać adres aktualnej witryny - przy okazji guzik na cala szerokosc i zmienia swoj styl po kliknieciu" Class="btn btn-info btn-block" />

                         </div>
                     </div>


                   <div class="row my-3">
                                                        
                                  <div class="col-6">
                                      <asp:Button ID="Button3" runat="server" Text="Zapisz do bazy" Class="btn btn-primary btn-block" />

                                 </div>
                               
                                  <div class="col-6">
                                      <asp:Button ID="Button4" runat="server" Text="Pobierz z bazy" Class="btn btn-secondary btn-block" />

                                 </div>
                </div>
               

                    <div class="row my-3">
                                                        
                                  <div class="col-12">
                                      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="sql_dane" class="table table-sm table-striped table-bordered table-hover">
                                          <Columns>
                                              <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" SortExpression="Id" HeaderStyle-CssClass="hideGridColumn" ItemStyle-CssClass="hideGridColumn" />
                                              <asp:BoundField DataField="Kolumna1" HeaderText="Kolumna1" SortExpression="Kolumna1" />
                                              <asp:BoundField DataField="kolumna2" HeaderText="kolumna2" SortExpression="kolumna2" />
                                              <asp:BoundField DataField="kolumna3" HeaderText="kolumna3" SortExpression="kolumna3" />

                                              <asp:ButtonField ButtonType="Image" ControlStyle-Width="23px" ControlStyle-Height="23px"  CommandName="akcja1" HeaderText='<img src="ico/ludzie2.png" height="23" width="23" />' ImageUrl="ico/people.png"  >
<ControlStyle Height="23px" Width="23px"></ControlStyle>
                                                  </asp:ButtonField>

                                          </Columns>
                                      </asp:GridView>

                                 </div>
                               
                </div>


       </div>

              



        <div class="container"> <%--modal--%>
       
        <div class="row">
                   
                                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title" id="myModalLabel">Przykładowy modal</h4>
                                         </div>
                                <div class="modal-body">
                                   
                                    <asp:Label ID="label_modal" runat="server" Text=""></asp:Label>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                  
                                  
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">ANULUJ</button>
                                  
                                    <asp:Button ID="Button2" runat="server" Text="Wykonaj" class="btn btn-default"/>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
    </div> <!-- END MODAL  -->   


    <asp:SqlDataSource ID="sql_dane" runat="server" ConnectionString="<%$ ConnectionStrings:security_db %>" SelectCommand="SELECT example.* FROM example order by 1 desc"></asp:SqlDataSource>

    <asp:Button ID="Button5" runat="server" Text="Button" class="btn btn-success btn-warning btn-block btn-lg" />

</asp:Content>

