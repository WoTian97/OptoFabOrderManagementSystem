<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OptoOrderManagement._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="height: 516px" aria-checked="undefined">
        <div style ="font-size:x-large; background-color: #CCCCCC; text-align: center; vertical-align: middle; height: 84px; font-style: normal; line-height: 85px;" align ="center">OptoFab Order Management System</div>
        <table class="nav-justified" style="width: 83%; height: 122px; margin-top: 0px">
            <tr>
                <td style="width: 74px">Search</td>
                <td style="width: 217px"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="modal-sm" style="width: 265px">
        <asp:DropDownList ID="DropDownSearch" runat="server">
            <asp:ListItem Text="Please select" Value =" "></asp:ListItem>
            <asp:ListItem Value="Order Number"></asp:ListItem>
            <asp:ListItem Value="Client name"></asp:ListItem>
            <asp:ListItem Value="Organisation"></asp:ListItem>
            <asp:ListItem Value="Phone number"></asp:ListItem>
            <asp:ListItem Value="Status"></asp:ListItem>
            <asp:ListItem Value="Date range"></asp:ListItem>
        </asp:DropDownList>
                </td>
                <td style="width: 55px">
        <asp:Label ID="Label1" runat="server" Text="Sort"></asp:Label>
                </td>
                <td class="modal-sm" style="width: 374px">
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Please select</asp:ListItem>
            <asp:ListItem>Order Number</asp:ListItem>
            <asp:ListItem>Action Required</asp:ListItem>
            <asp:ListItem>Urgent</asp:ListItem>
            <asp:ListItem>Status</asp:ListItem>
            <asp:ListItem>Date</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
                </td>
                <td colspan="1" rowspan="1">
        <asp:Button ID="ButtonImport" runat="server" Text="Import" />
                </td>
            </tr>
        </table>
        <br/>
        


        <table class="nav-justified">
            <tr>
                <td style="border-top-style: ridge; border-spacing: -4mm;">Order Number</td>
                <td style="border-top-style: ridge; border-spacing: -4mm;">Client Name</td>
                <td style="border-top-style: ridge; border-spacing: -4mm;">Organisation</td>
                <td style="border-top-style: ridge; border-spacing: -4mm;">Phone number</td>
                <td style="border-top-style: ridge; border-spacing: -4mm;">Action Required</td>
                <td style="border-top-style: ridge; border-spacing: -4mm;">Urgent</td>
                <td style="border-top-style: ridge; border-spacing: -4mm;">Status</td>
                <td class="modal-sm" style="border-top-style: ridge; border-spacing: -4mm;">Date</td>
            </tr>
            <tr>
                <td style="border-top-style: ridge; border-spacing: -4mm;">1</td>
                <td style="border-top-style: ridge; border-spacing: -4mm;">John</td>
                <td style="border-top-style: ridge; border-spacing: -4mm;">LIGO</td>
                <td style="border-top-style: ridge; border-spacing: -4mm;">0412345678</td>
                <td style="border-top-style: ridge; border-spacing: -4mm;">True</td>
                <td style="border-top-style: ridge; border-spacing: -4mm;">True</td>
                <td style="border-top-style: ridge; border-spacing: -4mm;">Complete</td>
                <td class="modal-sm" style="border-top-style: ridge; border-spacing: -4mm;">21/08/2021</td>
            </tr>
        </table>
        


    </div>



</asp:Content>
