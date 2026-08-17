<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reciclaje.aspx.cs" Inherits="SistemaReciclaje.vista.Reciclaje" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Reciclaje</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h2>Reciclaje</h2>

            <br />

            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>

            <br />
            <br />

            Usuario:
            <br />
            <asp:TextBox ID="txtusuarioId" runat="server"></asp:TextBox>

            <br />
            <br />

            Tipo de Material:
            <br />
            <asp:TextBox ID="txttipoMaterialId" runat="server"></asp:TextBox>

            <br />
            <br />

            Cantidad:
            <br />
            <asp:TextBox ID="txtcantidad" runat="server"></asp:TextBox>

            <br />
            <br />

            <asp:Button ID="bagregar" runat="server"
                Text="Agregar"
                OnClick="bagregar_Click" />

        </div>
    </form>
</body>
</html>