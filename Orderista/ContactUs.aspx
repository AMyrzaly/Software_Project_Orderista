<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style type="text/css">
        .auto-style1 {
            width: 209px;
        }

        .auto-style2 {
            width: 419px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="padding: 50px 0 100px; position: relative;">
        <div class="contact_us" style="width: 700px; display: flex; flex-wrap: wrap; margin: auto; padding-left: 45px;">
            <asp:Label ID="Label" runat="server" Text="" ForeColor="green"></asp:Label>
            <div style="flex-basis: 30%; min-width: 300px; margin-right: 10px">
                <label style="font-weight: bold; color: #000" ID="Label1">First Name</label>
                <asp:TextBox ID="txtFirstName" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ReqFldValFName" runat="server"
                    ErrorMessage="Required Field"
                    ForeColor="red"
                    ControlToValidate="txtFirstName" />
                <asp:RegularExpressionValidator ID="RegExFName" runat="server"
                    ControlToValidate="txtFirstName"
                    ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                    Text=" Enter a valid First name"
                    ForeColor="red"
                    ErrorMessage="RegularExpressionValidator" />
            </div>

            <div style="flex-basis: 30%; min-width: 300px; margin-left: 10px;">
                <label style="font-weight: bold; color: #000" ID="Label2">Last Name</label>
                <asp:TextBox ID="txtLastName" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ReqFldValLName" runat="server"
                    ErrorMessage="Required Field"
                    ForeColor="red"
                    ControlToValidate="txtLastName" />
                <asp:RegularExpressionValidator ID="RegExLName" runat="server"
                    ControlToValidate="txtLastName"
                    ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                    Text=" Enter a valid Last name"
                    ForeColor="red"
                    ErrorMessage="RegularExpressionValidator" />
            </div>

            <div style="flex-basis: 30%; min-width: 300px; margin-right: 10px;">
                <label style="font-weight: bold; color: #000" ID="Label5">Phone Number</label>
                <asp:TextBox CssClass="form-control" ID="txtPhoneNumber" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ReqFldValPNumber" runat="server"
                    ErrorMessage="Required Field"
                    ForeColor="red"
                    ControlToValidate="txtPhoneNumber" />
                <asp:RegularExpressionValidator ID="RegExPNumber" runat="server"
                    ControlToValidate="txtPhoneNumber"
                    ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$"
                    Text=" Enter a valid Phone Number"
                    ForeColor="red"
                    ErrorMessage="RegularExpressionValidator" />

            </div>

            <div style="flex-basis: 30%; min-width: 300px; margin-left: 10px;">
                <label style="font-weight: bold; color: #000" ID="Label3">Email</label>
                <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ReqFldValEmail" runat="server"
                    ErrorMessage="Required Field"
                    ForeColor="red"
                    ControlToValidate="txtEmail" />
                <asp:RegularExpressionValidator ID="RegExEmail" runat="server"
                    ControlToValidate="txtEmail"
                    ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    Text=" Enter a valid email address"
                    ForeColor="red"
                    ErrorMessage="RegularExpressionValidator" />
            </div>

            <div style="flex-basis: 95%; min-width: 300px">
                <label style="font-weight: bold; color: #000" ID="Label4">Subject</label>
                <asp:TextBox ID="txtSubject" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtSubject" runat="server" ErrorMessage="Required Field" ForeColor="red" />
            </div>

            <div style="flex-basis: 95%; min-width: 300px">
                <label style="font-weight: bold; color: #000" ID="Label8">Comments</label>
                <asp:TextBox ID="txtComments" CssClass="form-control" runat="server" Rows="6" TextMode="MultiLine"
                    placeholder="Please feel free to let us know of any comments or concerns"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtComments" runat="server" ErrorMessage="Required Field" ForeColor="red" />
            </div>

            <div>
                <asp:Button ID="btnClear" CssClass="btn btn-outline-danger" runat="server" Text="Clear" OnClick="btnClear_Click" />
                <asp:Button ID="btnSubmit" CssClass="btn btn-outline-primary" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
            </div>
        </div>

        <div class="section" data-aos="fade">
          <div class="container">
            <div class="row justify-content-center mb-5">
              <div class="col-md-7 text-center"  data-aos="fade-up">
                <h2 class="mb-4">Customer's Reviews</h2>
              </div>
            </div>
            <div class="row justify-content-center text-center" data-aos="fade-up">
              <div class="col-md-8">
                <div class="owl-carousel home-slider-loop-false">
                  <div class="item">
                    <blockquote class="testimonial">
                      <p>&ldquo;Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita quaerat recusandae molestias incidunt sapiente sit numquam delectus mollitia! Non laudantium impedit voluptas consequatur corrupti. Cumque consequuntur nemo eos et error!&rdquo;</p>
                      <div class="author">
                        <img src="static/img/person_1.jpg" alt="Image placeholder" class="mb-3">
                        <h4>Maxim Smith</h4>
                        <p>CEO, Founder</p>
                      </div>
                    </blockquote>
                  </div>
                  <div class="item">
                    <blockquote class="testimonial">
                      <p>&ldquo;Sint adipisci laborum dolorum ipsa quidem alias ipsum aperiam aut! Quis rerum soluta dolorem iure nihil velit error sequi? Dignissimos accusantium adipisci unde officia? Dolores aut sequi dolorum repellendus quod.&rdquo;</p>
                      <div class="author">
                        <img src="static/img/person_2.jpg" alt="Image placeholder" class="mb-3">
                        <h4>Geert Green</h4>
                        <p>CEO, Founder</p>
                      </div>
                    </blockquote>
                  </div>
                  <div class="item">
                    <blockquote class="testimonial">
                      <p>&ldquo;Ratione alias iure ab facere quia aliquam dolor et voluptates esse nihil corporis distinctio hic ea quo ducimus autem cum amet. Quos accusamus iusto porro nulla temporibus numquam commodi soluta.&rdquo;</p>
                      <div class="author">
                        <img src="static/img/person_3.jpg" alt="Image placeholder" class="mb-3">
                        <h4>Dennis Roman</h4>
                        <p>CEO, Founder</p>
                      </div>
                    </blockquote>
                  </div>
                  <div class="item">
                    <blockquote class="testimonial">
                      <p>&ldquo;Ad quod aspernatur ipsa. Numquam expedita delectus qui ad explicabo voluptas eos vel reiciendis magnam rerum quaerat quisquam accusantium quae saepe ipsam ullam ut ea molestiae porro. Recusandae veniam maxime.&rdquo;</p>
                      <div class="author">
                        <img src="static/img/person_2.jpg" alt="Image placeholder" class="mb-3">
                        <h4>Geert Green</h4>
                        <p>CEO, Founder</p>
                      </div>
                    </blockquote>
                  </div>
                </div>
              </div>
            </div>
          </div>  
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
