<%@ Page Title="Comentarius" Language="C#" MasterPageFile="~/Vew/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/ComentariosHotel.aspx.cs" Inherits="Vew_ComentariosHotel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            width: 85%;
            background: #808080;
            margin-left: auto;
            margin-right: auto;
        }
        .auto-style17 {
            width: 275px;
            text-align: left;
        }
        .auto-style18 {
            width: 30%;
            height: 23px;
        }
        .auto-style19 {
            width: 70%;
            height: 23px;
        }
        .auto-style20 {
            text-align: center;
        }
        .auto-style21 {
            text-align: left;
        }
        .auto-style23 {
            width: 70%;
            height: 23px;
            text-align: left;
        }
        .auto-style24 {
            height: 23px;
            text-align: left;
            border: 2px solid #000000;
            
        }
       .style-espacio{
           height: 23px;
           text-align: left;
        }
        .auto-style25 {
            height: 23px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style16">
        <tbody class="auto-style20">
        <tr>
            <td class="auto-style25" colspan="2">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:Label ID="L_NombreHotel" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style24" colspan="2">
                <asp:UpdatePanel ID="UP_Comentarios" runat="server">
                    <ContentTemplate>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ODS_Comentario" HorizontalAlign="Center" Width="90%">
                            <Columns>
                                <asp:BoundField DataField="Id_usuario" HeaderText="Id_usuario" SortExpression="Id_usuario" />
                                <asp:BoundField DataField="Nombre_usuario" HeaderText="Nombre_usuario" SortExpression="Nombre_usuario" />
                                <asp:BoundField DataField="Comentario" HeaderText="Comentario" SortExpression="Comentario" />
                            </Columns>
                        </asp:GridView>
                        <asp:ObjectDataSource ID="ODS_Comentario" runat="server" SelectMethod="obtenerComentarios" TypeName="DAOComentarios">
                            <SelectParameters>
                                <asp:SessionParameter Name="id" SessionField="visitarhotel" Type="Object" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="B_Comentar" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
            </td>
        </tr>
        
        <tr>
            <td class="style-espacio" colspan="2">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style18">
                <asp:Label ID="L_Usuario" runat="server" Font-Size="Large"></asp:Label>
            </td>
            <td class="auto-style23">
                <asp:TextBox ID="TB_Comentario" runat="server" MaxLength="250" TextMode="MultiLine" Width="85%" ValidationGroup="AgregarComentario" OnTextChanged="TB_Comentario_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_TextComentario" runat="server" ControlToValidate="TB_Comentario" ErrorMessage="*Llene el campo" ForeColor="Black" ValidationGroup="AgregarComentario"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style19">
                <asp:RegularExpressionValidator ID="REV_ExpresionComentario" runat="server" ErrorMessage="Caracteres no validos" ForeColor="Black" ValidationExpression="[A-Za-z0-9,.: ]+" ValidationGroup="AgregarComentario" ControlToValidate="TB_Comentario"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style21">
                <asp:Button ID="B_Comentar" runat="server" OnClick="B_Comentar_Click" Text="Comentar" ValidationGroup="AgregarComentario" />
                <asp:Label ID="L_Mensaje" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
                &nbsp;</td>
            <td class="auto-style21">
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

