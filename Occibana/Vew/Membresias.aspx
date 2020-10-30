<%@ Page Title="" Language="C#" MasterPageFile="~/Vew/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/Membresias.aspx.cs" Inherits="Vew_Membresias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            width: 100%;
        }
        .auto-style17 {
            background: #0056FF;
            color: #ffffff;
            width: 85%;
            text-align: center;
            margin-left: auto;
            margin-right: auto;

        }
        .auto-style18 {
            background: #0040BD;
            color: #ffffff;
            width: 75%;
            margin-left: auto;
            margin-right: auto;
        }
        .auto-style20 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style16">
        <tr>
            <td>
                <div class="auto-style17">
                    <br />
                    <asp:Label ID="L_Actualizar_Comprar" runat="server" CssClass="auto-style20"></asp:Label>
                    <br />
                    <br />
                    <div class="auto-style18">
                        <table class="auto-style16">
                            <tr>
                                <td>
                                    <table class="auto-style16">
                                        <tr>
                                            <td>
                                                <br />
                                                Numero de tarjeta<br />
                                                <asp:TextBox ID="TB_Numerotarjeta" runat="server" TextMode="Number"></asp:TextBox>
                                                <br />
                                                <br />
                                            </td>
                                            <td>
                                                <br />
                                                Código de seguridád<br />
                                                <asp:TextBox ID="TB_Codigoseguridad" runat="server" TextMode="Number"></asp:TextBox>
                                                <br />
                                                <br />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="auto-style16">
                                        <tr>
                                            <td>
                                                <br />
                                                Nombre<br />
                                                (Propietario de la tarjeta)<br />
                                                <asp:TextBox ID="TB_Nombrepropietario" runat="server"></asp:TextBox>
                                                <br />
                                                <br />
                                            </td>
                                            <td>
                                                <br />
                                                Direccion de residencia<br />
                                                <asp:TextBox ID="TB_Direccionpropietario" runat="server"></asp:TextBox>
                                                <br />
                                            </td>
                                            <td>
                                                <br />
                                                Cedula de ciudadania<br />
                                                (Propietario de la tarjeta)<br />
                                                <asp:TextBox ID="TB_cedulapropietario" runat="server"></asp:TextBox>
                                                <br />
                                                <br />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <table class="auto-style16">
                                        <tr>
                                            <td colspan="2">
                                                <br />
                                                Verifique su usuario y contraseña<br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <br />
                                                Usuario<br />
                                                <asp:TextBox ID="TB_Usuario" runat="server"></asp:TextBox>
                                                <br />
                                                <br />
                                            </td>
                                            <td>
                                                <br />
                                                Contraseña<br />
                                                <asp:TextBox ID="TB_Contrasena" runat="server" TextMode="Password"></asp:TextBox>
                                                <br />
                                                <br />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <br />
                                    Tipos de tarjetas validas:<br />
&nbsp;<asp:Image ID="I_Tiposdetarjeta" runat="server" Height="48px" Width="102px" ImageUrl="~/Vew/img/visa_mastercard.jpg" />
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:Button ID="B_comprar" runat="server" Text="COMPRAR" OnClick="B_comprar_Click" />
                                    <br />
                                    <br />
                                    <asp:Button ID="B_Volver" runat="server" OnClick="B_Volver_Click" Text="VOLVER AL PERFIL" />
                                    <br />
                                    <br />
                                    <asp:Label ID="L_error" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <br />
                    <asp:Label ID="L_Mensajecompra" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="L_Costo" runat="server"></asp:Label>
&nbsp;Costo anual (vence el
                    <asp:Label ID="L_vencimiento" runat="server"></asp:Label>
&nbsp;)</div>
            </td>
        </tr>
    </table>
</asp:Content>

