<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="SistemaReciclaje.vista.Usuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Usuarios</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h2>Usuarios</h2>

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

            Correo:
            <br />
            <asp:TextBox ID="txtcorreo" runat="server"></asp:TextBox>

            <br />
            <br />

            <asp:Button ID="bagregar" runat="server"
                Text="Agregar"
                OnClick="bagregar_Click" />

        </div>
    </form>
</body>
</html>
