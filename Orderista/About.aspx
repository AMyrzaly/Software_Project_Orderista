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
                            <h2 class="heading">About Orderista</h2>
                            <p class="lead">If you want to skip the long lines for food on campus and don’t want to drive far for the food, use Orderista. We’ll have the food that you want ready for pickup in under 45 minutes.</p>
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
                <p class="lead">We provide amazing service, which you will enjoy during your studies at Centennial College!</p>
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
                          <p>
                              Restaurants which work with us have the professient chefs.
                              All dishes are professionally made, and will engage you to 
                              order and order again, because they made with a love. You can choose
                              any kind of the dishes from the different cuisines.
                          </p>
                      </div>
                    </div>
                  </div> 
                  
                  <div class="accordion-item">
                    <h3 class="mb-0">
                      <a class="btn-block p-3" data-toggle="collapse" href="#collapseTwo" role="button" aria-expanded="false" aria-controls="collapseTwo">Fresh Food <span class="icon"></span></a>
                    </h3>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                      <div class="p-3">
                          <p>
                              Food has a high quality, always fresh, and prepared upon your request,
                              All products have the great conditions, and bought in the grocery stores, and
                              immediately delivered to us the food. We do not use the products from the
                              unknown places, only from the known stores.
                          </p>
                      </div>
                    </div>
                  </div> 

                  <div class="accordion-item">
                    <h3 class="mb-0">
                      <a class="btn-block p-3" data-toggle="collapse" href="#collapseThree" role="button" aria-expanded="false" aria-controls="collapseThree">Friendly Staff  <span class="icon"></span></a>
                    </h3>
                    <div id="collapseThree" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
                      <div class="p-3">
                        <p>
                            We have a highly professional customer service, who will help you with your issues,
                            and also will answer your any inquires. Please, use our 'Contact Form' or mobile phone,
                            if something happened, and you want claim the issue.
                        </p>
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
                <h2 class="mb-3">Ches in our Partners' Restaurant</h2>
                <p class="lead">Top 4 chefs from the restaurants, which currently are working with us.</p>
              </div>
            </div>
            <div class="row">
              <div class="col-md-3" data-aos="fade-up" data-aos-delay="100">
                <img src="static/img/person_1.jpg" alt="Image placeholder" class="img-fluid mb-4 rounded">
                <h3 class="mb-3">James Smith</h3>
                <p class="post-meta text-muted">Chef Cook</p>
                <p class="mb-5">
                    This Chef is working at Epic Burger. He have more than 10 years of experience, and he knows how to make
                    a great burger. So, if you want to try some, you have to definitely order a burger from Epic Burger restaurant
                </p>
              </div>
              <div class="col-md-3" data-aos="fade-up" data-aos-delay="200">
                <img src="static/img/person_2.jpg" alt="Image placeholder" class="img-fluid mb-4 rounded">
                <h3 class="mb-3">Rob Woodstone</h3>
                <p class="post-meta text-muted">Chef Cook</p>
                <p class="mb-5">
                    This is a Lead Chef of Tim Hortons. This person is amazing, he always take care of the clients and tries
                    to do the most tasties dishes for every order. Try Tim Hortons dishes to taste it.
                </p>
              </div>
              <div class="col-md-3" data-aos="fade-up" data-aos-delay="300">
                <img src="static/img/person_3.jpg" alt="Image placeholder" class="img-fluid mb-4 rounded">
                <h3 class="mb-3">Steph Gold</h3>
                <p class="post-meta text-muted">Chef Cook</p>
                <p class="mb-5">
                    Steph is a chef with 8 years expereince, who prepares the amazing pizza. You will enjoy by every slice, and definitely
                    would like to order more pizza again. Visit Pizza Pizza to order any kind of Pizza!
                </p>
              </div>
              <div class="col-md-3" data-aos="fade-up" data-aos-delay="400">
                <img src="static/img/person_4.jpg" alt="Image placeholder" class="img-fluid mb-4 rounded">
                <h3 class="mb-3">Jon White</h3>
                <p class="post-meta text-muted">Chef Cook</p>
                <p class="mb-5">
                    Smokes Poutinerie is a place, where you can order and anjoy the great Poutine, and Jon will
                    make the order the most tastiest. If you want try it right now, please, login and make an order!
                </p>
              </div>
            </div>
          </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
