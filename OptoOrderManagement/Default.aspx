<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OptoOrderManagement._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="height: 516px" aria-checked="undefined">
        <div style ="font-size:x-large; background-color: #CCCCCC; text-align: center; vertical-align: middle; height: 84px; font-style: normal; line-height: 85px;">OptoFab Order Management System</div>
        <table class="nav-justified" style="width: 93%; height: 122px; margin-top: 0px">
            <tr>
                <td style="width: 168px"><asp:TextBox ID="TextBoxSearch" runat="server" Width="140px"></asp:TextBox>
                </td>
                <td style="width: 188px">
        <asp:DropDownList ID="DropDownSearch" runat="server" Width="160px">
            <asp:ListItem Text="Please select" Value =" "></asp:ListItem>
            <asp:ListItem Value="Order Number"></asp:ListItem>
            <asp:ListItem Value="Client First Name"></asp:ListItem>
            <asp:ListItem Value="Client Last Name"></asp:ListItem>
            <asp:ListItem Value="Organisation"></asp:ListItem>
            <asp:ListItem Value="Phone Number"></asp:ListItem>
            <asp:ListItem Value="Status"></asp:ListItem>
        </asp:DropDownList>
                </td>
                <td class="modal-sm" style="width: 85px">
                    <asp:Button ID="ButtonSearch" runat="server" Text="Search" OnClick="ButtonSearch_Click" />
                </td>
                <td class="modal-sm" style="width: 265px">
                    <asp:Button ID="ButtonFuzzy" runat="server" OnClick="ButtonFuzzy_Click" Text="Fuzzy Search" />
                </td>
                <td style="width: 148px">
        <asp:DropDownList ID="DropDownSort" runat="server">
            <asp:ListItem>Please select</asp:ListItem>
            <asp:ListItem>Order Number</asp:ListItem>
            <asp:ListItem>Action Required</asp:ListItem>
            <asp:ListItem>Urgent</asp:ListItem>
            <asp:ListItem>Status</asp:ListItem>
            <asp:ListItem>Date</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
                </td>
                <td class="modal-sm" style="width: 374px">
                    <asp:Button ID="ButtonSort" runat="server" Text="Sort" OnClick="ButtonSort_Click" />
                </td>
                <td colspan="1" rowspan="1">
        <asp:Button ID="ButtonImport" runat="server" Text="Import Order" />
                </td>
            </tr>
        </table>
        <br/>
                      
        <asp:GridView ID="GridView1" runat="server" BorderColor="Silver" HorizontalAlign="Center" OnRowDataBound="gridview1_RowDataBound"  >
            <HeaderStyle Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
            <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <RowStyle Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:GridView>

    </div>



</asp:Content>
