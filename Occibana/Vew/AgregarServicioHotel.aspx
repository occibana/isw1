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
            height: 834px;
        }
        .auto-style22 {
            text-align: center;
            width: 205px;
        }
        .auto-style23 {
            width: 100%;
            height: 431px;
            margin-top: 0px;
            background: #0040BD;
        }
        .auto-style24 {
            height: 468px;
        }
        .auto-style26 {
            font-size: small;
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
                                <p>Bienvenido:
                                    <asp:Label ID="L_SesionAnadirHotel" runat="server"></asp:Label>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style24">
                                <table class="auto-style23">
                                    <tr>
                                        <td>
                                            <br />
                                            NOMBRE DEL HOTEL:<br />
                                        </td>
                                        <td>
                                            <br />
                                            <asp:TextBox ID="TB_NombreHotel" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_NombreHotel" ErrorMessage="*" ValidationGroup="AnadirHotel"></asp:RequiredFieldValidator>
                                            <br />
                                        </td>
                                        <td colspan="2" rowspan="6">CONDICIONES DE BIOSEGURIDAD DEL HOTEL:<br />
                                            <span class="auto-style26">(Descripción sobre los articulos para evitar el COVID-19)</span><br />
                                            <br />
                                            <div class="auto-style18">
                                                <asp:TextBox ID="TB_descripcioncovid19" runat="server" Height="70px" Width="268px"></asp:TextBox>
                                                <br />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TB_descripcioncovid19" ErrorMessage="*" ValidationGroup="AnadirHotel"></asp:RequiredFieldValidator>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <br />
                                            PRECIO POR NOCHE:<br />
                                        </td>
                                        <td>
                                            <br />
                                            <asp:TextBox ID="TB_PrecioNoche" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TB_PrecioNoche" ErrorMessage="*" ValidationGroup="AnadirHotel"></asp:RequiredFieldValidator>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>MUNICIPIO:</td>
                                        <td>
                                            <asp:DropDownList ID="DDL_Municipio" runat="server" DataSourceID="ODS_Municipio" DataTextField="Nombre" DataValueField="Idmunicipio">
                                            </asp:DropDownList>
                                            <asp:ObjectDataSource ID="ODS_Municipio" runat="server" SelectMethod="municipio" TypeName="DAOhotel"></asp:ObjectDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>ZONA:</td>
                                        <td>
                                            <asp:DropDownList ID="DDL_Zona" runat="server" DataSourceID="ODS_Zona" DataTextField="Nombre" DataValueField="Idzona">
                                            </asp:DropDownList>
                                            <asp:ObjectDataSource ID="ODS_Zona" runat="server" SelectMethod="zona" TypeName="DAOhotel"></asp:ObjectDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>IMAGEN PRINCIPAL:</td>
                                        <td class="auto-style18">
                                            <asp:Image ID="I_AnadirHotelPrincipal" runat="server" Height="112px" ImageUrl="~/Vew/img/hotelvacio.png" Width="167px" />
                                            <br />
                                            <asp:FileUpload ID="FU_ImgPrincipal" runat="server" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="FU_ImgPrincipal" ErrorMessage="*" ValidationGroup="AnadirHotel"></asp:RequiredFieldValidator>
                                            <br />
                                            <asp:Label ID="L_CargarimagenAgregarHotel" runat="server"></asp:Label>
                                            <br />
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td rowspan="2">IMAGEN ADICIONAL:</td>
                                        <td class="auto-style18" rowspan="2">
                                            <asp:Image ID="I_AdicionalAnadirHotel" runat="server" Height="112px" ImageUrl="~/Vew/img/hotelvacio.png" Width="167px" />
                                            <br />
                                            <asp:FileUpload ID="FU_ImgAdicional" runat="server" />
                                            <br />
                                            <br />
                                            <asp:Label ID="L_CargarimagenAgregarHotel0" runat="server"></asp:Label>
                                            <br />
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22">CHECK IN:</td>
                                        <td>
                                            <asp:TextBox ID="TB_Checkin" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TB_Checkin" ErrorMessage="*" ValidationGroup="AnadirHotel"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="auto-style22">CHECK OUT:</td>
                                        <td>
                                            <asp:TextBox ID="TB_Checkout" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TB_Checkout" ErrorMessage="*" ValidationGroup="AnadirHotel"></asp:RequiredFieldValidator>
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
                                            <td>DESCRIPCIÓN (Escriba un apartado para describir generalidades del hotel):<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TB_Descripcion" ErrorMessage="*" ValidationGroup="AnadirHotel"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style18">
                                                <asp:TextBox ID="TB_Descripcion" runat="server" Height="49px" Width="503px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>CONDICIONES (Escriba un apartado para los condiciones del hotel):<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TB_Condiciones" ErrorMessage="*" ValidationGroup="AnadirHotel"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style18">
                                                <asp:TextBox ID="TB_Condiciones" runat="server" Height="49px" Width="496px"></asp:TextBox>
                                                <br />
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <asp:Button ID="B_CargarHotel" runat="server" Text="CARGAR HOTEL" Width="189px" Height="38px" ValidationGroup="AnadirHotel" OnClick="B_CargarHotel_Click" />
                                </div>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="B_Volver" runat="server" Text="VOLVER AL PERFIL" OnClick="Button1_Click" />
                    <br />
                    <br />
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

