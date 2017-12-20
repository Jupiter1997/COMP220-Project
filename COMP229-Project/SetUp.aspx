<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SetUp.aspx.cs" Inherits="_Default"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Pick A Theme:</h1>
    <asp:Button ID="btnDark" runat="server" Text="Dark" OnClick="btnDark_Click" />
    <asp:Button ID="btnLight" runat="server" Text="Light" OnClick="btnLight_Click" />

</asp:Content>

