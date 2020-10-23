<%@ Page Title="" Language="C#" MasterPageFile="~/Vew/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/Reserva.aspx.cs" Inherits="Vew_Reserva" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            width: 100%;

        }
        .auto-style17 {
            width: 80%;
            margin-left: auto;
            margin-right: auto;
            background: #00A6FF;
            color: #ffffff;
        }
        .auto-style18 {
            background:#0056FF;
            text-align: center;
        }
        .auto-style19 {
            width: 80%;
            margin-left: auto;
            margin-right: auto;
        }
        .auto-style20 {
            width: 80%;
            text-align: center;
            margin-left: auto;
            margin-right: auto;
            background: #ff0000;
        }
        .auto-style21 {
            height: 23px;
            text-align: center;
        }
        .auto-style22 {
            height: 23px;
            width: 232px;
            text-align: center;
        }
        .auto-style23 {
            width: 232px;
        }
        .auto-style24 {
            background: #0056FF;
        }
        .auto-style25 {
            text-align: center;
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
                            <td class="auto-style21" colspan="2">Bienvenido:
                                <asp:Label ID="L_Nombreusuario" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style22">
                                <br />
                                HABITACIONES DISPONIBLES<br />
                            </td>
                            <td class="auto-style21">
                                <br />
                                PRECIO TOTAL POR NOCHE: <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23">&nbsp;</td>
                            <td>
                                <table class="auto-style16" align="center">
                                    <tr>
                                        <td class="auto-style24">
                                            <div class="auto-style25">
                                                FECHA LLEGADA<br />
                                            </div>
                                            <asp:Calendar ID="Calendar_Fechallegada" runat="server"></asp:Calendar>
                                            <br />
                                        </td>
                                        <td class="auto-style18">FECHA SALIDA<asp:Calendar ID="Calendar_Fechasalida" runat="server"></asp:Calendar>
                                            <br />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <div class="auto-style19">
                                    <table class="auto-style16">
                                        <tr>
                                            <td class="auto-style18">
                                                <br />
                                                NUMERO DE PERSONAS:<br />
                                                <br />
                                            </td>
                                            <td class="auto-style18">
                                                <br />
                                                <asp:TextBox ID="TB_Numpersonas" runat="server"></asp:TextBox>
                                                <br />
                                                <br />
                                            </td>
                                            <td class="auto-style18">
                                                <br />
                                                <asp:Button ID="Button4" runat="server" Text="Confirmar mi reserva" OnClick="Button4_Click" />
                                                <br />
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3">
                                                <div class="auto-style20">
                                                    <br />
                                                    <asp:Label ID="L_Mensajesinsession" runat="server"></asp:Label>
                                                    <br />
                                                    <br />
                                                    <table class="auto-style16">
                                                        <tr>
                                                            <td>
                                                                <br />
                                                                NOMBRE<br />
                                                                <asp:TextBox ID="TB_nombre" runat="server"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <br />
                                                                APELLIDO<br />
                                                                <asp:TextBox ID="TB_apellido" runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <br />
                                                                CORREO ELECTRÓNICO<br />
                                                                <asp:TextBox ID="TB_correo" runat="server"></asp:TextBox>
                                                                <br />
                                                                <br />
                                                            </td>
                                                            <td>
                                                                <br />
                                                                CONFIRME SU CORREO<br />
                                                                <asp:TextBox ID="TB_confircorreo" runat="server"></asp:TextBox>
                                                                <br />
                                                                <br />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                                <asp:Label ID="L_Mensajefallo" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

