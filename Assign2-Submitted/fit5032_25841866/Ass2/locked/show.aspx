<%@ Page Language="C#" AutoEventWireup="true" CodeFile="show.aspx.cs" Inherits="Ass2_locked_show" MasterPageFile="~/Ass2/HomeMaster.master" StylesheetTheme="Blue" %>

<asp:Content ID="homePage" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="thePanel" runat="server" SkinID="otherPanel" HorizontalAlign="Center">
        <asp:Label ID="abtTitle" runat="server" SkinID="pageTitle" Text="Search" /><br />
        <asp:Panel runat="server" SkinID="subPanel">
            <asp:TextBox ID="search" runat="server" SkinID="search" /><br />
            <asp:Button ID="sID" runat="server" Text="Search by ID" OnClick="sID_Click" SkinID="confirmButton" /><br />
            <asp:Button ID="sFN" runat="server" Text="Search by Family name" OnClick="sFN_Click" SkinID="confirmButton" /><br />
            <asp:Button ID="sGN" runat="server" Text="Search by Ginvin name" OnClick="sGN_Click" SkinID="confirmButton" /><br />
            <asp:AccessDataSource runat="server" ID="sd5" DataFile="~/App_Data/userdb.accdb" SelectCommand="SELECT [ID], [gname], [fname], [emai], [dob], [gender], [blood], [java], [cs], [swift], [pyear], [addr], [state] FROM [userinfo]" />
            <asp:ListView runat="server" ID="lv">
                <ItemTemplate>
                    <b>Name: <%# Eval("gname") %> <%# Eval("fname") %></b><br />
                    Email: <%# Eval("emai") %><br />
                    Date of birth: <%# Eval("dob") %><br />
                    Gender: <%# Eval("gender") %><br />
                    Blood Type: <%# Eval("blood") %><br />
                    Preferred Java: <%# Eval("java") %><br />
                    Preferred C#: <%# Eval("cs") %><br />
                    Preferred Swift: <%# Eval("swift") %><br />
                    Years of Programming Experince: <%# Eval("pyear") %><br />
                    Address: <%# Eval("addr") %><br />
                    State: <%# Eval("state") %><br />
                </ItemTemplate>
            </asp:ListView>
            <asp:HyperLink ID="linkSourceCode" runat="server" Target="_blank" NavigateUrl="Display.aspx?filename=show.aspx" ImageUrl="~/Pix/codebuttonsearchrecords.jpg" />
        </asp:Panel>
    </asp:Panel>
</asp:Content>
