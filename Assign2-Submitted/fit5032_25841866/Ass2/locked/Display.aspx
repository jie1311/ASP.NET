<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Display.aspx.cs" Inherits="Ass1_Display" MasterPageFile="~/Ass2/HomeMaster.master" StylesheetTheme="Blue" %>

<asp:Content ID="homePage" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="thePanel" runat="server" SkinID="otherPanel">
        <asp:Label ID="fileName" runat="server" SkinID="pageTitle" /><br />
        <asp:Panel ID="Panel1" runat="server" SkinID="codePanel">
            <asp:Label ID="code" runat="server" SkinID="code" /><br />
        </asp:Panel>
    </asp:Panel>
</asp:Content>
