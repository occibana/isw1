﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Vew/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/Reactivarcuenta.aspx.cs" Inherits="Vew_Reactivarcuenta" %>

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
                                            INGRESE SU NUEVA CONTRASEÑA<br />
                                            <br />
                                            <asp:TextBox ID="TB_CorreoRecuperarcontrasena" runat="server"></asp:TextBox>
                                            <br />
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style19">
                                            <br />
                                            CONFIRME LA CONTRASEÑA<br />
                                            <br />
                                            <asp:TextBox ID="TB_UsuarioRecuperarcontrasena" runat="server"></asp:TextBox>
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
                                <div class="auto-style19">
                                    <asp:Label ID="L_Error_noregistro" runat="server"></asp:Label>
                                    <br />
                                    <asp:Button ID="Button4" runat="server" Text="ENVIAR" Width="140px" OnClick="Button4_Click" />
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

