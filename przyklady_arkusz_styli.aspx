<%@ Page Title="" Language="VB" MasterPageFile="MasterPage.master" AutoEventWireup="false" CodeFile="przyklady_arkusz_styli.aspx.vb" Inherits="test_center_przyklady_kontrolek" %>

<asp:Content ID="Content1" ContentPlaceHolderID="tresc_strony" Runat="Server">



    <div class="py-1 text-center">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <h1 class="display-3">Arkusz styli</h1>
          
        </div>
      </div>
    </div>
  </div>
  <div class="py-3">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <h2>Paleta kolorów</h2>
          <hr>
          <div class="row text-center">
            <div class="col-md-2 bg-primary m-2">
              <p class="m-0 p-4">Primary</p>
            </div>
            <div class="col-md-2 bg-secondary m-2">
              <p class="m-0 p-4">Secondary</p>
            </div>
            <div class="col-md-2 bg-info m-2">
              <p class="m-0 p-4">Info</p>
            </div>
            <div class="col-md-2 bg-light m-2">
              <p class="m-0 p-4">Light</p>
            </div>
            <div class="col-md-2 bg-dark m-2">
              <p class="m-0 p-4">Dark</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>



  <div class="py-3">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <h2>Komunikaty informacyjne</h2>
            <hr />
                     <div class="py-0" id="error_massage2" runat="server" >
                        <div class="container">
                          <div class="row">
                            <div class="col-md-12">
                             <div class="alert alert-danger" role="alert">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">×</button>
            
                            <p class="mb-0"> <asp:label runat="server" text="Informacja o błędzie" id="lab_error2" ></asp:label></p>
             
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                <div class="py-0" id="Div1" runat="server" >
                        <div class="container">
                          <div class="row">
                            <div class="col-md-12">
                             <div class="alert alert-primary" role="alert">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">×</button>
            
                            <p class="mb-0"> <asp:label runat="server" text="Informacja o sukcesie" id="Label1" ></asp:label></p>
             
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

            </div>
          </div>
        </div>
      </div>



        <div class="py-3">
          <div class="container">

              <div class="row">
                    <div class="col-12">
                      <h2>Nowa opcja wyboru daty - date picker</h2>
                      <hr>

                    </div>
              </div>
                 <div class="row">
                     <div class ="col-md-6">
                  <div class="input-group">
                      <asp:TextBox ID="TextBox_data_wystawienia" runat="server" type="text" class="form-control"  placeholder="Data wystawienia" data-toggle="datepicker" ToolTip="Data wystawienia" ></asp:TextBox>
                   <span class="input-group-btn">
                      <button type="button" class="btn btn-default docs-datepicker-trigger" disabled>
                        <i class="fa fa-calendar" aria-hidden="true"></i>
                      </button>
                    </span>
                </div>
             </div>
                 </div>

              </div>
            </div>


  <div class="py-3">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <h2>Style napisów</h2>
          <hr>
          <h1 class="display-4"> Display </h1>
          <h1>Heading</h1>
          <p class="lead">Lead paragraph </p>
          <p>Paragraph. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
            <br><i>Italic. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</i>
            <br><b>Bold. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</b></p>
          
        </div>
      </div>
    </div>
  </div>
  <div class="py-4">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <h2>Przyciski</h2>
          <hr> </div>
      </div>
      <div class="row">
        <div class="col-12">
          <a class="btn btn-primary m-2" href="#">Primary</a>
          <a class="btn btn-secondary m-2" href="#">Secondary</a>
          <a class="btn btn-info m-2" href="#">Info</a>
          <a class="btn btn-light m-2" href="#">Light</a>
          <a class="btn btn-dark m-2" href="#">Dark</a>
          <a class="btn btn-link m-2" href="#">Link</a>
        </div>
      </div>
      <div class="row">
        <div class="col-12">
          <a class="btn btn-outline-primary m-2" href="#">Primary</a>
          <a class="btn btn-outline-secondary m-2" href="#">Secondary</a>
          <a class="btn btn-outline-info m-2" href="#">Info</a>
          <a class="btn btn-outline-light m-2" href="#">Light</a>
          <a class="btn btn-outline-dark m-2" href="#">Dark</a>
        </div>
      </div>
      <div class="row">
        <div class="col-12">
          <a class="btn btn-primary m-2" href="" data-toggle="button" aria-pressed="false" autocomplete="off">Toggle</a>
          <div class="btn-group m-2">
            <a href="#" class="btn btn-primary">Btn 1</a>
            <a href="#" class="btn btn-primary">Btn 2</a>
            <a href="#" class="btn btn-primary">Btn 3</a>
          </div>
          <div class="btn-group m-2">
            <button class="btn btn-primary dropdown-toggle" data-toggle="dropdown">Dropdown </button>
            <div class="dropdown-menu">
              <h6 class="dropdown-header">Dropdown header</h6>
              <a class="dropdown-item" href="#">Option 1</a>
              <a class="dropdown-item" href="#">Option 2</a>
              <a class="dropdown-item disabled" href="#">Disabled option</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">Separated link</a>
            </div>
          </div>
          <div class="btn-group m-2">
            <button type="button" class="btn btn-primary" href="#">Split dropdown</button>
            <button type="button" class="btn dropdown-toggle dropdown-toggle-split btn-primary" data-toggle="dropdown" aria-expanded="false" aria-haspopup="true"></button>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#">Action</a>
              <a class="dropdown-item" href="#">Another action</a>
              <a class="dropdown-item" href="#">Something else here</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">Separated link</a>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-12">
          <a class="btn btn-primary m-2" href="">Badge<span class="badge badge-secondary ml-1">New!</span></a>
          <a class="btn btn-primary m-2" href="#"><i class="fa fa-user fa-fw"></i>Icon</a>
          <a class="btn active btn-primary m-2" href="">Active</a>
          <a class="btn disabled btn-primary m-2" href="">Disabled</a>
          <a class="btn btn-sm btn-primary m-2" href="">Small</a>
          <a class="btn btn-primary m-2" href="">Regular</a>
          <a class="btn btn-lg btn-primary m-2" href="">Large</a>
        </div>
      </div>
    </div>
  </div>
  
  <div class="py-3">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <h2>Kontrolki formularzy</h2>
          <hr> </div>
      </div>
      <div class="row">
        <div class="col-md-6 p-3">
          
            <div class="form-group mb-1">
              <input type="email" name="email" class="form-control" placeholder="Wprowadź email"> </div> <small id="emailHelp" class="form-text text-muted">To pole jest obowiązkowe</small>
            <div class="form-group my-3"><select class="form-control"><option value="1">1</option><option value="2">2</option><option value="3">3</option></select></div>
            <div class="form-group my-3">
              <div class="input-group">
                <div class="input-group-prepend"><span class="input-group-text" id="basic-addon1">@</span></div>
                <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="Username"> </div>
            </div>
            <div class="form-group my-3">
               </div>
            <div class="form-check form-check-inline"> <label class="form-check-label">
                <input class="form-check-input" type="radio" value="option1" id="inlineRadio1" name="inlineRadioOptions"> 1
              </label> </div>
            <div class="form-check form-check-inline"> <label class="form-check-label">
                <input class="form-check-input" type="radio" value="option2" id="inlineRadio2" name="inlineRadioOptions"> 2
              </label> </div>
            <div class="form-check form-check-inline disabled"> <label class="form-check-label">
                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3" disabled=""> 3
              </label> </div>
            <div class="form-check mt-2">
              <input class="form-check-input" type="checkbox" id="exampleCheck1" value="on"><label class="form-check-label" for="exampleCheck1">Remember me</label></div>
            <div class="form-check disabled"> <label class="form-check-label"> <input class="form-check-input" type="checkbox" value="" disabled=""> Disabled option </label> </div>
            <button type="submit" class="btn btn-primary my-2">Submit button</button>
          
        </div>
        <div class="col-md-6 p-3">
          <form class="" method="post" action="">
            <div class="form-group">
              <input type="email" class="form-control form-control-sm" placeholder="Small input" name="email"> </div>
            <div class="form-group">
              <input type="email" class="form-control" name="email" placeholder="Default input"> </div>
            <div class="form-group">
              <input type="text" class="form-control form-control-lg" placeholder="Large input"> </div>
          </form>
          <form class="my-3" method="post" action="">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Disabled input" id="disabledTextInput" disabled=""> </div>
            <div class="form-group">
              <input type="text" class="form-control is-valid" placeholder="First name" id="validationServer01" required="" value="Valid"> </div>
            <div class="form-group">
              <input type="text" class="form-control is-invalid" placeholder="First name" id="validationServer01" required="" value="Invalid">
              <div class="invalid-feedback">Please provide a valid input.</div>
            </div>
          </form>
          <form>
            <div class="form-group">
              <div class="form-check">
                <input class="form-check-input" type="checkbox" id="exampleCheck1" value="on"><label class="form-check-label" for="exampleCheck1">Checkbox</label></div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  
  
  <div class="py-3">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <h2>LISTA:</h2>
          <hr class="mb-4"> </div>
      </div>
      <div class="row">
        
        <div class="col-md-12 p-3">
          <table class="table table-hover table-striped table-bordered">
            <thead class="thead-inverse">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Przykład</th>
                <th scope="col">bordered</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">1</th>
                <td>example</td>
                <td>one</td>
              </tr>
              <tr>
                <th scope="row">2</th>
                <td>example</td>
                <td>two</td>
              </tr>
              <tr class="bg-info">
                <th scope="row">3</th>
                <td>example</td>
                <td>three</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
  
  
    

 
    


</asp:Content>

