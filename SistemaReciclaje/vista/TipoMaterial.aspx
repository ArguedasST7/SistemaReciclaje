<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TipoMaterial.aspx.cs" Inherits="SistemaReciclaje.vista.TipoMaterial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Tipo de Material</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h2>Tipos de Material</h2>

            <br />

            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>

            <br />
            <br />

            Nombre:
            <br />
            <asp:TextBox ID="txtnombre" runat="server"></asp:TextBox>

            <br />
            <br />

            Descripción:
            <br />
            <asp:TextBox ID="txtdescripcion" runat="server"></asp:TextBox>

            <br />
            <br />

            <asp:Button ID="bagregar" runat="server"
                Text="Agregar"
                OnClick="bagregar_Click" />

        </div>
    </form>
</body>
</html>