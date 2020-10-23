<%@ Page Title="" Language="C#" MasterPageFile="~/Vew/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/Mishoteles.aspx.cs" Inherits="Vew_Mishoteles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            width: 100%;
        }
        .auto-style17 {
            width: 707px;
            margin-left: 83px;
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
                                <asp:GridView ID="GridView1" runat="server" Height="105px" Width="263px" AutoGenerateColumns="False" DataSourceID="ODS_Mishoteles">
                                    <Columns>
                                        <asp:BoundField DataField="Precionoche" HeaderText="Precionoche" SortExpression="Precionoche" />
                                        <asp:BoundField DataField="Checkin" HeaderText="Checkin" SortExpression="Checkin" />
                                        <asp:BoundField DataField="Checkout" HeaderText="Checkout" SortExpression="Checkout" />
                                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                    </Columns>
                                </asp:GridView>
                                <div class="auto-style18">
                                <br />
                                </div>
                                <asp:ObjectDataSource ID="ODS_Mishoteles" runat="server" SelectMethod="obtenerhoteles" TypeName="DAOhotel">
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

