<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login"
    MasterPageFile="~/Ass2/HomeMaster.master" StylesheetTheme="Blue" %>

<asp:Content ID="homePage" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:AccessDataSource ID="DS1" runat="server"
        DataFile="~/App_Data/userdb.accdb" OnSelected="DS1_Selected" SelectCommand="SELECT [user_name], [password] FROM [user]" />
    <asp:Panel ID="thePanel" runat="server" SkinID="otherPanel" HorizontalAlign="Center">
        <asp:Label ID="logTitle" runat="server" SkinID="pageTitle" /><br />

        <asp:Login ID="LoginX" runat="server"
            OnAuthenticate="LoginX_Authenticate"
            UserNameLabelText="Username:"
            UserNameRequiredErrorMessage="Username required."
            PasswordLabelText="Password:"
            PasswordRequiredErrorMessage="Password required."
            LoginButtonText="Login" DisplayRememberMe="false">
            <LabelStyle CssClass="homeInfo" />
            <ValidatorTextStyle CssClass="error" />
        </asp:Login>
        <asp:HyperLink ID="linkSourceCode" runat="server" Target="_blank" NavigateUrl="~/Ass2/locked/Display.aspx?filename=~/login.aspx&filename2=~/Web.config&filename3=~/Ass2/locked/Web.config" ImageUrl="~/Pix/codebuttonlogin.jpg"/>
    </asp:Panel>
</asp:Content>
