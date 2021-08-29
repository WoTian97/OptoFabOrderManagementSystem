<%@ Page Title="Order" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="OptoOrderManagement.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3 style="font-size: xx-large">&nbsp;&nbsp;&nbsp; Order 21</h3>
    <br/>
    <h3>&nbsp;<table class="nav-justified" style="height: 210px">
        <tr>
            <td style="line-height: 35px">Part number</td>
            <td style="line-height: 35px">Action Required</td>
            <td style="line-height: 35px">Urgent</td>
            <td style="line-height: 35px">Status</td>
            <td style="line-height: 35px">Priority</td>
            <td style="line-height: 35px">Part Description</td>
        </tr>
        <tr>
            <td style="line-height: 35px">1</td>
            <td style="line-height: 35px">True</td>
            <td style="line-height: 35px">False</td>
            <td style="line-height: 35px">In Progress</td>
            <td style="line-height: 35px">2</td>
            <td style="line-height: 35px">Some decription</td>
        </tr>
        <tr>
            <td style="line-height: 35px">2</td>
            <td style="line-height: 35px">False</td>
            <td style="line-height: 35px">False</td>
            <td style="line-height: 35px">Waiting for external vendor</td>
            <td style="line-height: 35px">3</td>
            <td style="line-height: 35px">Some decription</td>
        </tr>
        <tr>
            <td style="line-height: 35px">3</td>
            <td style="line-height: 35px">False</td>
            <td style="line-height: 35px">True</td>
            <td style="line-height: 35px">Complete</td>
            <td style="line-height: 35px">1</td>
            <td style="line-height: 35px">Some decription</td>
        </tr>
        </table>
    </h3>
    <br/>

    <h3>&nbsp;<table class="nav-justified">
        <tr>
            <td style="width: 181px; height: 27px;"></td>
            <td class="modal-sm" style="width: 296px; height: 27px;">Action required</td>
            <td style="height: 27px">
                <asp:DropDownList ID="DropDownList1" runat="server">
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
                <asp:DropDownList ID="DropDownList2" runat="server">
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
                <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Status</td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server">
                    <asp:ListItem>N/A</asp:ListItem>
                    <asp:ListItem>Not started</asp:ListItem>
                    <asp:ListItem>In progress</asp:ListItem>
                    <asp:ListItem>Waiting for external vendor</asp:ListItem>
                    <asp:ListItem Value="Fabrication Complete">Fabrication Complete</asp:ListItem>
                    <asp:ListItem>Shipped</asp:ListItem>
                    <asp:ListItem>Order Complete</asp:ListItem>
                    <asp:ListItem>Partially Complete</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Payment status</td>
            <td>
                <asp:DropDownList ID="DropDownList5" runat="server">
                    <asp:ListItem>N/A</asp:ListItem>
                    <asp:ListItem>No payment received</asp:ListItem>
                    <asp:ListItem>No charge</asp:ListItem>
                    <asp:ListItem>Progress payment 1</asp:ListItem>
                    <asp:ListItem>Progress payment 2</asp:ListItem>
                    <asp:ListItem>Progress payment 3</asp:ListItem>
                    <asp:ListItem>Progress payment 4</asp:ListItem>
                    <asp:ListItem>Progress payment 5</asp:ListItem>
                    <asp:ListItem>Progress payment 6</asp:ListItem>
                    <asp:ListItem>Progress payment 7</asp:ListItem>
                    <asp:ListItem>Progress payment 8</asp:ListItem>
                    <asp:ListItem>Progress payment 9</asp:ListItem>
                    <asp:ListItem>Progress payment 10</asp:ListItem>
                    <asp:ListItem>Invoice sent</asp:ListItem>
                    <asp:ListItem>Payment received</asp:ListItem>
                    <asp:ListItem>Engineering development</asp:ListItem>
                    <asp:ListItem>Collaborative credit</asp:ListItem>
                    <asp:ListItem>Prepaid</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Cost</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Tracking number</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Action description</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Order description</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        </table>
    </h3>

    <h3>&nbsp;<table class="nav-justified">
        <tr>
            <td style="width: 183px">&nbsp;</td>
            <td class="modal-sm" style="width: 295px; font-weight: bold;">Customer information</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 183px">&nbsp;</td>
            <td class="modal-sm" style="width: 295px; font-weight: bold;">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 183px">&nbsp;</td>
            <td class="modal-sm" style="width: 295px">First name</td>
            <td>
                <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 183px">&nbsp;</td>
            <td class="modal-sm" style="width: 295px">Last name</td>
            <td>
                <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 183px">&nbsp;</td>
            <td class="modal-sm" style="width: 295px">Company name</td>
            <td>
                <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 183px">&nbsp;</td>
            <td class="modal-sm" style="width: 295px">Email</td>
            <td>
                <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 183px">&nbsp;</td>
            <td class="modal-sm" style="width: 295px">Phone</td>
            <td>
                <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
            </td>
        </tr>
        </table>
        <table class="nav-justified">

            <table class="nav-justified">
            </table>

    <h3>&nbsp;<table class="nav-justified">
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px; font-weight: bold;">Shipping address</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px; font-weight: bold;">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">First name</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Last Name</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Phone number</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Address1</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" Font-Size="XX-Large"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Address2</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server" Font-Size="XX-Large"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Country</td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">State</td>
            <td>
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">City</td>
            <td>
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Postcode</td>
            <td>
                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    </h3>

        <h3>&nbsp;<table class="nav-justified">
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px; font-family: Arial, Helvetica, sans-serif; font-weight: bold;">Billing address</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px; font-family: Arial, Helvetica, sans-serif; font-weight: bold;">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">First name</td>
            <td>
                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Last Name</td>
            <td>
                <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Phone number</td>
            <td>
                <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Address1</td>
            <td>
                <asp:TextBox ID="TextBox17" runat="server" Font-Size="XX-Large"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Address2</td>
            <td>
                <asp:TextBox ID="TextBox18" runat="server" Font-Size="XX-Large"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Country</td>
            <td>
                <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">State</td>
            <td>
                <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">City</td>
            <td>
                <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Postcode</td>
            <td>
                <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Commit Changes" />
            </td>
        </tr>
    </table>
    </h3>

























   
    </asp:Content>
