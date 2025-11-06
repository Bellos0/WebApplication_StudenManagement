<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentDetail.aspx.cs" Inherits="WebApplication_StudenManagement.StudentDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="center-block">
    <h2> Student Detail</h2>
    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
    <br />
   
    <table border="1">
        <tr>
            <td style="width: 100px">
                <asp:Label ID="lblName" runat="server" Text="Student ID:"></asp:Label></td>
            <td style="width: 300px">
                <asp:TextBox ID="txtStID" ReadOnly="true" runat="server" Width="90%"></asp:TextBox>

            </td>
            <td align="right">
                
            </td>
        </tr>
        <tr>
            <td style="width: 99px">
                <asp:Label ID="lblAge" runat="server" Text="Full Name:"></asp:Label></td>
            <td style="width: 300px">
                <asp:TextBox ID="txtFname" ReadOnly="true" runat="server" Width="90%"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 99px">
                <asp:Label ID="lblClass" runat="server" Text="Date of Birth:"></asp:Label></td>
            <td style="width: 300px">
                <asp:TextBox ID="txtDoB" ReadOnly="true" runat="server" Width="90%" TextMode="Date"></asp:TextBox></td>
        </tr>

        <tr>
            <td style="width: 99px">
                <asp:Label ID="Label1" runat="server" Text="Sex:"></asp:Label></td>
            <td style="width: 300px">

                <asp:TextBox ID="txtSex" ReadOnly="true" Width="90%" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td style="width: 99px">
                <asp:Label ID="Label2" runat="server" Text="Class:"></asp:Label></td>
            <td style="width: 300px">
                <asp:TextBox ID="txtClass" ReadOnly="true" runat="server" Width="90%"></asp:TextBox>
                
            </td>
        </tr>

        <tr>
            <td style="width: 99px">
                <asp:Label ID="Label3" runat="server" Text="Address:"></asp:Label></td>
            <td style="width: 300px">
                <asp:TextBox ID="txtAddress" ReadOnly="true" runat="server" Width="90%"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 99px">
                <asp:Label ID="Label4" runat="server" Text="Parent Phone:"></asp:Label></td>
            <td style="width: 300px">
                <asp:TextBox ID="txtPPhone" ReadOnly="true" runat="server" Width="90%"></asp:TextBox></td>
        </tr>

        <tr>
            <td colspan="2">
                <%--<asp:Button ID="btnAddStudent" runat="server" Text="Add Student"  />--%>
            </td>
            <td colspan="2">
                <asp:Button ID="btnBack" runat="server" Text="Back to list"  />
            </td>
        </tr>
    </table>
</div>

</asp:Content>
