<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Email.aspx.cs" Inherits="Ass2_locked_Email" MasterPageFile="~/Ass2/HomeMaster.master" StylesheetTheme="Blue" %>

<asp:Content ID="homePage" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="thePanel" runat="server" SkinID="otherPanel">
        <asp:Label ID="allTitle" runat="server" SkinID="pageTitle" Text="Email" /><br />
        <asp:AccessDataSource ID="DS6" runat="server" DataFile="~/App_Data/userdb.accdb" SelectCommand="SELECT [gname], [fname], [emai] FROM [userinfo]" />
        <asp:Panel runat="server" SkinID="subPanel">
            <asp:GridView ID="gvProducts" runat="server"
                DataSourceID="DS6" AutoGenerateColumns="False" CssClass="homeInfo" AllowSorting="true">
                <Columns>
                    <asp:BoundField DataField="gName" HeaderText="ginvin name" SortExpression="gName" />
                    <asp:BoundField DataField="fName" HeaderText="family name" SortExpression="fName" />
                    <asp:BoundField DataField="emai" HeaderText="email"  />
                    <asp:TemplateField HeaderText="Select">
                        <ItemTemplate>
                            <asp:CheckBox runat="server" ID="chkEmail" />
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
            </asp:GridView>
        </asp:Panel>
        <table>
            <tr>
                <td>From</td>
                <td>Hello World Programmer</td>
            </tr>
            <tr>
                <td>Subject</td>
                <td>
                    <asp:TextBox ID="txtSubject" Width="350" runat="server" />
                </td>
            </tr>
            <tr>
                <td>Message</td>
                <td>
                    <asp:TextBox runat="server" ID="txtMsg"
                        TextMode="MultiLine" Columns="55" Rows="15"/>
                </td>
            </tr>
        </table>
        <asp:Button id="SendMail" runat="server" OnClick="SendMail_Click" Text="Send Email"/><br />
        <asp:label id="lblMail" runat="server" CssClass="error" /><br />
        <asp:HyperLink ID="linkSourceCode" runat="server" Target="_blank" NavigateUrl="Display.aspx?filename=Email.aspx" ImageUrl="~/Pix/codebuttonEmail.jpg"/>
    </asp:Panel>
</asp:Content>
