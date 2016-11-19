<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" 
    Inherits="_Default" MasterPageFile="~/Ass2/HomeMaster.master" StylesheetTheme="Blue"%>

<asp:Content ID="homePage" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="thePanel" runat="server" SkinID="homePanel">
        <asp:Label ID="homeTitle" runat="server" SkinID="pageTitle"/><br />
        <asp:Label ID="subTitle" runat="server" SkinID="subTitle"/><br /><br />
        <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Ass2/ad.xml" onadcreated="AdRotator1_AdCreated" SkinID="AdRotator1"/>
        <asp:Label ID="homeInfo" runat="server" SkinID="homeContent"/><br />
        <asp:HyperLink ID="link" runat="server" SkinID="link"/><br />
        <asp:Label ID="copyright" runat="server" SkinID="homeContent"/>
        <asp:HyperLink ID="linkSourceCode" runat="server" SkinID="link" Target="_blank" ImageUrl="~/Pix/codebuttonMasterPage.jpg"/>
        <asp:HyperLink ID="linkAd" runat="server" SkinID="link" Target="_blank" ImageUrl="~/Pix/codebuttonAddrotator.jpg"/><br />
    </asp:Panel>
</asp:Content>
