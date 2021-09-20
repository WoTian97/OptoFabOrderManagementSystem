<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Coating.aspx.cs" Inherits="OptoOrderManagement.Coating" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

  * {
    color: #000 !important;
    text-shadow: none !important;
    background: transparent !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
  }
        * {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
    .nav-justified {
  width: 100%;
}

        .auto-style2 {
            width: 296px;
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
        }
    </style>
</head>
<body>
     <h3 style="font-size: xx-large">&nbsp;&nbsp;&nbsp;<asp:Label ID="LabelCoating" runat="server" Text=""></asp:Label></h3>
        <div>
            <h3>&nbsp;<table class="nav-justified">
                <tr>
                    <td class="modal-sm" style="width: 296px; height: 27px;">Coating Method</td>
                    <td style="height: 27px">
                        <asp:Label ID="LabelCoatingMethod" runat="server" Text=""></asp:Label> 
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Coating Area Dimension</td>
                    <td class="auto-style3">
                        <asp:Label ID="LabelCoatingAreaDimension" runat="server" Text=""></asp:Label> 
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Position</td>
                    <td class="auto-style3">
                        <asp:Label ID="LabelPosition" runat="server" Text=""></asp:Label> 
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Compensation Coating</td>
                    <td class="auto-style3">
                        <asp:Label ID="LabelCompensationCoating" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Protective Coating</td>
                    <td class="auto-style3">
                        <asp:Label ID="LabelProtectiveCoating" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Deposition Process</td>
                    <td class="auto-style3">
                        <asp:Label ID="LabelDepositionProcess" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                </table>
            </h3>
        </div>
    <form id="form1" runat="server">
        <p>
            <strong>Layers</strong></p>
        <table>
            <asp:GridView ID="GridViewLayers" runat="server" BorderColor="Silver" HorizontalAlign="Center" cellspacing="15" CellPadding="15">
                <HeaderStyle Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" />
                <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <RowStyle Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:GridView>
        </table>
    
        <p>
            <strong>Specifications</strong></p>
        <table>
            <asp:GridView ID="GridViewSpecifications" runat="server" BorderColor="Silver" HorizontalAlign="Center" cellspacing="15" CellPadding="15">
                <HeaderStyle Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" />
                <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <RowStyle Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:GridView>
        </table>
    </form>
    </body>
</html>
