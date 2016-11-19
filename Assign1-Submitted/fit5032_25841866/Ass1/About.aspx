<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="about" MasterPageFile="~/Ass1//HomeMaster.master" StylesheetTheme="Blue"%>

<asp:Content ID="homePage" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="thePanel" runat="server" SkinID="otherPanel">
        <asp:Label ID="abtTitle" runat="server" SkinID="pageTitle"/><br />
        <asp:Panel runat="server" SkinID="subPanel">
            <table>
                <tr>
                    <td valign="top" align="center">
                       <asp:Image runat="server" skinid="aboutPic"/>
                        <asp:HyperLink ID="link1" runat="server" SkinID="boldLink" /><br />
                        <asp:HyperLink ID="link2" runat="server" SkinID="boldLink"/>
                    </td>
                    <td valign="top">
                        <asp:Label ID="abtInfo" runat="server" SkinID="pageContent"/>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
