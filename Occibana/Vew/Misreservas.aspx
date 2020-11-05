<%@ Page Title="" Language="C#" MasterPageFile="~/Vew/MasterPage.master" AutoEventWireup="true" CodeFile="Misreservas.aspx.cs" Inherits="Vew_Misreservas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            width: 100%;
        }
        .auto-style17 {
            width: 690px;
            margin-left: 106px;
        }
        .auto-style18 {
            text-align: center;
            background: #0056FF;
        }
        #Gridmisreservas{
            background: #0040BD;
        }
        .auto-style19 {
            text-align: center;
            color: azure;
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
                            <td class="auto-style18">RESERVAS REALIZADAS POR:
                                <asp:Label ID="L_Usuario" runat="server"></asp:Label>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td id="Gridmisreservas">
                                <div class="auto-style19">
                                <asp:GridView ID="GV_Mishoteles" runat="server" AutoGenerateColumns="False" DataSourceID="ODS_MisReservas" Width="591px">
                                    <Columns>
                                        <asp:BoundField DataField="Numpersona" HeaderText="Numpersona" SortExpression="Numpersona" />
                                        <asp:BoundField DataField="Fecha_llegada" HeaderText="Fecha_llegada" SortExpression="Fecha_llegada" />
                                        <asp:BoundField DataField="Fecha_salida" HeaderText="Fecha_salida" SortExpression="Fecha_salida" />
                                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                        <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                                        <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                                        <asp:BoundField DataField="Nombrehotel" HeaderText="Nombrehotel" SortExpression="Nombrehotel" />
                                    </Columns>
                                </asp:GridView>
                                </div>
                                <br />
                                <asp:ObjectDataSource ID="ODS_MisReservas" runat="server" SelectMethod="mostrarmisreservas" TypeName="DAOReserva">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="disponibilidadE" SessionField="usuario" Type="Object" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

