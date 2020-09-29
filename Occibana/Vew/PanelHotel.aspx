<%@ Page Title="" Language="C#" MasterPageFile="~/Vew/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/PanelHotel.aspx.cs" Inherits="Vew_PanelHotel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            width: 100%;
        }
        .auto-style17 {
            width: 85%;
            margin-right: auto;
            margin-right: auto;
            margin-top: 15px;
            margin-left: 97px;
            background: #0040BD;
            color: #ffffff;
        }
        .auto-style18 {
            width: 310px;
            text-align: center;
        }
        .auto-style19 {
            width: 196px;
        }
        .auto-style20 {
            text-align: center;
            background: #ffffff;
            color: black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style16">
        <tr>
            <td>
                <div class="auto-style17">
                    <table class="auto-style16">
                        <tr>
                            <td class="auto-style20" colspan="2">
                                <asp:Label ID="L_Panelhotelnombre" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style18">
                                <asp:Image ID="Image2" runat="server" Height="213px" Width="279px" ImageUrl="~/Vew/img/hotelvacio.png" />
                            </td>
                            <td>
                                <table class="auto-style16">
                                    <tr>
                                        <td class="auto-style19">MUNICIPIO:</td>
                                        <td>
                                <asp:Label ID="L_Panelhotelmunicipio" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style19">DIRECCIÓN</td>
                                        <td>
                                <asp:Label ID="L_Panelhoteldireccion" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style19">HABITACIONES DISPONIBLES:</td>
                                        <td>
                                <asp:Label ID="L_Panelhotelhabitaciones" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style19">PRECIO/NOCHE:</td>
                                        <td>
                                <asp:Label ID="L_Panelhotelprecio" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style19">CALIFICACIÓN:</td>
                                        <td>
                                <asp:Label ID="L_Panelhotelcalificacion" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

