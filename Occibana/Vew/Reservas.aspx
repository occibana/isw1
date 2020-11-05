<%@ Page Title="" Language="C#" MasterPageFile="~/Vew/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/Reservas.aspx.cs" Inherits="Vew_Reservas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            width: 100%;
        }
        .auto-style17 {
            width: 710px;
            margin-left: 109px;
        }
        .auto-style18 {
            text-align: center;
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
                                <asp:GridView ID="GV_Reservas" runat="server">
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

