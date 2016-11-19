<%@ Page Language="C#" AutoEventWireup="true" CodeFile="all.aspx.cs" Inherits="Ass2_locked_all" MasterPageFile="~/Ass2/HomeMaster.master" StylesheetTheme="Blue" %>

<asp:Content ID="homePage" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="thePanel" runat="server" SkinID="otherPanel">
        <asp:Label ID="allTitle" runat="server" SkinID="pageTitle" /><br />
        <asp:Panel runat="server" SkinID="subPanel">
            <asp:AccessDataSource ID="DS4" runat="server" DataFile="~/App_Data/userdb.accdb" SelectCommand="SELECT [ID], [gname], [fname], [emai], [dob], [gender], [blood], [java], [cs], [swift], [pyear], [addr], [state] FROM [userinfo]" />
            <asp:Label ID="display" runat="server" CssClass="homeInfo" />
            <asp:Panel runat="server" SkinID="codePanel">
                <asp:GridView ID="gvProducts" runat="server"
                    DataSourceID="DS4" AutoGenerateColumns="False" DataKeyNames="ID" CssClass="homeInfo" OnRowCommand="gvProducts_RowCommand">
                    <Columns>
                        <asp:ButtonField ButtonType="Button" Text="Display" />
                        <asp:HyperLinkField DataTextField="ID" HeaderText="ID"  DataNavigateUrlFields="ID" DataNavigateUrlFormatString="show.aspx?id={0}" InsertVisible="False" SortExpression="cust_id" />
                        <asp:BoundField DataField="gName" HeaderText="ginvin name" SortExpression="gName" />
                        <asp:BoundField DataField="fName" HeaderText="family name" SortExpression="fName" />
                        <asp:BoundField DataField="emai" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="dob" HeaderText="date of birth" SortExpression="dob" />
                        <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                        <asp:BoundField DataField="blood" HeaderText="blood type" SortExpression="blood" />
                        <asp:BoundField DataField="java" HeaderText="java" SortExpression="java" />
                        <asp:BoundField DataField="cs" HeaderText="c#" SortExpression="cs" />
                        <asp:BoundField DataField="swift" HeaderText="swift" SortExpression="swift" />
                        <asp:BoundField DataField="pyear" HeaderText="programming experience" SortExpression="pyear" />
                        <asp:BoundField DataField="addr" HeaderText="address" SortExpression="addr" />
                        <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                    </Columns>
                </asp:GridView>
            </asp:Panel>
        </asp:Panel>
        <asp:HyperLink ID="linkSourceCode" runat="server" Target="_blank" NavigateUrl="Display.aspx?filename=all.aspx" ImageUrl="~/Pix/codebuttondisplayrecords.jpg"/>
    </asp:Panel>
</asp:Content>
