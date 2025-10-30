<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="WebApplication_StudenManagement.AddStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="center-block">
        <h2>Add New Student</h2>
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <asp:Panel ID="pnlAddStudent" runat="server">
            <table border="1">
                <tr>
                    <td>
                        <asp:Label ID="lblName" runat="server" Text="Student ID:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtStID" runat="server" Width="100%"  ></asp:TextBox>
                        
                    </td>
                    <td align="right">
                        <asp:Button ID="btnGenID" runat="server" Text="Fill ID" Height="30px" Width="80px" Font-Bold="True" OnClick="btnGenID_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblAge" runat="server" Text="Full Name:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtFname" runat="server" Width="100%"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtFname">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblClass" runat="server" Text="Date of Birth:"></asp:Label></td>
                    <td class="w-100" style="width: 109%">
                        <asp:TextBox ID="txtDoB" runat="server" Width="100%" TextMode="Date"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Sex:"></asp:Label></td>
                    <td >
                        
                        <asp:DropDownList ID="ddlSex" runat="server"></asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Class:"></asp:Label></td>
                    <td class="w-100" style="width: 109%">
                        <asp:TextBox ID="txtClass" runat="server" Width="100%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtClass">*</asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Address:"></asp:Label></td>
                    <td class="w-100" style="width: 109%">
                        <asp:TextBox ID="txtAddress" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Parent Phone:"></asp:Label></td>
                    <td class="w-100" style="width: 109%">
                        <asp:TextBox ID="txtPPhone" runat="server" Width="100%"></asp:TextBox></td>
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
        </asp:Panel>
    </div>
</asp:Content>
