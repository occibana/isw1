<%@ Page Title="" Language="C#" MasterPageFile="~/Vew/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/ActualizarDatos.aspx.cs" Inherits="Vew_ActualizarDatos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            width: 100%;
        }
        .auto-style17 {
            width: 85%;
            margin-left: auto;
            margin-right: auto;
            
            background: #0040BD;
            
        }
        .auto-style18 {
            width: 80%;
            margin-left: auto;
            margin-right: auto;
            margin-top: 15px;
            margin-bottom: 15px;
            background: #0056FF;
            color: #ffffff;
        }
        .auto-style19 {
            text-align: center;
        }
        .auto-style20 {
            text-align: center;
            width: 350px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style16">
        <tr>
            <td>
                <div class="auto-style17">
                    <table class="auto-style18">
                        <tr>
                            <td class="auto-style19" colspan="2">
                                <br />
                                <asp:Label ID="L_Actusuario" runat="server"></asp:Label>
                                <br />
                                ACTUALICE AQUÍ SUS DOTOS PERSONALES<br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style20">
                                NOMBRE/S<br />
                                <asp:Label ID="L_Actnombre" runat="server"></asp:Label>
                                <br />
                                <asp:TextBox ID="TB_Actnombre" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_Actnombre" ErrorMessage="*" ValidationGroup="Actualizacionperfil"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                            </td>
                            <td class="auto-style19">
                                APELLIDO/S<br />
                                <asp:Label ID="L_Actapellido" runat="server"></asp:Label>
                                <br />
                                <asp:TextBox ID="TB_Actapellido" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TB_Actapellido" ErrorMessage="*" ValidationGroup="Actualizacionperfil"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style20">
                                CORREO ELECTRÓNICO<br />
                                <asp:Label ID="L_Actcorreo" runat="server"></asp:Label>
                                <br />
                                <asp:TextBox ID="TB_Actcorreo" runat="server" TextMode="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TB_Actcorreo" ErrorMessage="*" ValidationGroup="Actualizacionperfil"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                            </td>
                            <td class="auto-style19">
                                TELÉFONO<br />
                                <asp:Label ID="L_Acttelefono" runat="server"></asp:Label>
                                <br />
                                <asp:TextBox ID="TB_Acttelefono" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TB_Acttelefono" ErrorMessage="*" ValidationGroup="Actualizacionperfil"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style20">
                                USUARIO<br />
                                <asp:Label ID="L_Actusuario0" runat="server"></asp:Label>
                                <br />
                                <asp:TextBox ID="TB_Actusuario" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TB_Actusuario" ErrorMessage="*" ValidationGroup="Actualizacionperfil"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                            </td>
                            <td class="auto-style19">
                                <asp:Label ID="LB_Actfallo" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style20">
                                <br />
                                <asp:Button ID="Button4" runat="server" Text="CANCELAR" Height="33px" OnClick="Button4_Click" Width="113px" />
                                <br />
                                <br />
                            </td>
                            <td class="auto-style19">
                                <strong>
                                <asp:Button ID="Button5" runat="server" Text="ACTUALIZAR" Height="33px" Width="113px" OnClick="Button5_Click" ValidationGroup="Actualizacionperfil" />
                                </strong>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

