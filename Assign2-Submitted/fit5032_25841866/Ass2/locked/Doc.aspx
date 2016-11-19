<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Doc.aspx.cs" Inherits="Doc" MasterPageFile="~/Ass2/HomeMaster.master" StylesheetTheme="Blue" %>

<asp:Content ID="homePage" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="thePanel" runat="server" SkinID="otherPanel">
        <asp:Label ID="dTitle" runat="server" CssClass="homeTitle" /><br />
        <asp:Panel runat="server" SkinID="subPanel">
            <asp:Label ID="dContent" runat="server" CssClass="homeInfo"/><br />
            <asp:Hyperlink ID="emailLink" runat="server" SkinID="link"/><br />
            <asp:Hyperlink ID="spcLink" runat="server" SkinID="link"/>
        </asp:Panel>
        <asp:HyperLink ID="linkSourceCode1" runat="server" Target="_blank" NavigateUrl="Display.aspx?filename=~/Ass2/StyleSheet.css" ImageUrl="~/Pix/codebuttonCSS.jpg"/>
        <asp:HyperLink ID="linkSourceCode2" runat="server" Target="_blank" NavigateUrl="Display.aspx?filename=~/App_Themes/Blue/Blue.skin" ImageUrl="~/Pix/codebuttonSkin.jpg"/>
    </asp:Panel>
</asp:Content>
