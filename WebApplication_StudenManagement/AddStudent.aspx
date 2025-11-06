<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="WebApplication_StudenManagement.AddStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="center-block">
        <h2>Add New Student</h2>
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        <br />
        
        <table border="1">
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="lblName" runat="server" Text="Student ID:"></asp:Label></td>
                <td style="width: 300px">
                    <asp:TextBox ID="txtStID" runat="server" Width="90%"></asp:TextBox>

                </td>
                <td align="right">
                    <asp:Button ID="btnGenID" runat="server" Text="Fill ID" Height="30px" Width="80px" Font-Bold="True" OnClick="btnGenID_Click" CausesValidation="False" />
                </td>
            </tr>
            <tr>
                <td style="width: 99px">
                    <asp:Label ID="lblAge" runat="server" Text="Full Name:"></asp:Label></td>
                <td style="width: 300px">
                    <asp:TextBox ID="txtFname" runat="server" Width="90%"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtFname">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 99px">
                    <asp:Label ID="lblClass" runat="server" Text="Date of Birth:"></asp:Label></td>
                <td style="width: 300px">
                    <asp:TextBox ID="txtDoB" runat="server" Width="90%" TextMode="Date"></asp:TextBox></td>
            </tr>

            <tr>
                <td style="width: 99px">
                    <asp:Label ID="Label1" runat="server" Text="Sex:"></asp:Label></td>
                <td style="width: 300px">

                    <asp:DropDownList ID="ddlSex" runat="server"></asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td style="width: 99px">
                    <asp:Label ID="Label2" runat="server" Text="Class:"></asp:Label></td>
                <td style="width: 300px">
                    <asp:TextBox ID="txtClass" runat="server" Width="90%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtClass">*</asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td style="width: 99px">
                    <asp:Label ID="Label3" runat="server" Text="Address:"></asp:Label></td>
                <td style="width: 300px">
                    <asp:TextBox ID="txtAddress" runat="server" Width="90%"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 99px">
                    <asp:Label ID="Label4" runat="server" Text="Parent Phone:"></asp:Label></td>
                <td style="width: 300px">
                    <asp:TextBox ID="txtPPhone" runat="server" Width="90%"></asp:TextBox></td>
            </tr>

            <tr>
                <td colspan="2">
                    <asp:Button ID="btnAddStudent" runat="server" Text="Add Student" OnClick="btnAddStudent_Click" />
                </td>
                <td colspan="2">
                    <asp:Button ID="btnBack" runat="server" Text="Back to list" OnClick="btnBack_Click" />
                </td>
            </tr>
        </table>
    </div>
    <div>
        List Student
    </div>
    <div>
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label5" Width="100px" runat="server" Text="">Student ID</asp:Label></td>
                <td>
                    <asp:Label ID="Label6" Width="100px" runat="server" Text="">Full Name</asp:Label></td>
                <td>
                    <asp:Label ID="Label7" Width="100px" runat="server" Text="">Class</asp:Label></td>

            </tr>
        </table>
    </div>


    <%--doan duoi la show danh sach hoc sinh trong database ra ngoai--%>

    <%--<div>
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
                            <asp:Button ID="txtEdit" runat="server" Text="detail"  CommandName="DetailStudent" CommandArgument='<%# Eval("stuID") %>' />
                            <asp:ImageButton ID="imgbtnDetail" runat="server" CommandName="DetailStudent" CommandArgument='<%# Eval("stuID") %>' ImageUrl="~/Images/detail.png" />
                        </td>
                        
                    </tr>
                </table>
            </ItemTemplate>
            <FooterTemplate>
                <table></table>
            </FooterTemplate>
        </asp:DataList>
    </div>--%>
</asp:Content>
