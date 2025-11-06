<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowStudentList.aspx.cs" Inherits="WebApplication_StudenManagement.ShowStudentList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:DataList ID="dtlShowStud" OnItemDataBound="dtlShowStud_ItemDataBound" runat="server" OnItemCommand="dtlShowStud_ItemCommand">
            <HeaderTemplate>
                <table>
                </table>
            </HeaderTemplate>
            <ItemTemplate>
                <table>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox1" ReadOnly="false" Width="100px" runat="server" Text='<%# Eval("stuID") %>'></asp:TextBox>


                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" Width="100px" ReadOnly="false" runat="server" Text='<%# Eval("fullname") %>'></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" Width="100px" ReadOnly="false" runat="server" Text='<%# Eval("class") %>'></asp:TextBox>
                        </td>
                        <td>

                            <asp:ImageButton ID="imgbtnDetail" runat="server" CommandName="DetailStudent" CommandArgument='<%# Eval("stuID") %>' ImageUrl="~/Images/detail.png" />
                        </td>

                    </tr>
                </table>
            </ItemTemplate>
            <FooterTemplate>
                <table></table>
            </FooterTemplate>
        </asp:DataList>
    </div>
</asp:Content>
