<%@ Page Title="" Language="C#" MasterPageFile="~/DepoStok.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="DepoStokWebSite.Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="home-slider owl-carousel">
        <div class="slider-item bread-item" style="background-image: url(Assets/images/bg_1.jpg);" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container-fluid">
                <div class="row slider-text align-items-center justify-content-center" data-scrollax-parent="true">

                    <div class="col-md-8 mt-5 text-center col-sm-12 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
                        <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Home</a></span> <span>Contact</span></p>
                        <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">İletişim</h1>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section contact-section ftco-degree-bg">
        <div class="container">
            <div class="row d-flex mb-5 contact-info">
                <div class="col-md-12 mb-4">
                    <h2 class="h4">İletişim Bilgileri</h2>
                </div>
                <div class="w-100"></div>
                <div class="col-md-3">
                    <p><span>Adres:</span>42. Cad. No:20, Başkent OSB, 06909 Sincan/Ankara</p>
                </div>
                <div class="col-md-3">
                    <p><span>Telefon:</span> <a href="tel://1234567920">(0312) 123 45 67</a></p>
                </div>
                <div class="col-md-3">
                    <p><span>Email:</span> <a href="mailto:komunikasyonlar@gmail.com">komunikasyonlar@gmail.com</a></p>
                </div>
              
            </div>
            <div class="row block-9">
                <div class="col-md-6 pr-md-5">

                    <div class="form-group">
                        <asp:TextBox runat="server" type="text" ID="Name2" class="form-control" placeholder="Adınız"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <asp:TextBox runat="server" type="text" ID="Email2" class="form-control" placeholder="E-Posta"></asp:TextBox>

                    </div>
                    <div class="form-group">
                          <asp:TextBox runat="server" type="text" ID="Subject2" class="form-control" placeholder="Konu"></asp:TextBox>

       
                    </div>
                    <div class="form-group">
                   <asp:TextBox runat="server"  ID="Message2" class="form-control" placeholder="Mesaj" TextMode="MultiLine"></asp:TextBox>

       
 
                    </div>
                    <div class="form-group">
                        <asp:Button ID="BtnSend" runat="server" Text="Gönder" value="Send Message" class="btn btn-primary py-3 px-5" OnClick="BtnSend_Click" />
     
                    </div>
                            <div class="form-group">
                      <asp:Label ID="Label2" runat="server" Text="" ></asp:Label>
                                
 
                    </div>

                </div>

                <div class="col-md-6" id="map"></div>
            </div>
        </div>
    </section>
</asp:Content>
