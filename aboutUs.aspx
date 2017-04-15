<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="aboutUs.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Content/generalStyle.css" rel="stylesheet" />
     <style>
       #map {
        height: 8em;
        width: 100%;
       }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span class="spanSpace">  </span>
    <div class="address">
        <p>نشانی: تهران- خیابان شریعتی- بالاتر از پل رومی-بلوار صبا-کوچه خلیلی-پلاک 3</p>
        <div id="map"></div>
        <p>شماره تماس:  <a href="tel:989358669769">09358669769</a></p>
        <p>کانال تلگرام:</p>
    </div>
</asp:Content>

