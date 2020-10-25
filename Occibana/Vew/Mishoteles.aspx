<%@ Page Title="" Language="C#" MasterPageFile="~/Vew/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/Mishoteles.aspx.cs" Inherits="Vew_Mishoteles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            width: 100%;
        }
        .auto-style17 {
            width: 85%;
            margin-left: auto;
            margin-right: auto;
            color: #ffffff;
        }
        .auto-style18 {
            text-align: center;
            background: #0056FF;
        }
        .GridView1{
            margin-left: auto;
            margin-right: auto;
            background: #808080;
            border: 2px solid #ffffff;
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
                            <td class="auto-style18">
                                <h1>MIS HOTELES</h1>
                                <p>
                                    USUARIO:
                                    <asp:Label ID="L_Usuario" runat="server"></asp:Label>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style18">
                                <br />
                                <asp:GridView ID="GridView1" class="GridView1" runat="server" Height="105px" Width="263px" AutoGenerateColumns="False" DataSourceID="ODS_Mishoteles" DataKeyNames="Idhotel" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                    <Columns>
                                        <asp:BoundField DataField="Precionoche" HeaderText="Precionoche" SortExpression="Precionoche" />
                                        <asp:BoundField DataField="Checkin" HeaderText="Checkin" SortExpression="Checkin" />
                                        <asp:BoundField DataField="Checkout" HeaderText="Checkout" SortExpression="Checkout" />
                                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                        <asp:CommandField HeaderText="Eliminar Hotel" ShowDeleteButton="True" SortExpression="Idhotel" />
                                        <asp:HyperLinkField HeaderText="Añadir habitacion" NavigateUrl="~/Vew/Habitacion.aspx" Text="Añadir" />
                                        <asp:BoundField DataField="Idhotel" HeaderText="Idhotel" SortExpression="Idhotel" Visible="False" />
                                    </Columns>
                                </asp:GridView>
                                <div>
                                <br />
                                </div>
                                <asp:ObjectDataSource ID="ODS_Mishoteles" runat="server" SelectMethod="obtenerhoteles" TypeName="DAOhotel" DataObjectTypeName="Hotel" DeleteMethod="deleteHotel">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="asantibo" Name="usuario" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

