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
        


        <table class="nav-justified" style="width: 96%">
            <tr>
                <td style="border-style: solid; border-width: 1px;">Order Number</td>
                <td style="border-style: solid; border-width: 1px;">Action Required</td>
                <td style="border-style: solid; border-width: 1px;">Action Description</td>
                <td style="border-style: solid; border-width: 1px;">Urgent</td>
                <td style="border-style: solid; border-width: 1px;">Priority</td>
                <td style="border-style: solid; border-width: 1px;">Status</td>
                <td style="border-style: solid; border-width: 1px;">Order Description</td>
                <td style="border-style: solid; border-width: 1px; width: 108px;">Payment Status</td>
                <td style="border-style: solid; border-width: 1px;">Cost</td>
                <td style="border-style: solid; border-width: 1px;">Tracking Number</td>
                <td style="border-style: solid; border-width: 1px;">Client Name</td>
                <td style="border-style: solid; border-width: 1px;">Organisation</td>
                <td style="border-style: solid; border-width: 1px;">Phone number</td>
                <td class="modal-sm" style="border-style: solid; border-width: 1px;">Date</td>
            </tr>
            <tr>
                <td style="border-style: solid; border-width: 1px;">1</td>
                <td style="border-style: solid; border-width: 1px;">True</td>
                <td style="border-style: solid; border-width: 1px;">All done</td>
                <td style="border-style: solid; border-width: 1px;">True</td>
                <td style="border-style: solid; border-width: 1px;">1</td>
                <td style="border-style: solid; border-width: 1px;">Complete</td>
                <td style="border-style: solid; border-width: 1px;">3 mirrors</td>
                <td style="border-style: solid; border-width: 1px; width: 108px;">Received</td>
                <td style="border-style: solid; border-width: 1px;">4600</td>
                <td style="border-style: solid; border-width: 1px;">R43E9udb</td>
                <td style="border-style: solid; border-width: 1px;">John</td>
                <td style="border-style: solid; border-width: 1px;">LIGO</td>
                <td style="border-style: solid; border-width: 1px;">0412345678</td>
                <td class="modal-sm" style="border-style: solid; border-width: 1px;">21/08/2021</td>
            </tr>
        </table>
        


    </div>



</asp:Content>
