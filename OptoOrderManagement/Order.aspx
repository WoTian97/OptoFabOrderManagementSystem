<%@ Page Title="Order" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="OptoOrderManagement.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3 style="font-size: xx-large">&nbsp;&nbsp;&nbsp;
        </h3>
    <table class="nav-justified">
        <tr>
            <td style="font-size: xx-large; font-weight: bold; width: 1645px;">
        <asp:Label ID="Label1" runat="server" Text="Order "></asp:Label>
        <asp:Label ID="LabelOID" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Button ID="ButtonHome" runat="server" Font-Bold="True" Font-Size="Medium" OnClick="ButtonHome_Click" Text="Back to Home" />
            </td>
        </tr>
    </table>
    <br/>

        <div style="margin-left:auto; margin-right:auto;width:600px;">
            <asp:GridView ID="GridView1" runat="server" BorderColor="Silver" HorizontalAlign="Center" cellspacing="15" CellPadding="15" OnRowDataBound="gridview1_RowDataBound">
                <HeaderStyle Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" />
                <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <RowStyle Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:GridView>
        </div>


    <h3>&nbsp;<table class="nav-justified">
        <tr>
            <td style="width: 181px; height: 27px;">&nbsp;</td>
            <td class="modal-sm" style="width: 296px; height: 27px; font-weight: bold;">Order information</td>
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
            <td class="modal-sm" style="width: 296px">Payment status</td>
            <td>
                <asp:DropDownList ID="DropDownPayStatus" runat="server">
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
                <asp:TextBox ID="TextCost" runat="server" style="ime-mode:disabled" onkeypress="if ((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46) event.returnValue=false;"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Tracking number</td>
            <td>
                <asp:TextBox ID="TextTrackNum" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Action description</td>
            <td>
                <asp:TextBox ID="TextActionDes" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Order description</td>
            <td>
                <asp:TextBox ID="TextOrderDes" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">
                <br />
                Order timestamp</td>
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
                <asp:Button ID="ButtonCommitOrderInfo" runat="server" Text="Update Order Information" OnClick="ButtonCommitOrderInfo_Click" />
                <br />
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
                <asp:TextBox ID="TextFName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 183px">&nbsp;</td>
            <td class="modal-sm" style="width: 295px">Last name</td>
            <td>
                <asp:TextBox ID="TextLName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 183px">&nbsp;</td>
            <td class="modal-sm" style="width: 295px">Company name</td>
            <td>
                <asp:TextBox ID="TextCName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 183px">&nbsp;</td>
            <td class="modal-sm" style="width: 295px">Email</td>
            <td>
                <asp:TextBox ID="TextEmail" runat="server" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 183px">&nbsp;</td>
            <td class="modal-sm" style="width: 295px">Phone</td>
            <td>
                <asp:TextBox ID="TextPhone" runat="server" TextMode="Phone"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 183px">&nbsp;</td>
            <td class="modal-sm" style="width: 295px">&nbsp;</td>
            <td>
                <asp:Button ID="ButtonCommitCustomerInfo" runat="server" Text="Update Customer Information" OnClick="ButtonCommitCustomerInfo_Click" />
            </td>
        </tr>
        </table>

    </h3>
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
                <asp:TextBox ID="TextSFN" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Last Name</td>
            <td>
                <asp:TextBox ID="TextSLN" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Phone number</td>
            <td>
                <asp:TextBox ID="TextSPN" runat="server" TextMode="Phone"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Address1</td>
            <td>
                <asp:TextBox ID="TextSA1" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Address2</td>
            <td>
                <asp:TextBox ID="TextSA2" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Country</td>
            <td>
                <asp:TextBox ID="TextSCoun" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">State</td>
            <td>
                <asp:TextBox ID="TextSState" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">City</td>
            <td>
                <asp:TextBox ID="TextSCity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Postcode</td>
            <td>
                <asp:TextBox ID="TextSPost" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">&nbsp;</td>
            <td>
                <asp:Button ID="ButtonCommitShipAddr" runat="server" Text="Update Shipping Address" OnClick="ButtonCommitShipAddr_Click" />
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
                <asp:TextBox ID="TextBFN" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Last Name</td>
            <td>
                <asp:TextBox ID="TextBLN" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Phone number</td>
            <td>
                <asp:TextBox ID="TextBPN" runat="server" TextMode="Phone"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Address1</td>
            <td>
                <asp:TextBox ID="TextBA1" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Address2</td>
            <td>
                <asp:TextBox ID="TextBA2" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Country</td>
            <td>
                <asp:TextBox ID="TextBCoun" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">State</td>
            <td>
                <asp:TextBox ID="TextBState" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px; height: 52px;"></td>
            <td class="modal-sm" style="width: 296px;">City</td>
            <td>
                <asp:TextBox ID="TextBCity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">Postcode</td>
            <td>
                <asp:TextBox ID="TextBPost" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 181px">&nbsp;</td>
            <td class="modal-sm" style="width: 296px">&nbsp;</td>
            <td>
                <asp:Button ID="ButtonCommitBillAddr" runat="server" Text="Update Billing Address" OnClick="ButtonCommitBillAddr_Click" />
            </td>
        </tr>
    </table>
    </h3>

























   
    </asp:Content>
