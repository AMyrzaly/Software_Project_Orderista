<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        p {
            font-size: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div class="cover_1 cover_sm">
            <div class="img_bg" style="background-image: url(static/img/slider-1.jpg);" data-stellar-background-ratio="0.5">
                <div class="container">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-md-7" data-aos="fade-up">
                            <h2 class="heading">About The Restaurant</h2>
                            <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo saepe dolorum dolorem, iste officia voluptates! Sint repudiandae, soluta voluptatem delectus iure, eaque, harum expedita, nisi aliquam magni odio perferendis ipsum!</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="section">
          <div class="container">
            <div class="row">
              <div class="col-md-7" data-aos="fade-up">
                <img src="static/img/about_1.png" alt="Image placeholder" class="img-fluid">
              </div>
              <div class="col-md-5 pl-md-5" data-aos="fade-up" data-aos-delay="200">
                <h2 class="mb-4">Restaurnts History</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis illo eos cum est adipisci saepe, soluta at. Sint odio unde omnis, laborum architecto eveniet ea tenetur consequuntur. Nihil doloremque perspiciatis, nesciunt voluptatibus harum ipsam aut sit officia recusandae, voluptatem dolor. Recusandae labore ea perspiciatis voluptas, quibusdam voluptates impedit deserunt eligendi.</p>
                <p>Quos illum eum, provident ratione omnis repellendus modi iure unde ipsum fuga! Autem quos possimus saepe veniam, sed debitis ex eveniet totam, rerum iste animi quod voluptate magnam doloribus recusandae similique officiis facilis. Recusandae quo excepturi qui est rem sunt voluptas, saepe, voluptates asperiores quidem ducimus libero magnam eius ratione.</p>
               
              </div>
            </div>
          </div>
        </div>

        <div class="section">
          <div class="container">
            <div class="row justify-content-center mb-5" data-aos="fade-up">
              <div class="col-md-8  text-center">
                <h2 class="mb-3">Why Choose Us</h2>
                <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum fuga, alias distinctio voluptatum magni voluptatibus.</p>
              </div>
            </div>
            <div class="row large-gutters">
              <div class="col-md-6"  data-aos="fade-up" data-aos-delay="200">
                <img src="static/img/img_2.jpg" alt="Image placeholder" class="img-fluid rounded">
              </div>
              <div class="col-md-6" data-aos="fade-up" data-aos-delay="300">
                <div class="accordion" id="accordion">
                  <div class="accordion-item">
                    <h3 class="mb-0">
                      <a class="btn-block p-3" data-toggle="collapse" href="#collapseOne" role="button" aria-expanded="true" aria-controls="collapseOne">Quality Cuisine <span class="icon"></span></a>
                    </h3>
                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                      <div class="p-3">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur quae cumque perspiciatis aperiam accusantium facilis provident aspernatur nisi optio debitis dolorum, est eum eligendi vero aut ad necessitatibus nulla sit labore doloremque magnam! Ex molestiae, dolor tempora, ad fuga minima enim mollitia consequuntur, necessitatibus praesentium eligendi officia recusandae culpa tempore eaque quasi ullam magnam modi quidem in amet. Quod debitis error placeat, tempore quasi aliquid eaque vel facilis culpa voluptate.</p>
                      </div>
                    </div>
                  </div> 
                  
                  <div class="accordion-item">
                    <h3 class="mb-0">
                      <a class="btn-block p-3" data-toggle="collapse" href="#collapseTwo" role="button" aria-expanded="false" aria-controls="collapseTwo">Fresh Food <span class="icon"></span></a>
                    </h3>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                      <div class="p-3">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel ad laborum expedita. Nostrum iure atque enim quisquam minima distinctio omnis, consequatur aliquam suscipit, quidem, esse aspernatur! Libero, excepturi animi repellendus porro impedit nihil in doloremque a quaerat enim voluptatum, perspiciatis, quas dignissimos maxime ut cum reiciendis eius dolorum voluptatem aliquam!</p>
                      </div>
                    </div>
                  </div> 

                  <div class="accordion-item">
                    <h3 class="mb-0">
                      <a class="btn-block p-3" data-toggle="collapse" href="#collapseThree" role="button" aria-expanded="false" aria-controls="collapseThree">Friendly Staff  <span class="icon"></span></a>
                    </h3>
                    <div id="collapseThree" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                      <div class="p-3">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel ad laborum expedita. Nostrum iure atque enim quisquam minima distinctio omnis, consequatur aliquam suscipit, quidem, esse aspernatur! Libero, excepturi animi repellendus porro impedit nihil in doloremque a quaerat enim voluptatum, perspiciatis, quas dignissimos maxime ut cum reiciendis eius dolorum voluptatem aliquam!</p>
                      </div>
                    </div>
                  </div> 

                </div>
              </div>
            </div>
          </div>
        </div>

                <div class="section">
          <div class="container">
            <div class="row justify-content-center mb-5" data-aos="fade-up">
              <div class="col-md-8  text-center">
                <h2 class="mb-3">Restaurants Chef</h2>
                <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum fuga, alias distinctio voluptatum magni voluptatibus.</p>
              </div>
            </div>
            <div class="row">
              <div class="col-md-3" data-aos="fade-up" data-aos-delay="100">
                <img src="static/img/person_1.jpg" alt="Image placeholder" class="img-fluid mb-4 rounded">
                <h3 class="mb-3">James Smith</h3>
                <p class="post-meta text-muted">Chef Cook</p>
                <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum cumque velit labore placeat corporis ad quisquam odio inventore beatae repudiandae ea quidem saepe doloribus libero, alias, eveniet quam at aperiam.</p>
              </div>
              <div class="col-md-3" data-aos="fade-up" data-aos-delay="200">
                <img src="static/img/person_2.jpg" alt="Image placeholder" class="img-fluid mb-4 rounded">
                <h3 class="mb-3">Rob Woodstone</h3>
                <p class="post-meta text-muted">Chef Cook</p>
                <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum cumque velit labore placeat corporis ad quisquam odio inventore beatae repudiandae ea quidem saepe doloribus libero, alias, eveniet quam at aperiam.</p>
              </div>
              <div class="col-md-3" data-aos="fade-up" data-aos-delay="300">
                <img src="static/img/person_3.jpg" alt="Image placeholder" class="img-fluid mb-4 rounded">
                <h3 class="mb-3">Steph Gold</h3>
                <p class="post-meta text-muted">Chef Cook</p>
                <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum cumque velit labore placeat corporis ad quisquam odio inventore beatae repudiandae ea quidem saepe doloribus libero, alias, eveniet quam at aperiam.</p>
              </div>
              <div class="col-md-3" data-aos="fade-up" data-aos-delay="400">
                <img src="static/img/person_4.jpg" alt="Image placeholder" class="img-fluid mb-4 rounded">
                <h3 class="mb-3">Jon White</h3>
                <p class="post-meta text-muted">Chef Cook</p>
                <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum cumque velit labore placeat corporis ad quisquam odio inventore beatae repudiandae ea quidem saepe doloribus libero, alias, eveniet quam at aperiam.</p>
              </div>
            </div>
          </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
