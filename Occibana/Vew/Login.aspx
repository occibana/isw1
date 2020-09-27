<%@ Page Title="" Language="C#" MasterPageFile="~/Vew/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/Login.aspx.cs" Inherits="Vew_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            width: 100%;
        }
        .auto-style17 {
            width: 90%;
            height: 514px;
            text-align: center;
            background: #0056FF;
            margin-top: 15px;
            margin-right: auto;
            margin-left: auto;
            color: #ffffff;
        }
        .auto-style18 {
            width: 90%;
            height: 424px;
            margin-left: auto;
            margin-right: auto;
            color: #ffffff;
        }
        .auto-style23 {
            width: 100%;
            height: 312px;
            background: #0040BD;
        }
        .auto-style24 {
            height: 283px;
            width: 60%;
            margin-top: 15px;
            margin-left: auto;
            margin-right: auto;
        }
        .auto-style25 {
            width: 100%;
            height: 90%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style16">
        <tr>
            <td>
                <div class="auto-style17">
                    <br />
                    INGRESO LOGIN<br />
                    <br />
                    <div class="auto-style18">
                        <br />
                        <div class="auto-style23">
                            <div class="auto-style24">
                                <br />
                                <table class="auto-style25">
                                    <tr>
                                        <td>Usuario<br />
                                            <asp:TextBox ID="TB_user" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_user" ErrorMessage="*" ValidationGroup="TB_LN"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Contraseña<br />
                                            <asp:TextBox ID="TB_contrasena" runat="server" TextMode="Password" ValidateRequestMode="Disabled"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TB_contrasena" ErrorMessage="*" ValidationGroup="TB_LN"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button ID="Button4" runat="server" Text="INGRESAR" OnClick="Button4_Click" ValidationGroup="TB_LN" />
                                            <br />
                                            <br />
                                            <asp:Label ID="L_msj" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <br />
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Vew/Recuperarcontrasena.aspx">OLVIDE MI CONTRASEÑA</asp:HyperLink>
                       <br />
                        <br />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Vew/Registro.aspx">NO ESTOY REGISTRADO Y QUIERO REGISTRARME</asp:HyperLink>
                        </div>
                </div>
            </td>
        </tr>
    </table>

</asp:Content>

