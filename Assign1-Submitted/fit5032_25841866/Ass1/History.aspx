<%@ Page Language="C#" AutoEventWireup="true" CodeFile="History.aspx.cs" Inherits="History" MasterPageFile="~/Ass1/HomeMaster.master" StylesheetTheme="Blue"%>

<asp:Content ID="homePage" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="thePanel" runat="server" SkinID="otherPanel">
        <asp:Label ID="abtTitle" runat="server" SkinID="pageTitle"/><br />
        <asp:Panel runat="server" SkinID="subPanel">
            <table>
                <tr>
                    <td valign="top">
                        <asp:Image runat="server" SkinID="aboutPic"/>
                    </td>
                    <td valign="top">
                        <asp:Label ID="abtInfo" runat="server" SkinID="pageContent"/><br />
                        <asp:HyperLink ID="back" runat="server" SkinID="link"/>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>
</asp:Content>