<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recompensa.aspx.cs" Inherits="SistemaReciclaje.vista.Recompensa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Recompensas</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h2>Recompensas</h2>

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

            Recompensa:
            <br />
            <asp:TextBox ID="txtrecompensaId" runat="server"></asp:TextBox>

            <br />
            <br />

            <asp:Button ID="bcanjear" runat="server"
                Text="Canjear"
                OnClick="bcanjear_Click" />

        </div>
    </form>
</body>
</html>
        
