<%@ Page Title="Part" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Part.aspx.cs" Inherits="OptoOrderManagement.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Part 
        <asp:Label ID="LabelPID" runat="server" Text="Label"></asp:Label>
    </h3>
    <p>&nbsp;</p>
    <table class="nav-justified">
        <tr>
            <td style="width: 181px; height: 27px;">&nbsp;</td>
            <td class="modal-sm" style="width: 296px; height: 27px; font-weight: bold;">Part information</td>
            <td style="height: 27px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 181px; height: 27px;">&nbsp;</td>
            <td class="modal-sm" style="width: 296px; height: 27px; font-weight: bold;">&nbsp;</td>
            <td style="height: 27px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 181px; height: 27px;"></td>
            <td class="modal-sm" style="width: 296px; height: 27px;">Action required</td>
            <td style="height: 27px">
                <asp:DropDownList ID="DropDownActionReq" runat="server">
                    <asp:ListItem>N/A</asp:ListItem>
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 181px; height: 26px;"></td>
            <td class="modal-sm" style="width: 296px; height: 26px;">Urgent</td>
            <td style="height: 26px">
                <asp:DropDownList ID="DropDownUrgent" runat="server">
                    <asp:ListItem>N/A</asp:ListItem>
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Priority</td>
            <td>
                <asp:TextBox ID="TextPriority" runat="server" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Status</td>
            <td>
                <asp:DropDownList ID="DropDownStatus" runat="server">
                    <asp:ListItem>N/A</asp:ListItem>
                    <asp:ListItem>Not started</asp:ListItem>
                    <asp:ListItem>In progress</asp:ListItem>
                    <asp:ListItem>Waiting for external vendor</asp:ListItem>
                    <asp:ListItem>Fabrication complete</asp:ListItem>
                    <asp:ListItem>Shipped</asp:ListItem>
                    <asp:ListItem>Order complete</asp:ListItem>
                    <asp:ListItem>Partially complete</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">
                Part Description</td>
            <td>
                <br />
                <asp:Label ID="LabelTime" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 181px; height: 26px;"></td>
            <td class="modal-sm" style="width: 296px; height: 26px;">
                </td>
            <td style="height: 26px">
                <asp:Button ID="ButtonCommitOrderInfo" runat="server" Text="Update Part Information" />
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 181px; height: 26px;">&nbsp;</td>
            <td class="modal-sm" style="width: 296px; height: 26px;">
                &nbsp;</td>
            <td style="height: 26px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 181px; height: 26px;"></td>
            <td class="modal-sm" style="width: 296px; height: 26px;">
                </td>
            <td style="height: 26px">
                </td>
        </tr>
        <tr>
            <td style="width: 181px; height: 26px;">&nbsp;</td>
            <td class="modal-sm" style="width: 296px; height: 26px;">
                <a href="OpticalOrPhotonic.aspx">Optical or Photonic</a>
            </td>
            <td style="height: 26px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 181px; height: 26px;">&nbsp;</td>
            <td class="modal-sm" style="width: 296px; height: 26px;">
                <a href="">SPDT</a></td>
            <td style="height: 26px">
                &nbsp;</td>
        </tr>
        </table>
    </asp:Content>
