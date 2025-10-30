<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegPage.aspx.cs" Inherits="WebApplication_StudenManagement.RegPage" %>

<!DOCTYPE html>
<link rel="stylesheet" href="Content/custom.css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="center-flex">
            <h1>Trường trung học phổ thông Lương Ngọc Quyến</h1>
        </div>
        <div class="center-flex">
            <table>
                <tr>
                    <td align="center" colspan="2">Register Panel</td>
                </tr>
                <tr>
                    <td align="right">Username:
                    </td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtUsername" runat="server" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td align="right">Password:
                    </td>
                    <td>
                        <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtPass" runat="server" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td align="right">Confirm Password:
                    </td>
                    <td>
                        <asp:TextBox ID="txtCPass" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtCPass" runat="server" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td align="right">Email:
                    </td>
                    <td>
                        <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtMail" runat="server" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td align="right">Phone:
                    </td>
                    <td>
                        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtPhone" runat="server" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td align="left">
                        <asp:Button ID="btnReg" runat="server" Text="Register" onclick="btnReg_Click"/></td>
                    <td align="right">
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" /></td>
                </tr>


            </table>
        </div>
    </form>
</body>
</html>
