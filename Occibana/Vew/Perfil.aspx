<%@ Page Title="" Language="C#" MasterPageFile="~/Vew/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/Perfil.aspx.cs" Inherits="Vew_Perfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            width: 85%;
            margin-left: auto;
            margin-right: auto;
            color: #ffffff;
        }
        .auto-style17 {
            width: 100%;
            height: 692px;
            margin-left: auto;
            margin-right: auto;
            background: #0056FF;
        }
        .auto-style18 {
            text-align: center;
        }
        .auto-style19 {
            text-align: center;
            width: 567px;
        }
        .auto-style20 {
            text-align: right;
        }
        .auto-style21 {
            width: 250px;
        }
        .auto-style22 {
            width: 90%;
            height: 500px;
            background: #0040BD;
            margin-left: auto;
            margin-right: auto;
        }
        .auto-style23 {
            width: 100%;
            height: 479px;
        }
        .auto-style24 {
            text-align: center;
            height: 225px;
        }
        .auto-style25 {
            font-size: xx-large;
        }
        .auto-style26 {
            width: 90%;
            margin-right: auto;
            margin-left: auto;
        }
        .auto-style27 {
            width: 180px;
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
                            <td class="auto-style19">
                                <h1 class="auto-style25">BIENVENIDO USUARIO</h1>
                            </td>
                            <td class="auto-style18">
                                <asp:Button ID="Button4" runat="server" Height="31px" Text="AGREGAR HOTEL" Width="136px" OnClick="Button4_Click" />
                            </td>
                        </tr>
                    </table>
                    <div>
                        <table class="auto-style16">
                            <tr>
                                <td class="auto-style21">
                                    <table class="auto-style16">
                                        <tr>
                                            <td>
                                                <asp:Image ID="fotoperfil" runat="server" Height="216px" Width="247px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style24">
                                                <asp:Label ID="L_Pcargaimagen" runat="server"></asp:Label>
                                                <br />
                                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                                <br />
                                                <br />
                                                <asp:Button ID="Button9" runat="server" Text="SUBIR FOTO" OnClick="Button9_Click" />
                                                <br />
                                                <br />
                                                SESIÓN:
                                                <br />
                                                <asp:Label ID="L_Pusuario" runat="server"></asp:Label>
                                                <br />
                                                <br />
                                                <br />
                                                ESTADO DE LA MEMBRESIA:<br />
                                                <asp:Label ID="L_Pestadomembresia" runat="server"></asp:Label>
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                                <asp:Button ID="Button6" runat="server" Height="31px" Text="ACTUALIZAR MEMBRESÍA" Width="197px" />
                                                <br />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    <div class="auto-style22">
                                        <table class="auto-style23">
                                            <tr>
                                                <td>
                                                    <table class="auto-style26">
                                                        <tr>
                                                            <td class="auto-style18" colspan="2">
                                                    <br />
                                                                <strong>DATOS PERSONALES</strong><br />
                                                                <br />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style27">
                                                                <br />
                                                    NOMBRE<br />
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="L_Pnombre" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style27">
                                                                <br />
                                                    CORREO<br />
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="L_Pcorreo" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style27">
                                                                <br />
                                                    TELÉFONO<br />
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="L_Ptelefono" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style27">
                                                                <br />
                                                    USUARIO<br />
                                                            </td>
                                                            <td>
                                                <asp:Label ID="L_Pusuariodatospersonales" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style18">
                                                    <asp:Button ID="Button7" runat="server" Height="31px" Text="EDITAR MIS DATOS" Width="197px" OnClick="Button7_Click"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style18">
                                                    <br />
                                                    <br />
                                                    <strong>SEGURIDAD</strong><br />
                                                    <br />
                                                    <asp:Button ID="Button8" runat="server" Height="33px" Text="CAMBIAR CONTRASEÑA" Width="197px" OnClick="Button8_Click" />
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style20" colspan="2">
                                    <asp:Button ID="Button5" runat="server" Height="31px" Text="CERRAR SESIÓN" Width="136px" OnClick="Button5_Click" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

