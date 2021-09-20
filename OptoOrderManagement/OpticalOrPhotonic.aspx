<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OpticalOrPhotonic.aspx.cs" Inherits="OptoOrderManagement.OpticalOrPhotonic" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 296px;
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            height: 22px;
            margin-left: 40px;
        }
        .auto-style6 {
            width: 295px;
            height: 22px;
        }
        .auto-style8 {
            width: 299px;
            height: 20px;
        }
        .auto-style9 {
            height: 20px;
        }
        .auto-style10 {
            width: 296px;
            height: 22px;
        }
        .auto-style11 {
            height: 22px;
        }
        .auto-style12 {
            width: 299px;
        }
    </style>
</head>
<body>
     <h3 style="font-size: xx-large">&nbsp;&nbsp;&nbsp;<asp:Label ID="LabelTitle" runat="server" Text="Optical"></asp:Label></h3>
    <form id="form1" runat="server">
        <div>
            <h3>&nbsp;<table class="nav-justified">
                <tr>
                    <td class="modal-sm" style="width: 296px; height: 27px;">Service Type</td>
                    <td style="height: 27px">
                        <asp:Label ID="LabelServiceType" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Supplier Type</td>
                    <td class="auto-style3">
                        <asp:Label ID="LabelSupplierType" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="modal-sm" style="width: 296px">Stock Type</td>
                    <td>
                        <asp:Label ID="LabelStockType" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="modal-sm" style="width: 296px">Material</td>
                    <td>
                        <asp:Label ID="LabelMaterial" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Special Instruction</td>
                    <td class="auto-style3">
                        <asp:Label ID="LabelInstruction" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Quantity</td>
                    <td class="auto-style11">
                        <asp:Label ID="LabelQuantity" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="modal-sm" style="width: 296px">Sides</td>
                    <td>
                        <div id="div_sides" runat="server"></div>
                    </td>
                </tr>
                </table>
            </h3>
            <h3>&nbsp;<table class="nav-justified">
                <tr>
                    <td class="auto-style8">Material Information</td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style12" style="font-weight: bold;">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">Toxicity</td>
                    <td>
                        <asp:Label ID="LabelToxicity" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">Type </td>
                    <td>
                        <asp:Label ID="LabelMaterialType" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">Max Temp</td>
                    <td>
                        <asp:Label ID="LabelMaxTemp" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">Hazards</td>
                    <td>
                        <asp:Label ID="LabelHazards" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">Special Instructions</td>
                    <td>
                        <asp:Label ID="LabelInstructions" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">Chemical COM</td>
                    <td>
                        <asp:Label ID="LabelChemical" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">MTA</td>
                    <td>
                        <asp:Label ID="LabelMTA" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">Document</td>
                    <td>
                        <asp:HyperLink ID="HyperLinkMaterialDocument" runat="server" >Check</asp:HyperLink>
                    </td>
                </tr>
                </table>
                <table class="nav-justified">
                </table>
                <table class="nav-justified">
                </table>
            </h3>
                       <h3>&nbsp;<table class="nav-justified">
                <tr>
                    <td class="modal-sm" style="width: 295px; ">Geometry Information</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="modal-sm" style="width: 295px; font-weight: bold;">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="modal-sm" style="width: 295px">Type</td>
                    <td>
                        <asp:Label ID="LabelGeometryType" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="modal-sm" style="width: 295px">Major Diamater</td>
                    <td>
                        <asp:Label ID="LabelMajorDiamater" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="modal-sm" style="width: 295px">Minor Diameter</td>
                    <td>
                        <asp:Label ID="LabelMinorDiameter" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="modal-sm" style="width: 295px">Thickness</td>
                    <td>
                        <asp:Label ID="LabelThickness" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="modal-sm" style="width: 295px">Wedge</td>
                    <td>
                        <asp:Label ID="LabelWedge" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="modal-sm" style="width: 295px">Chamfer Width</td>
                    <td>
                        <asp:Label ID="LabelChamferWidth" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="modal-sm" style="width: 295px">Side Length</td>
                    <td>
                        <asp:Label ID="LabelSideLength" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="modal-sm" style="width: 295px">Width</td>
                    <td>
                        <asp:Label ID="LabelWidth" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="modal-sm" style="width: 295px">Length</td>
                    <td>
                        <asp:Label ID="LabelLength" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">File</td>
                    <td class="auto-style4">
                        <asp:HyperLink ID="HyperLinkGFile" runat="server">Check</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="modal-sm" style="width: 295px">Dimension Accuracy</td>
                    <td>
                        <asp:Label ID="LabelDimensionAccuracy" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="modal-sm" style="width: 295px">Number of Sides</td>
                    <td>
                        <asp:Label ID="LabelNumberSides" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                </table>
                <table class="nav-justified">
                </table>
                <table class="nav-justified">
                </table>
            </h3>
        </div>
    </form>
</body>
</html>
