<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MasterPageFile="~/Ass1/HomeMaster.master" StylesheetTheme="Blue"%>

<asp:Content ID="homePage" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="thePanel" runat="server" SkinID="homePanel">
        <asp:Label ID="homeTitle" runat="server" SkinID="pageTitle"/><br />
        <asp:Label ID="subTitle" runat="server" SkinID="subTitle"/><br /><br />
        <asp:Image runat="server" skinid="homePic"/><br /><br />
        <asp:Label ID="homeInfo" runat="server" SkinID="homeContent"/><br />
        <asp:HyperLink ID="link" runat="server" SkinID="link"/><br />
        <asp:Label ID="copyright" runat="server" SkinID="homeContent"/>
    </asp:Panel>
</asp:Content>
