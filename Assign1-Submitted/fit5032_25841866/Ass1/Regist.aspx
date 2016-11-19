<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Regist.aspx.cs" Inherits="Regist" MasterPageFile="~/Ass1/HomeMaster.master" StylesheetTheme="Blue"%>

<asp:Content ID="homePage" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="thePanel" runat="server" SkinID="otherPanel">
        <asp:Label ID="title" runat="server" SkinID="pageTitle" Text="Registration"/><br />
        <table align="center">
            <tr>
                <td>
                    <table align="center">
                        <tr>
                            <td align="right"><b>Given Name:</b></td>
                            <td align="left">
                                <asp:TextBox ID="GnameText" runat="server" SkinID="box"/></td>
                            <td align="left">
                                <asp:RequiredFieldValidator
                                    runat="server"
                                    ErrorMessage="Please enter your Givin Name."
                                    ControlToValidate="GnameText"
                                    CssClass="error"
                                    Display="Dynamic" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right"><b>Family Name:</b></td>
                            <td align="left">
                                <asp:TextBox ID="FnameText" runat="server" SkinID="box"/></td>
                            <td align="left">
                                <asp:RequiredFieldValidator
                                    runat="server"
                                    ErrorMessage="Please enter your Family Name."
                                    ControlToValidate="GnameText"
                                    CssClass="error"
                                    Display="Dynamic" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right"><b>Email:</b></td>
                            <td align="left">
                                <asp:TextBox ID="emailText" runat="server" SkinID="box"/></td>
                            <td align="left">
                                <asp:RequiredFieldValidator
                                    runat="server"
                                    ErrorMessage="Please enter your email address."
                                    ControlToValidate="emailText"
                                    CssClass="error"
                                    Display="Dynamic" />
                                <asp:RegularExpressionValidator
                                    runat="server"
                                    ControlToValidate="emailText"
                                    ValidationExpression=".*@.*\..*"
                                    Display="Dynamic"
                                    ErrorMessage="Invalid email"
                                    CssClass="error" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right"><b>Date of Birth:</b></td>
                            <td align="left">
                                <asp:TextBox ID="dobText" runat="server" SkinID="box"/></td>
                            <td align="left">
                                <asp:CustomValidator
                                    ID="vldDates"
                                    runat="server"
                                    ControlToValidate="dobText"
                                    OnServerValidate="vldDates_ServerValidate" />
                                <asp:RequiredFieldValidator
                                    runat="server"
                                    ErrorMessage="Please enter your date of birth."
                                    ControlToValidate="dobText"
                                    CssClass="error"
                                    Display="Dynamic" />
                                <asp:Label ID="feedbackLabel" runat="server" CssClass="error" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right"><b>Gender:</b></td>
                            <td align="left">
                                <asp:RadioButtonList ID="genRadio" runat="server" SkinID="genRadio">
                                    <asp:ListItem Text="Male" />
                                    <asp:ListItem Text="Female" />
                                    <asp:ListItem Text="Others" />
                                </asp:RadioButtonList>
                            </td>
                            <td align="left">
                                <asp:RequiredFieldValidator
                                    runat="server"
                                    ErrorMessage="Please choose your gender."
                                    ControlToValidate="genRadio"
                                    CssClass="error"
                                    Display="Dynamic" />
                            </td>
                        </tr>
                        <tr valign="top">
                            <td align="right"><b>Blood Type:</b></td>
                            <td align="left">
                                <asp:ListBox ID="bldBox" runat="server" SkinID="bldBox">
                                    <asp:ListItem Text="A" />
                                    <asp:ListItem Text="B" />
                                    <asp:ListItem Text="O" />
                                    <asp:ListItem Text="AB" />
                                    <asp:ListItem Text="Others" />
                                </asp:ListBox>
                            </td>
                            <td align="left">
                                <asp:RequiredFieldValidator
                                    runat="server"
                                    ErrorMessage="Please choose your blood type."
                                    ControlToValidate="bldBox"
                                    CssClass="error"
                                    Display="Dynamic" />
                            </td>
                        </tr>
                        <tr vglign="top">
                            <td align="right"><b>Preferred Programming Language:</b></td>
                            <td align="left">
                                <asp:CheckBox ID="chk1" runat="server" Text="Java" AutoPostBack="False" SkinID="chk"/>
                                <asp:CheckBox ID="chk2" runat="server" Text="C#" AutoPostBack="False" SkinID="chk"/>
                                <asp:CheckBox ID="chk3" runat="server" Text="Swift" AutoPostBack="False" SkinID="chk"/>
                                <asp:CheckBox ID="chk4" runat="server" Text="Others" AutoPostBack="False" SkinID="chk"/>
                            </td>
                        </tr>
                        <tr>
                            <td align="right"><b>Years of Programming Experience:</b></td>
                            <td align="left">
                                <asp:TextBox ID="peText" runat="server" SkinID="boxYear"/></td>
                            <td align="left">
                                <asp:RequiredFieldValidator
                                    runat="server"
                                    ErrorMessage="Please enter your years of programming experience."
                                    ControlToValidate="peText"
                                    CssClass="error"
                                    Display="Dynamic" />
                                <asp:RangeValidator
                                    runat="server"
                                    ControlToValidate="peText"
                                    ErrorMessage="Please enter between 0 and 99 years."
                                    MinimumValue="0"
                                    MaximumValue="99"
                                    Type="Integer"
                                    Display="Dynamic"
                                    CssClass="error" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="top"><b>Address:</b></td>
                            <td align="left">
                                <asp:TextBox ID="addrText" runat="server" SkinID="boxAddr" Rows="3" TextMode="MultiLine"/></td>
                            <td align="left" valign="top">
                                <asp:RequiredFieldValidator
                                    runat="server"
                                    ErrorMessage="Please enter your address."
                                    ControlToValidate="addrText"
                                    CssClass="error"
                                    Display="Dynamic" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right"><b>State:</b></td>
                            <td align="left">
                                <asp:DropDownList ID="StateList" runat="server" SkinID="StateList">
                                    <asp:ListItem>Victoria</asp:ListItem>
                                    <asp:ListItem>New South Wales</asp:ListItem>
                                    <asp:ListItem>South Australia</asp:ListItem>
                                    <asp:ListItem>Western Australia</asp:ListItem>
                                    <asp:ListItem>Tasmania</asp:ListItem>
                                    <asp:ListItem>North Territory</asp:ListItem>
                                    <asp:ListItem>Queensland</asp:ListItem>
                                    <asp:ListItem>Australian Capital Territory</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="right"><b>Password:</b></td>
                            <td align="left">
                                <asp:TextBox ID="psdText" runat="server" TextMode="password" SkinID="box"/></td>
                            <td align="left">
                                <asp:RequiredFieldValidator
                                    runat="server"
                                    ErrorMessage="Please enter a password."
                                    ControlToValidate="psdText"
                                    CssClass="error"
                                    Display="dynamic" />
                                <asp:RegularExpressionValidator
                                    runat="server"
                                    Display="dynamic"
                                    ControlToValidate="psdText"
                                    ErrorMessage="Password must contain one of @#$%^&*/."
                                    ValidationExpression=".*[@#$%^&*/].*"
                                    CssClass="error" />
                                <asp:RegularExpressionValidator
                                    runat="server"
                                    Display="dynamic"
                                    ControlToValidate="psdText"
                                    ErrorMessage="Password must be 6-12 nonblank characters."
                                    ValidationExpression="[^\s]{6,12}"
                                    CssClass="error" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right"><b>Confirm-Password:</b></td>
                            <td align="left">
                                <asp:TextBox ID="psdTextC" runat="server" TextMode="password" SkinID="box"/></td>
                            <td align="left">
                                <asp:CompareValidator runat="server"
                                    ControlToValidate="psdText"
                                    ControlToCompare="psdTextC"
                                    ErrorMessage="Please confirm your password."
                                    CssClass="error" />
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:Button ID="confirmButton" runat="server" Text="Confirm" OnClick="confirmButton_Click" SkinID="confirmButton"/></td>
                            <td></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="userInfo" runat="server" CssClass="userInfo" Visible="false" HorizontalAlign="left">
                        <asp:Label runat="server" Text="  Your Name Card: " CssClass="subTitle" SkinID="subTitle"/><br />
                        <asp:Label ID="name" runat="server" /><br />
                        <asp:Label ID="email" runat="server" /><br />
                        <asp:Label ID="dob" runat="server" /><br />
                        <asp:Label ID="gender" runat="server" /><br />
                        <asp:Label ID="blood" runat="server" /><br />
                        <asp:Label ID="language" runat="server" /><br />
                        <asp:Label ID="years" runat="server" /><br />
                        <asp:Label ID="addr" runat="server" /><br />
                        <asp:Label ID="state" runat="server" /><br />
                        <asp:HyperLink ID="google" runat="server" NavigateUrl="https://www.google.com.au" Text="Link to Google" />
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
