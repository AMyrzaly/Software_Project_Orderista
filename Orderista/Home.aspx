<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="cover_1">
        <div class="img_bg" style="background-image: url(static/img/slider-1.jpg);" data-stellar-background-ratio="0.5">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-12" data-aos="fade-up">
                        <h2 class="heading">Orderista - best option to skip the long lines for food on campus and don’t want to drive far for the food.</h2>
                        <div>
                            <div style="display: flex; justify-content: space-around; margin-top: 30px;">
                                <a class="btn btn-sm btn-primary btn-lg" href="./customerLogin.aspx">Login as a Customer</a>
                                <a class="btn btn-sm btn-primary btn-lg" href="./AdminLogin.aspx">Login as Admin</a>
                                <a class="btn btn-sm btn-primary btn-lg" href="./Restaurant/RestaurantLogin.aspx">Login as Restaurant</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="section services-section">
        <div class="container">

            <div class="row">
                <div class="col-md-6 col-lg-3" data-aos="fade-up">
                    <div class="media feature-icon d-block text-center">
                        <div class="icon">
                            <span class="flaticon-soup"></span>
                        </div>
                        <div class="media-body">
                            <h3>Quality Cuisine</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Non pariatur suscipit repudiandae facilis incidunt unde saepe</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="100">
                    <div class="media feature-icon d-block text-center">
                        <div class="icon">
                            <span class="flaticon-vegetables"></span>
                        </div>
                        <div class="media-body">
                            <h3>Fresh Food</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Non pariatur suscipit repudiandae facilis incidunt unde saepe</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="300">
                    <div class="media feature-icon d-block text-center">
                        <div class="icon">
                            <span class="flaticon-pancake"></span>
                        </div>
                        <div class="media-body">
                            <h3>Friendly Staff</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Non pariatur suscipit repudiandae facilis incidunt unde saepe</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="500">
                    <div class="media feature-icon d-block text-center">
                        <div class="icon">
                            <span class="flaticon-tray"></span>
                        </div>
                        <div class="media-body">
                            <h3>Easy Reservation</h3>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Non pariatur suscipit repudiandae facilis incidunt unde saepe</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="section" data-aos="fade">
        <div class="container">
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

    <div class="site-half-wrap d-block d-lg-flex">
        <div class="block-half" data-aos="fade">
            <div class="image-bg-fullwidth" style="background-image: url(static/img/img_1.jpg);"></div>
            <div class="half d-block d-lg-flex">
                <div class="text">
                    <h2 class="mb-4">Feature Menu</h2>
                    <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet eos quasi, necessitatibus dicta. Temporibus odit sed quisquam commodi, in aut, repellendus porro saepe minus, enim obcaecati fugiat optio eaque odio?</p>
                    <p><a href="#" class="btn btn-primary btn-outline-primary">View All Menu</a></p>
                </div>
                <div class="image" style="background-image: url(static/img/img_2.jpg);"></div>
            </div>
        </div>
        <div class="block-half" data-aos="fade">
            <div class="half d-block d-lg-flex">
                <div class="text">
                    <h2 class="mb-4">Master Chef</h2>
                    <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet eos quasi, necessitatibus dicta. Temporibus odit sed quisquam commodi, in aut, repellendus porro saepe minus, enim obcaecati fugiat optio eaque odio?</p>
                    <p><a href="#" class="btn btn-primary btn-outline-primary">Meet Our chef</a></p>
                </div>
                <div class="image" style="background-image: url(static/img/chef_1.jpg);"></div>
            </div>
            <div class="image-bg-fullwidth" style="background-image: url(static/img/chef_2.jpg);"></div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>

