<%@ Page Title="" Language="C#" MasterPageFile="~/DepoStok.Master" AutoEventWireup="true" CodeBehind="Default2.aspx.cs" Inherits="DepoStokWebSite.Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="home-slider owl-carousel">
        <div class="slider-item" style="background-image: url('../Assets/images/bg_1.jpg');">
            <div class="overlay"></div>
            <div class="container-fluid">
                <div class="row slider-text align-items-center" data-scrollax-parent="true">

                    <div class="col-md-5 wrap col-sm-12 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
                        <h1 class="mb-4 mt-5" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Depo ve Stok İşlemleri Yapmak İçin İhtiyacınız Olan Herşey</h1>
                        <p class="mb-4 mb-md-5 sub-p" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Şimdi Ücretsiz Deneyin</p>
                         <p><a href="UyeGiris.aspx?Deneme=20" class="btn btn-primary p-3 px-xl-5 py-xl-3" runat="server" id="BtnDeneme" >Şimdi Dene</a> </p>
          
                    </div>
                    <div class="col-md-7 ftco-animate">
                        <img src="../Assets/images/dash4.png" class="img-fluid" alt="">
                    </div>

                </div>
            </div>
        </div>
     
        
        <div class="slider-item" style="background-image: url('../Assets/images/bg_2.jpg');">
            <div class="overlay"></div>
            <div class="container-fluid">
                <div class="row slider-text align-items-center" data-scrollax-parent="true">

                    <div class="col-md-5 wrap col-sm-12 ftco-animate" data-scrollax=" properties: { translateY: '70%' }" >
                        <h1 class="mb-4 mt-5" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }" style="padding-top:10px">Sizin İçin Geliştirilen<br /> Depo Stok <br /> Programı</h1>
                        <p class="mb-4 mb-md-5 ">Tahsilat ve Raporlama Operasyonunuz <br /> Çok Daha Zahmetsiz ve Hızlı</p>

                    </div>
                    <div class="col-md-7 ftco-animate">
                        <img src="../Assets/images/dash5.png" class="img-fluid" alt="">
                    </div>

                </div>
            </div>
        </div>
    </section>



    <section class="ftco-section services-section bg-light">
        <div class="container">
            <div class="row justify-content-center mb-5 pb-3">
                <div class="col-md-7 text-center heading-section ftco-animate">
                    <h2 class="mb-4">Depo Stok Programı</h2>
                  
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 d-flex align-self-stretch ftco-animate">
                    <div class="media block-6 services d-block text-center">
                        <div class="d-flex justify-content-center">
                            <div class="icon d-flex align-items-center justify-content-center">
                                <span class="flaticon-warehouse"></span>
                            </div>
                        </div>
                        <div class="media-body p-2 mt-3">
                            <h3 class="heading">Stok Girişleri</h3>
                            <p>Stok girişlerini hızlı ve sistematik bir şekilde yapabilirsiniz.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 d-flex align-self-stretch ftco-animate">
                    <div class="media block-6 services d-block text-center">
                        <div class="d-flex justify-content-center">
                            <div class="icon d-flex align-items-center justify-content-center">
                                <span class="flaticon-income"></span>
                            </div>
                        </div>
                        <div class="media-body p-2 mt-3">
                            <h3 class="heading">Hesap İşlemleri</h3>
                            <p>Hesaplarınızdan giriş,çıkış,transfer ve firmaya ödeme ve firmadan tahsilat işlemleri  gerçekleştirebilirsiniz.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 d-flex align-self-stretch ftco-animate">
                    <div class="media block-6 services d-block text-center">
                        <div class="d-flex justify-content-center">
                            <div class="icon d-flex align-items-center justify-content-center">
                                <span class="flaticon-packages"></span>
                            </div>
                        </div>
                        <div class="media-body p-2 mt-3">
                            <h3 class="heading">Stok Tanımlama</h3>
                            <p>Stoklarınız için yeni  kartlar oluşturabilirsiniz.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 d-flex align-self-stretch ftco-animate">
                    <div class="media block-6 services d-block text-center">
                        <div class="d-flex justify-content-center">
                            <div class="icon d-flex align-items-center justify-content-center">
                                <span class="flaticon-warehouse-1"></span>
                            </div>
                        </div>
                        <div class="media-body p-2 mt-3">
                            <h3 class="heading">Stok Çıkışları</h3>
                            <p>Depolarınıza göre stok çıkış işlemlerini gerçekleştirebilirsiniz.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 d-flex align-self-stretch ftco-animate">
                    <div class="media block-6 services d-block text-center">
                        <div class="d-flex justify-content-center">
                            <div class="icon d-flex align-items-center justify-content-center">
                                <span class="flaticon-analysis"></span>
                            </div>
                        </div>
                        <div class="media-body p-2 mt-3">
                            <h3 class="heading">Analizler</h3>
                            <p>Program içindeki gerçekleşen birçok işlemi listelenmiş şekilde analiz edebilirsiniz.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 d-flex align-self-stretch ftco-animate">
                    <div class="media block-6 services d-block text-center">
                        <div class="d-flex justify-content-center">
                            <div class="icon d-flex align-items-center justify-content-center">
                                <span class="flaticon-factory"></span>
                            </div>
                        </div>
                        <div class="media-body p-2 mt-3">
                            <h3 class="heading">Firma Tanımlama</h3>
                            <p>Firma bilgilerini kolayca ekleyebilirsiniz.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>





    <section class="ftco-services">
        <div class="container-wrap">
            <div class="row no-gutters">
                <div class="col-lg-5 img services-img" style="background-image: url('../Assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
                   <%-- <a href="https://vimeo.com/45830194" class="icon popup-vimeo d-flex justify-content-center align-items-center"></a>--%>

                </div>
                <div class="col-lg-7">
                    <div class="services-wrap p-4 p-md-5">
                        <div class="heading-section mb-5 ftco-animate">
                            <h2 class="mb-2">Neden Bizi Tercih Edin ?</h2>
                         
                        </div>
                        <div class="d-md-flex">
                            <div class="one-half mr-4">
                                <div class="list-services d-flex ftco-animate">
                                    <div class="icon d-flex order-md-last justify-content-center align-items-center">
                                        <span class="flaticon-analysis"></span>
                                    </div>
                                    <div class="text pl-4 pl-sm-0 pr-md-4 text-md-right">
                                        <h3>Raporlama</h3>
                                        <p>İhtiyacınız olan tüm raporlar elinizin altında.</p>
                                    </div>
                                </div>
                                <div class="list-services d-flex ftco-animate">
                                    <div class="icon d-flex order-md-last justify-content-center align-items-center">
                                        <span class="flaticon-income" ></span>
                                    </div>
                                    <div class="text pl-4 pl-sm-0 pr-md-4 text-md-right">
                                        <h3>Hesap Takibi</h3>
                                        <p>Müşteri ve harcamalarınızın bakiyesini takip edin.</p>
                                    </div>
                                </div>
                                <div class="list-services d-flex ftco-animate">
                                    <div class="icon d-flex order-md-last justify-content-center align-items-center">
                                        <span class="flaticon-warehouse-1"></span>
                                    </div>
                                    <div class="text pl-4 pl-sm-0 pr-md-4 text-md-right">
                                        <h3>Depo Transfer</h3>
                                        <p>Depolar arası kolayca transfer yapın.</p>
                                    </div>
                                </div>
                            </div>

                            <div class="one-half">
                                <div class="list-services d-flex ftco-animate">
                                    <div class="icon d-flex justify-content-center align-items-center">
                                        <span class="flaticon-filter"></span>
                                    </div>
                                    <div class="text pl-4 pl-sm-0 pl-md-4">
                                        <h3>Filtreleme Özelliği</h3>
                                        <p>Stok Adı,Koduna ve Barkoduna göre kolayca arama yapın.</p>
                                    </div>
                                </div>
                                <div class="list-services d-flex ftco-animate">
                                    <div class="icon d-flex justify-content-center align-items-center">
                                        <span class="flaticon-time-management"></span>
                                    </div>
                                    <div class="text pl-4 pl-sm-0 pl-md-4">
                                        <h3>Gün İçi İşlemler</h3>
                                        <p>Günlük yapılan işlemlerden haberdar olun.</p>
                                    </div>
                                </div>
                                <div class="list-services d-flex ftco-animate">
                                    <div class="icon d-flex justify-content-center align-items-center">
                                        <span class="flaticon-warehouse"></span>
                                    </div>
                                    <div class="text pl-4 pl-sm-0 pl-md-4">
                                        <h3>Stok Takibi</h3>
                                        <p>Stoklar ile bilgileri analiz edin.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

 

   
</asp:Content>
