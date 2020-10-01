<%@ Page Title="" Language="C#" MasterPageFile="~/Vew/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/AgregarServicioHotel.aspx.cs" Inherits="Vew_AgregarServicioHotel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            width: 100%;
        }
        .auto-style17 {
            width: 85%;
            background: #0056FF;
            margin-left: auto;
            margin-right: auto;
            color: #ffffff;
            text-align: center;
        }
        .auto-style18 {
            text-align: center;
        }
        .auto-style19 {
            width: 70%;
            margin-left: auto;
            margin-right: auto;
            background: #E60004;
            height: 183px;
        }
        .auto-style20 {
            width: 100%;
            height: 668px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style16">
        <tr>
            <td>
                <div class="auto-style17">
                    <table class="auto-style20">
                        <tr>
                            <td class="auto-style18">
                                <h1>AÑADIR HOTEL</h1>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table class="auto-style16">
                                    <tr>
                                        <td>NOMBRE DEL HOTEL:</td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        </td>
                                        <td>AÑADIR NUMERO DE HABITACIONES</td>
                                        <td>
                                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>PRECIO POR NOCHE:</td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        </td>
                                        <td>AÑADIR NUMERO DE PERSONAS POR HABITACIÓN:</td>
                                        <td>
                                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>MUNICIPIO:</td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                            </asp:DropDownList>
                                        </td>
                                        <td>AÑADIR NUMERO DE BAÑOS POR HABITACIÓN:</td>
                                        <td>
                                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>ZONA:</td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList2" runat="server">
                                            </asp:DropDownList>
                                        </td>
                                        <td rowspan="3" colspan="2">CONDICIONES DE BIOSEGURIDAD DEL HOTEL:<br />
                                            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                                            </asp:CheckBoxList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>IMAGEN PRINCIPAL:</td>
                                        <td class="auto-style18">
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
                                            <br />
                                            <br />
                                            <asp:Button ID="Button4" runat="server" Text="Button" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>IMAGENES ADICIONALES:</td>
                                        <td class="auto-style18">
                                            <asp:FileUpload ID="FileUpload2" runat="server" />
                                            <br />
                                            <br />
                                            <asp:Button ID="Button5" runat="server" Text="Button" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="auto-style18">CHECK IN:</td>
                                        <td>
                                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="auto-style18">CHECK OUT:</td>
                                        <td>
                                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="auto-style19">
                                    <table class="auto-style16">
                                        <tr>
                                            <td>DESCRIPCIÓN (Escriba un apartado para describir generalidades del hotel):</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style18">
                                                <asp:TextBox ID="TextBox8" runat="server" Height="49px" Width="503px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>CONDICIONES (Escriba un apartado para los condiciones del hotel):</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style18">
                                                <asp:TextBox ID="TextBox9" runat="server" Height="49px" Width="496px"></asp:TextBox>
                                                <br />
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <asp:Button ID="Button1" runat="server" Text="VOLVER AL PERFIL" OnClick="Button1_Click" />
                    <br />
                    <br />
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

