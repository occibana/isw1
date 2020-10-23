﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Vew/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/index.aspx.cs" Inherits="Vew_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
            font-weight: 600;
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
            margin-left: auto;
            height: 154px;
        }

        .auto-style24 {
            width: 90%;
            margin-right: auto;
            margin-left: auto;
        }

        .auto-style25 {
            height: 366px;
            width: 80%;
            text-align: center;
            margin-left: auto;
            margin-right: auto;
            background: #0040BD;
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
            font-weight: 600;
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

        .auto-style35hoteles {
            width: 80%;
            margin-left: auto;
            margin-right: auto;
            margin-top: 15px;
            background: #E60004;
        }

        .auto-style36 {
            width: 80%;
            margin-left: auto;
            margin-right: auto;
            background: #0040BD;
        }

        .auto-style38 {
            width: 70%;
            height: 100px;
            margin-left: auto;
            margin-right: auto;
            background: #ffffff;
        }

        .auto-style39 {
            height: 42px;
        }

        .auto-style40 {
            width: 50%;
        }

        .auto-style41 {
            height: 80px;
        }

        .auto-style42 {
            width: 90%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="auto-style20">
        <tr>
            <td class="auto-style28">
                <div class="auto-style25">
                    <table class="auto-style35">
                        <tr>
                            <td class="auto-style42">
                                <asp:TextBox ID="TB_Busquedageneral" runat="server" Width="80%" Height="18px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="45px" ImageUrl="~/Vew/img/lupaicon.png" Width="49px" />
                            </td>
                        </tr>
                    </table>
                    <br />
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
                <h2>Hoteles a su gusto con Occibana</h2>
                <br />
                <div class="auto-style36">
                    <asp:ScriptManager ID="SM_Hoteles" runat="server">
                    </asp:ScriptManager>
                    <br />
                    <asp:UpdatePanel ID="UP_hoteles" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:DataList ID="DataList1" runat="server" DataSourceID="ODS_Hotelesindex" RepeatLayout="Flow" OnItemCommand="DataList1_ItemCommand">
                                <ItemTemplate>
                                    <table class="auto-style35hoteles">
                                        <tr>
                                            <td rowspan="2" class="auto-style40">
                                                <asp:ImageButton ID="IB_Hotelindex" runat="server" Height="230px" Width="100%" ImageUrl='<%# Eval("Imagen") %>' CommandArgument='<%# Eval("Idhotel") %>' />
                                            </td>
                                            <td class="auto-style39">Nombre del hotel:<asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style41">
                                                <div class="auto-style38">
                                                    &nbsp;<br />
                                                    Precionoche:
                                            <asp:Label ID="PrecionocheLabel" runat="server" Text='<%# Eval("Precionoche") %>' />
                                                    <br />
                                                    Municipio:
                                            <br />
                                                    <asp:Label ID="MunicipioLabel" runat="server" Text='<%# Eval("Municipio") %>' />
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                </ItemTemplate>
                            </asp:DataList>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="TB_Busquedageneral" EventName="TextChanged" />
                        </Triggers>

                    </asp:UpdatePanel>
                    <asp:ObjectDataSource ID="ODS_Hotelesindex" runat="server" SelectMethod="hotelesregistrados" TypeName="DAOhotel">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TB_Busquedageneral" DefaultValue="0" Name="consulta" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                    <br />
                </div>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">
                <br />
                <h2>SOBRE NOSOTROS           </h2>
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
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt congue ligula in rutrum. Morbi nec lacus condimentum, hendrerit mi eu, feugia.
                        </div>
                        <br />
                        <br />
                        <br />
                    </div>
                </div>
            </td>
        </tr>
    </table>

</asp:Content>

