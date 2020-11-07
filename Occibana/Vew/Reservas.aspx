<%@ Page Title="" Language="C#" MasterPageFile="~/Vew/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/Reservas.aspx.cs" Inherits="Vew_Reservas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            width: 100%;
        }
        .auto-style17 {
            width: 80%;
            margin-left: auto;
            margin-right: auto;
        }
        .auto-style18 {
            text-align: center;
            background: #0056FF;
            color: #ffffff;
        }
        #GV_Reservas{
            margin-right: auto;
            margin-left: auto;
            color: #ffffff;
            background: #808080;
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
                            <td class="auto-style18">RESERVAS REALIZADAS EN EL HOTEL:&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="L_Nombrehotel" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style18">
                                <br />
                                <asp:GridView ID="GV_Reservas" runat="server" AutoGenerateColumns="False" DataSourceID="ODS_Reservas">
                                    <Columns>
                                        <asp:BoundField DataField="Numpersona" HeaderText="Numpersona" SortExpression="Numpersona" />
                                        <asp:BoundField DataField="Fecha_llegada" HeaderText="Fecha_llegada" SortExpression="Fecha_llegada" />
                                        <asp:BoundField DataField="Fecha_salida" HeaderText="Fecha_salida" SortExpression="Fecha_salida" />
                                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                        <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                                        <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                                    </Columns>
                                </asp:GridView>
                                <asp:ObjectDataSource ID="ODS_Reservas" runat="server" SelectMethod="mostrarreservas" TypeName="DAOReserva">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="disponibilidadE" SessionField="tabla" Type="Object" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                                <br />
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

