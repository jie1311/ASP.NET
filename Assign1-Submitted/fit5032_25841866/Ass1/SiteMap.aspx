<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SiteMap.aspx.cs" Inherits="SiteMap" MasterPageFile="~/Ass1/HomeMaster.master" StylesheetTheme="Blue"%>

<asp:Content ID="homePage" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="thePanel" runat="server" SkinID="otherPanel">
        <asp:Label ID="sTitle" runat="server" SkinID="pageTitle"/><br />
        <asp:SiteMapDataSource ID="SiteMapDataSource" runat="server"/>
        <asp:TreeView runat="server" DataSourceID="SiteMapDataSource" SkinID="treeView"/>
    </asp:Panel>
</asp:Content>
