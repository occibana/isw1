<%@ Page Title="" Language="C#" MasterPageFile="~/Vew/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/Recuperarcontrasena.aspx.cs" Inherits="Vew_Recuperarcontrasena" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            width: 100%;
            height: 303px;
        }
        .auto-style17 {
            width: 85%;
            margin-left: auto;
            margin-right: auto;
            color: #ffffff;
        }
        .auto-style18 {
            width: 100%;
            background: #0056FF;
        }
        .auto-style19 {
            text-align: center;
        }
        .auto-style20 {
            text-align: center;
            height: 80px;
        }
        .auto-style21 {
            text-align: center;
            width: 80%;
            margin-top: 15px;
            margin-left: auto;
            margin-right: auto;
            height: 80px;
            background: #0040BD;
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
                            <td>
                                <table class="auto-style21">
                                    <tr>
                                        <td class="auto-style19">
                                            <br />
                                            INGRESE SU CORREO ELECRÓNICO<br />
                                            <br />
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                            <br />
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style19">
                                            <br />
                                            INGRESE SU USUARIO<br />
                                            <br />
                                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                            <br />
                                            <br />
                                        </td>
                                    </tr>
                                    <asp:Label ID="L_Reccontra" runat="server"></asp:Label>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                                <table class="auto-style18">
                                    <tr>
                                        <td class="auto-style20">
                                            <br />
                                            ULTIMA CONTRASEÑA<br />
                                            <br />
                                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                            <br />
                                            <br />
                                        </td>
                                        <td class="auto-style20">
                                            <br />
                                            NUEVA CONTRASEÑA<br />
                                            <br />
                                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                            <br />
                                            <br />
                                        </td>
                                    </tr>
                                </table>
                                <div class="auto-style19">
                                    <br />
                                    <br />
                                    <asp:Button ID="Button4" runat="server" Text="ENVIAR" Width="140px" OnClick="Button4_Click" />
                                    <br />
                                    <br />
                                    <asp:Button ID="Button5" runat="server" Text="VOLVER AL PERFIL" Width="140px" OnClick="Button5_Click" />
                                    <br />
                                    <br />
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

