<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Side.aspx.cs" Inherits="OptoOrderManagement.Side" %>

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
    .nav-justified {
  width: 100%;
}
* {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
  *,
  *:before,
  *:after {
    color: #000 !important;
    text-shadow: none !important;
    background: transparent !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
  }
        .auto-style4 {
            width: 35px;
        }
        .auto-style5 {
            width: 154px;
        }
        .auto-style6 {
            width: 85px;
        }
        .auto-style7 {
            width: 123px;
        }
        .auto-style8 {
            width: 137px;
        }
        .auto-style9 {
            width: 24px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
     <h3 style="font-size: xx-large">&nbsp;&nbsp;&nbsp;<asp:Label ID="LabelSide" runat="server" Text=""></asp:Label></h3>
        <div>
            <h3>&nbsp;<table class="nav-justified">
                <tr>
                    <td class="modal-sm" style="width: 296px; height: 27px;">Description of Face</td>
                    <td style="height: 27px">
                        <asp:Label ID="LabelDescription" runat="server" Text=""></asp:Label> 
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Polygonal/Extruded</td>
                    <td class="auto-style3">
                        <asp:Label ID="LabelPolygonal" runat="server" Text=""></asp:Label> 
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Coatings</td>
                    <td class="auto-style3">
                        <div id="div_coatings" runat="server"></div>
                    </td>
                </tr>
                </table>
            </h3>
        </div>
        </div>
        <p>
            &nbsp;</p>
        <p>
            <strong>Surfaces</strong></p>
        <table>
        <div style="margin-left:auto; margin-right:auto;width:600px;">
            <asp:GridView ID="GridViewSurfaces" runat="server" BorderColor="Silver" HorizontalAlign="Center" cellspacing="15" CellPadding="15">
                <HeaderStyle Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" />
                <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <RowStyle Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:GridView>
        </div>
    </form>
    </body>
</html>
