<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Doc.aspx.cs" Inherits="Doc" MasterPageFile="~/Ass1/HomeMaster.master" StylesheetTheme="Blue" %>

<asp:Content ID="homePage" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="thePanel" runat="server" SkinID="otherPanel">
        <asp:Label ID="dTitle" runat="server" CssClass="homeTitle" /><br />
        <asp:Panel runat="server" SkinID="subPanel">
            <asp:Label ID="dContent" runat="server" CssClass="homeInfo"/><br />
            <asp:Hyperlink ID="emailLink" runat="server" SkinID="link"/><br />
            <asp:Hyperlink ID="spcLink" runat="server" SkinID="link"/>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
