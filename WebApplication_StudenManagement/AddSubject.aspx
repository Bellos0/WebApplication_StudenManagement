<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddSubject.aspx.cs" Inherits="WebApplication_StudenManagement.AddSubject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <div class="center-block">
            <h1>Management Subject</h1>
        </div>
        <div class="center-block">
            <h2>Add Subject</h2>
        </div>
        <div class="center-block">
            <table>
                <tr>
                    <td align="right" style="width: 100px">
                        <asp:Label ID="Label1" runat="server" Text="Subject ID: "></asp:Label>

                    </td>
                    <td width="200px" height="50px">
                        <asp:TextBox ID="txtSubID" runat="server" Width="90%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtSubID">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Button ID="btnValidated" runat="server" Text="Check" OnClick="btnValidated_Click" Width="080px" />
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 100px">
                        <asp:Label ID="Label2" runat="server" Text="Subject Name"></asp:Label>

                    </td>
                    <td width="200px" height="50px">
                        <asp:TextBox ID="txtsubName" runat="server" Width="90%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtsubName">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <asp:Button ID="btnAddSubject" runat="server" Text="Add Subject" OnClick="btnAddSubject_Click" CausesValidation="true" />
                    </td>
                    <td>
                        <asp:Label ID="lbError" Text="" runat="server" />
                    </td>
                    <td align="right">
                        <asp:Button ID="btnHome" runat="server" Text="Home" OnClick="btnHome_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <div class="center-block">
            <h3>List Subject</h3>

        </div>
        <div >
            <asp:DataList ID="dtlSub" runat="server"  Width="300px">
                <HeaderTemplate>
                    <table></table>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td colspan="2" align="right">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("subID") %>'></asp:Label>
                        </td>
                        <td colspan="2" align="right">
                            <asp:TextBox ID="txtSubj" runat="server" Text='<%# Eval("subname") %>'></asp:TextBox>

                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    <table></table>
                </FooterTemplate>
            </asp:DataList>
        </div>
    </div>

</asp:Content>
