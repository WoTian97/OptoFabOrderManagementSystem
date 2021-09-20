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
     <h3 style="font-size: xx-large">&nbsp;&nbsp;&nbsp;Coating</h3>
        <div>
            <h3>&nbsp;<table class="nav-justified">
                <tr>
                    <td class="modal-sm" style="width: 296px; height: 27px;">Coating Method</td>
                    <td style="height: 27px">
                        None</td>
                </tr>
                <tr>
                    <td class="auto-style2">Coating Area Dimension</td>
                    <td class="auto-style3">
                        None</td>
                </tr>
                <tr>
                    <td class="auto-style2">Position</td>
                    <td class="auto-style3">
                        None</td>
                </tr>
                <tr>
                    <td class="auto-style2">Compensation Coating</td>
                    <td class="auto-style3">
                        None</td>
                </tr>
                <tr>
                    <td class="auto-style2">Protective Coating</td>
                    <td class="auto-style3">
                        None</td>
                </tr>
                <tr>
                    <td class="auto-style2">Deposition Process</td>
                    <td class="auto-style3">
                        None</td>
                </tr>
                </table>
            </h3>
        </div>
    <form id="form1" runat="server">
        <div>
        <p>
            <strong>Layers</strong></p>
        <table>
        <tr>
            <td style="line-height: 35px" class="auto-style6"><strong>ID</strong></td>
            <td style="line-height: 35px" class="auto-style5"><strong>Thickness Layer</strong></td>
            <td style="line-height: 35px" class="auto-style7"><strong>Thickness Tolerance</strong></td>
            <td style="line-height: 35px" class="auto-style8"><strong>Material</strong></td>
            <td style="line-height: 35px"><strong>Refractive Index</strong></td>
            <td style="line-height: 35px" class="auto-style4"><strong>Tolerance</strong></td>
            <td style="line-height: 35px" class="auto-style9"><strong>Wave Length</strong></td>

        </tr>
        <tr>
            <td style="line-height: 35px" class="auto-style6"><strong></strong></td>
            <td style="line-height: 35px" class="auto-style5"><strong></strong></td>
            <td style="line-height: 35px" class="auto-style7"><strong></strong></td>
            <td style="line-height: 35px" class="auto-style8"><strong></strong></td>
            <td style="line-height: 35px"><strong></strong></td>
            <td style="line-height: 35px" class="auto-style4"><strong></strong></td>
            <td style="line-height: 35px" class="auto-style9"><strong></strong></td>

        </tr>
        </table>

        </div>
    </form>
        <p>
            <strong>Specifications</strong></p>
        <table>
        <tr>
            <td style="line-height: 35px" class="auto-style6"><strong>ID</strong></td>
            <td style="line-height: 35px" class="auto-style5"><strong>Min WaveLength</strong></td>
            <td style="line-height: 35px" class="auto-style7"><strong>Max WaveLength</strong></td>
            <td style="line-height: 35px" class="auto-style8"><strong>Refle/Transm</strong></td>
            <td style="line-height: 35px"><strong>Min</strong></td>
            <td style="line-height: 35px" class="auto-style4"><strong>Max</strong></td>
            <td style="line-height: 35px" class="auto-style9"><strong>Polarisation</strong></td>
            <td style="line-height: 35px" class="auto-style9"><strong>aoi-min</strong></td>
            <td style="line-height: 35px" class="auto-style9"><strong>aoi-max</strong></td>
        </tr>

        <tr>
            <td style="line-height: 35px" class="auto-style6"><strong></strong></td>
            <td style="line-height: 35px" class="auto-style5"><strong></strong></td>
            <td style="line-height: 35px" class="auto-style7"><strong></strong></td>
            <td style="line-height: 35px" class="auto-style8"><strong></strong></td>
            <td style="line-height: 35px"><strong></strong></td>
            <td style="line-height: 35px" class="auto-style4"><strong></strong></td>
            <td style="line-height: 35px" class="auto-style9"><strong></strong></td>
            <td style="line-height: 35px" class="auto-style9"><strong></strong></td>
            <td style="line-height: 35px" class="auto-style9"><strong></strong></td>
        </tr>

        </table>

        </body>
</html>
