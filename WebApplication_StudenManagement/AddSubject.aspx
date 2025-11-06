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
        <div style="height: 29px;  margin-left: 100px">
            <table>
                <tr>
                    <td style="width:0100px; height: 24px;" align="left">
                        <asp:Label ID="Label4" runat="server" Text="Subject ID" Width="200px">Subject ID</asp:Label>
                    </td>
                    <td style="width:200px; height: 24px;" align="left">
                        <asp:Label ID="Label5" runat="server" Text="Label" Width="200px">Subject Name</asp:Label>
                    </td>
                </tr>
            </table>
        </div>

        <div style="margin-left: 100px" >
            <asp:DataList ID="dtlSub" runat="server"  Width="260px">
                <HeaderTemplate>
                    <table></table>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td colspan="2" align="right" style="width:200px">
                            <asp:Label ID="Label3" runat="server"  Text='<%# Eval("subID") %>'></asp:Label>
                        </td>
                        <td colspan="2" align="right" style="width:200px">
                            <asp:TextBox ID="txtSubj" ReadOnly="true" runat="server" Text='<%# Eval("subname") %>'></asp:TextBox>

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
