<%@ Page Title="" Language="C#" MasterPageFile="~/Vew/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/Reserva.aspx.cs" Inherits="Vew_Reserva" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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

        .auto-style21 {
            height: 23px;
            text-align: center;
        }

        .auto-style22 {
            width: 80%;
            margin-left: auto;
            margin-right: auto;
        }

        .auto-style24 {
            text-align: center;
        }
        #fechas-style{
            background: #0040BD;
        }
        .auto-style27 {
            height: 42px;
            width: 214px;
            text-align: center;
        }

        .auto-style28 {
            width: 214px;
            text-align: center;
        }

        .datos-style {
            background: #E60004;
        }
        .auto-style29 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="auto-style16">
        <tr>
            <td>
                <div class="auto-style17">
                    <table class="auto-style16">
                        <tr>
                            <td class="auto-style21">
                                <h2>Bienvenido:
                                <asp:Label ID="L_Nombreusuario" runat="server"></asp:Label>
                                    <br />
                                    <br />
                                    Aquí podrá reservar una habitación </h2>
                                <h2>del hotel
                                    <asp:Label ID="L_NombreHotel" runat="server"></asp:Label>
                                </h2>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="auto-style22">
                                    <table class="auto-style16">
                                        <tr>
                                            <td>
                                                <table class="auto-style16">
                                                    <tr>
                                                        <td id="fechas-style" class="auto-style24">FECHA A RESERVAR<br />
                                                            <br />
                                                            <table class="auto-style16">
                                                                <tr>
                                                                    <td>FECHA LLEGADA</td>
                                                                    <td>FECHA SALIDA</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Calendar ID="C_FechaLlegada" runat="server"></asp:Calendar>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Calendar ID="C_FechaSalida" runat="server"></asp:Calendar>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                        <td class="auto-style24">
                                                            <br />
                                                            DISPONIBILIDAD<br />
                                                            <br />
                                                            <table class="auto-style16">
                                                                <tr>
                                                                    <td>NUMERO DE PERSONAS<br />
                                                                        <asp:TextBox ID="TB_NumPersonas" runat="server" TextMode="Number" ValidationGroup="disponibilidad"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="RFV_TB_Numpersonas" runat="server" ControlToValidate="TB_NumPersonas" ErrorMessage="*" ValidationGroup="disponibilidad"></asp:RequiredFieldValidator>
                                                                        <br />
                                                                        <asp:RangeValidator ID="RV_TB_Numpersona" runat="server" ControlToValidate="TB_NumPersonas" ErrorMessage="Debe ser mayor 0" MaximumValue="10" MinimumValue="1" Type="Integer" ValidationGroup="disponibilidad"></asp:RangeValidator>
                                                                        <br />
                                                                        <br />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <br />
                                                                        <asp:Button ID="B_BuscarDisponibilidad" runat="server" Height="26px" Text="BUSCAR DISPINIBILIDAD" Width="170px" OnClick="B_BuscarDisponibilidad_Click" ValidationGroup="disponibilidad" />
                                                                        <br />
                                                                        <br />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <br />
                                                                        Habitaciones disponibles según solicitud<br />
                                                                        <br />
                                                                        Número de habitaciones disponibles:&nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <asp:Label ID="L_Habitacionesdisponibles" runat="server"></asp:Label>
                                                                        <br />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="datos-style">
                                                    <table class="auto-style16">
                                                        <tr>
                                                            <td class="auto-style24">
                                                                <asp:Label ID="L_MensajeestadoSession" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <table class="auto-style16">
                                                                    <tr>
                                                                        <td class="auto-style27">
                                                                            <br />
                                                                            NOMBRE<br />
                                                                            <asp:TextBox ID="TB_Nombre" runat="server"></asp:TextBox>
                                                                            <br />
                                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TB_Nombre" ErrorMessage="caracteres no validos" ValidationExpression="[A-Za-z ]+" ValidationGroup="confirmar"></asp:RegularExpressionValidator>
                                                                            <br />
                                                                            <br />
                                                                        </td>
                                                                        <td class="auto-style27">CORREO<br />
                                                                            <asp:TextBox ID="TB_Correo" runat="server" AutoCompleteType="Email" TextMode="Email"></asp:TextBox>
                                                                            <br />
                                                                            <br />
                                                                        </td>
                                                                        <td class="auto-style24" rowspan="2">
                                                                            <asp:Button ID="B_ConfirmarReserva" runat="server" Height="26px" Text="CONFIRMAR RESERVA" Width="165px" OnClick="B_ConfirmarReserva_Click" ValidationGroup="confirmar" />
                                                                            <br />
                                                                            <br />
                                                                            <asp:Button ID="B_Volver" runat="server" OnClick="B_Volver_Click" Text="VOLVER" />
                                                                            <br />
                                                                            <br />
                                                                            <div class="auto-style29">
                                                                                <asp:CheckBoxList ID="CHBL_Mediodepago" runat="server">
                                                                                    <asp:ListItem>EFECTIVO</asp:ListItem>
                                                                                    <asp:ListItem>TARJETA</asp:ListItem>
                                                                                </asp:CheckBoxList>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="auto-style28">
                                                                            <br />
                                                                            APELLIDO<br />
                                                                            <asp:TextBox ID="TB_Apellido" runat="server"></asp:TextBox>
                                                                            <br />
                                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TB_Apellido" ErrorMessage="caracteres no validos" ValidationExpression="[A-Za-z ]+" ValidationGroup="confirmar"></asp:RegularExpressionValidator>
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                        </td>
                                                                        <td class="auto-style28">
                                                                            <br />
                                                                            CONFIRMAR CORREO<br />
                                                                            <asp:TextBox ID="TB_CCorreo" runat="server" AutoCompleteType="Email" TextMode="Email"></asp:TextBox>
                                                                            <br />
                                                                            <br />
                                                                            <asp:CompareValidator ID="CV_Correos" runat="server" ControlToCompare="TB_Correo" ControlToValidate="TB_CCorreo" ErrorMessage="Los correos deben ser identicos"></asp:CompareValidator>
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
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

