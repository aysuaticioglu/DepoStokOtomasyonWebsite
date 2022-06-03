<%@ Page Title="" Language="C#" MasterPageFile="~/DepoStok.Master" AutoEventWireup="true" CodeBehind="ProgramIndir.aspx.cs" Inherits="DepoStokWebSite.ProgramIndir" EnableViewState="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <section class="home-slider owl-carousel">
        <div class="slider-item bread-item" style="background-image: url(Assets/images/bg_1.jpg);" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container-fluid">
                <div class="row slider-text align-items-center justify-content-center" data-scrollax-parent="true">

                    <div class="col-md-8 mt-5 text-center col-sm-12 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
                      
                        <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Depo Stok Programı Deneme Sürümü</h1>
                           <p><asp:Button ID="Btnindir" runat="server" Text="İNDİR" class="btn btn-primary p-3 px-xl-5 py-xl-3" OnClick="Btnindir_Click" /></p>
                    </div>
                </div>
                
            </div>
        </div>
    </section>
</asp:Content>
