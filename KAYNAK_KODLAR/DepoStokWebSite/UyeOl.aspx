<%@ Page Title="" Language="C#" MasterPageFile="~/DepoStok.Master" AutoEventWireup="true" CodeBehind="UyeOl.aspx.cs" Inherits="DepoStokWebSite.UyeOl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="home-slider owl-carousel">
        <div class="slider-item bread-item" style="background-image: url(Assets/images/bg_1.jpg);" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container-fluid">
                <div class="row slider-text align-items-center justify-content-center" data-scrollax-parent="true">

                    <div class="col-md-8 mt-5 text-center col-sm-12 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
                        <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Anasayfa</a></span> <span>Uye Ol</span></p>
                        <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Üye Ol</h1>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section contact-section ftco-degree-bg">
        <div class="container">
            <div class="row d-flex mb-5 contact-info">
                <div class="col-md-12 mb-4">
                    <h2 class="h4">Üye Ol</h2>
                </div>

            </div>
            <div class="row block-9">
                <div class="col-md-6 pr-md-5">
                    <div class="form-group">
                        <asp:TextBox runat="server" type="text" ID="Name" class="form-control" placeholder="Adınız"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="Name" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:TextBox runat="server" type="text" ID="Surname" class="form-control" placeholder="Soyadınız"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="Surname" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group" aria-busy="False">
                        <asp:TextBox runat="server" type="text" ID="Email" class="form-control" placeholder="E-Posta" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="Email" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email Formatında Değil" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="Email" ></asp:RegularExpressionValidator>

                    </div>
                    <div class="form-group">
                        <asp:TextBox runat="server" ID="Password" class="form-control" placeholder="Şifre" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="Password" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:TextBox runat="server" ID="Password2" class="form-control" placeholder="Şifre Tekrar" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="Password2" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>


                    </div>
                    <div class="form-group">

                        <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="FileUpload1" SetFocusOnError="False" ViewStateMode="Inherit" ForeColor="Red"></asp:RequiredFieldValidator>

                    </div>
                    <div class="form-group">
                        <asp:Button ID="BtnSignUp" runat="server" Text="Üye Ol" value="Send Message" class="btn btn-primary py-3 px-5" OnClick="BtnSignUp_Click" />

                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="* Alanlar Boş Geçilmez"></asp:Label>


                    </div>

                </div>


            </div>
        </div>
    </section>
</asp:Content>
