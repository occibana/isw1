<%@ Page Title="" Language="C#" MasterPageFile="~/Vew/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/index.aspx.cs" Inherits="Vew_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            text-align: center;
        }
        .auto-style17 {
            height: 23px;
            text-align: center;
        }
        .auto-style18 {
            width: 80%;
            margin-left: auto;
            margin-right: auto;
            height: 556px;
            background: #E60004;
            color: #ffffff;
            font-weight:600;
        }
        .auto-style20 {
            width: 100%;
            border: 1px #0056FF;
            height: 379px;
        }
        .auto-style21 {
            height: 296px;
            width: 85%;
            margin-left: auto;
            background: #0040BD;
            margin-right: auto;
           
        }
        .auto-style23 {
            width: 85%;
            background: #0056FF;
            margin-right: auto;
            margin-left:auto;
            height: 154px;
        }
        .auto-style24 {
            width: 90%;
            margin-right: auto;
            margin-left:auto;
        }
        .auto-style25 {
            height: 347px;
            width: 80%;
            text-align: center;
            margin-left: auto;
            margin-right: auto;
            background: #0040BD;
        }
        .auto-style26 {
            width: 90%;
            height: 25px;
        }
        .auto-style27 {
            width: 85%;
            height: 271px;
            margin-top: 10px;
            margin-right: auto;
            margin-left: auto;
            background: #0056FF;
        }
        .auto-style28 {
            height: 310px;
        }
        .auto-style29 {
            width: 100%;
            height: 100%;
            color: #ffffff;
            font-weight:600;
        }
        .auto-style30 {
            width: 246px;
        }
        .auto-style31 {
            width: 209px;
        }
        .auto-style32 {
            width: 33%;
            height: 57px;
        }
        .auto-style33 {
            width: 33%;
            height: 57px;
        }
        .auto-style34 {
            width: 33%;
            height: 57px;
        }
        .auto-style35 {
            width: 100%;
        }
        .auto-style36 {
            width: 781px;
            margin-left: 94px;
            background:  #0040BD;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style20">
        <tr>
            <td class="auto-style28">
                <div class="auto-style25">
                    <br />
                    <input id="Text1" class="auto-style26" type="text" /><br />
                    <div class="auto-style27">
                        <table class="auto-style29">
                            <tr>
                                <td class="auto-style32">
                                    <h6>$ PRECIOS</h6>
                                    <table class="auto-style35">
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="TextBox1" runat="server" Width="90%"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox2" runat="server" Width="90%"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="auto-style33">
                                    <h6>RANGO DE FECHAS</h6>
                                    <table class="auto-style35">
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="TextBox3" runat="server" Width="90%"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox4" runat="server" Width="90%"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="auto-style34">
                                    <h6>ZONAS</h6>
                                    <p>
                                        <asp:DropDownList ID="DropDownList1" runat="server" Height="17px" Width="90%">
                                        </asp:DropDownList>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style30">
                                    <h6>PERSONAS MAXIMAS POR HABITACIÓN</h6>
                                    <p>
                                        <asp:TextBox ID="TextBox5" runat="server" Width="117px"></asp:TextBox>
                                    </p>
                                </td>
                                <td class="auto-style31">
                                    <h6>FILTRAR POR CALIFICACIÓN</h6>
                                </td>
                                <td>
                                    <h6>MUNICIPIOS</h6>
                                    <p>
                                        <asp:DropDownList ID="DropDownList2" runat="server" Height="17px" Width="90%">
                                        </asp:DropDownList>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:Button ID="Button4" runat="server" Height="27px" Text="FILTRAR" Width="113px" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
                <br />
                <h2>Hotelels a su gusto con Occibana</h2>
                <br />
                <div class="auto-style36">
                    <asp:Repeater ID="Repeater1" runat="server">
                    </asp:Repeater>
                </div>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">
                <br />
                <h2>SOBRE NOSOTROS<br />
                </h2>
                <br />
                <div class="auto-style18">
                    <br />
                    <asp:Image ID="Image2" runat="server" Height="120px" ImageUrl="~/Vew/img/fotoefectos.com_.jpg" Width="148px" />
                    <br />
                    <br />
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt congue ligula in rutrum. Morbi nec lacus condimentum, hendrerit mi eu, feugiat.<br />
                    <br />
                    <div class="auto-style21">
                        <br />
                            <table class="auto-style23">
                                <tr>
                                    <td>MISION<br />
                                        <br />
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt congue ligula in rutrum. Morbi nec lacus condimentum, hendrerit mi eu, feugiat</td>
                                    <td>VISION<br />
                                        <br />
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt congue ligula in rutrum. Morbi nec lacus condimentum, hendrerit mi eu, feugiat</td>
                                </tr>
                            </table>
                        <div class="auto-style24">
                            <br />
                            LEMA<br />
                            <br />
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt congue ligula in rutrum. Morbi nec lacus condimentum, hendrerit mi eu, feugiat.</div>
                        <br />
                        <br />
                        <br />
                    </div>
                </div>
            </td>
        </tr>
    </table>

</asp:Content>

