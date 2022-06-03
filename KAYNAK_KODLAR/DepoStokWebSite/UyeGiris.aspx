<%@ Page Title="" Language="C#" MasterPageFile="~/DepoStok.Master" AutoEventWireup="true" CodeBehind="UyeGiris.aspx.cs" Inherits="DepoStokWebSite.UyeGiris" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="home-slider owl-carousel">
        <div class="slider-item bread-item" style="background-image: url(Assets/images/bg_1.jpg);" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container-fluid">
                <div class="row slider-text align-items-center justify-content-center" data-scrollax-parent="true">

                    <div class="col-md-8 mt-5 text-center col-sm-12 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
                        <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Anasayfa</a></span> <span>Uye Gırısı</span></p>
                        <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Üye Girişi</h1>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section contact-section ftco-degree-bg">
        <div class="container">
            <div class="row d-flex mb-5 contact-info">
                <div class="col-md-12 mb-4">
                    <h2 class="h4">Giriş Yap</h2>
                </div>

            </div>
            <div class="row block-9">
                <div class="col-md-6 pr-md-5">


                    <div class="form-group">
                        <asp:TextBox runat="server" type="text" ID="Email" class="form-control" placeholder="E-Posta" TextMode="Email"></asp:TextBox>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email Formatında Değil" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="Email" ></asp:RegularExpressionValidator>


                    </div>
                    <div class="form-group">
                        <asp:TextBox runat="server" ID="Password" class="form-control" placeholder="Şifre" TextMode="Password"></asp:TextBox>


                    </div>
                     
                    <div class="form-group">
                        <div class="row">
                            <div class="center-block">
                                <asp:Button ID="BtnSign" runat="server" Text="Giriş Yap" class="btn btn-primary py-3 px-5" OnClick="BtnSign_Click" />
                            </div>
                            <div class="center-block" style="margin-top:20px;margin-left:10px;margin-right:10px">
                                <asp:Label ID="Label3" runat="server" Text="" > ya da </asp:Label>
                            </div>
                            <div class="center-block">
                                 <asp:Button ID="Button1" runat="server" Text="Üye Ol" class="btn btn-primary py-3 px-5" PostBackUrl="~/View/UyeOl.aspx" />
                        
                            </div>
                        </div>
                                    
                        <asp:Label ID="Label1" runat="server" Text="  " ></asp:Label>

                   
                    </div>
       


                </div>


            </div>
        </div>
    </section>
</asp:Content>
