<%@ Page Title="" Language="C#" MasterPageFile="~/DepoStok.Master" AutoEventWireup="true" CodeBehind="UyeProfil.aspx.cs" Inherits="DepoStokWebSite.UyeProfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="home-slider owl-carousel">
        <div class="slider-item bread-item" style="background-image: url(Assets/images/bg_1.jpg);" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container-fluid">
                <div class="row slider-text align-items-center justify-content-center" data-scrollax-parent="true">

                    <div class="col-md-8 mt-5 text-center col-sm-12 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
                        <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Anasayfa</a></span> <span>Profıl</span></p>
                        <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Profil</h1>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section contact-section ftco-degree-bg">
        <div class="container">
            <div class="row d-flex mb-5 contact-info">
                <div class="col-md-12 mb-4">
                    <h2 class="h4">Üye Profili</h2>
                </div>

            </div>
            <div class="row block-9">
                <div class="col-md-6 pr-md-5">

                    <div class="form-group">
                        <asp:TextBox runat="server" type="text" ID="Name" class="form-control" placeholder="Adınız"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <asp:TextBox runat="server" type="text" ID="Surname" class="form-control" placeholder="Soyadınız"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <asp:TextBox runat="server" type="text" ID="Email" class="form-control" placeholder="E-Posta" TextMode="Email"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <asp:TextBox runat="server" ID="Password" class="form-control" placeholder="Şifre" TextMode="Password"></asp:TextBox>


                    </div>
                    <div class="form-group user-img mb-10">


                        <asp:FileUpload ID="UyeResimYukle" runat="server" class="form-control" />

                    </div>

                    <div class="form-group">
                        <div class="row">
                            <div class="center-block">
                                <asp:Button ID="BtnGuncelle" runat="server" Text="Kaydet" class="btn btn-primary py-3 px-5" OnClick="BtnGuncelle_Click" />
                            </div>
                            <div class="center-block" style="margin-top: 20px; margin-left: 10px; margin-right: 10px">
                                <asp:Label ID="Label3" runat="server" Text=""> ya da </asp:Label>
                            </div>
                            <div class="center-block">
                                <asp:Button ID="ButtonCikis" runat="server" Text="Çıkış Yap" class="btn btn-primary py-3 px-5"  OnClick="ButtonCikis_Click" />

                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="" ></asp:Label>


                    </div>

                </div>
                <div class="col-md-6 pr-md-5">

                    <div class="form-group user-img mb-10">


                        <asp:Image ID="UyeResim" runat="server" class="rounded-circle  shadow" Style="margin-left: 15px" Width="300" Height="300" alt="Alternate Text" />


                    </div>



                </div>

            </div>
        </div>
    </section>
</asp:Content>
