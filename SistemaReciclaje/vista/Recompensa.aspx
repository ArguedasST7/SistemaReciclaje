<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recompensa.aspx.cs" Inherits="SistemaReciclaje.vista.Recompensa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Recompensas</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7f5;
            margin: 0;
            padding: 30px;
        }

        .contenedor {
            max-width: 900px;
            margin: auto;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.15);
        }

        h2 {
            color: #2e7d32;
            margin-top: 0;
        }

        .tabla {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 30px;
        }

        .tabla th {
            background-color: #2e7d32;
            color: white;
            padding: 10px;
            text-align: left;
        }

        .tabla td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }

        .tabla tr:nth-child(even) {
            background-color: #f1f8f2;
        }

        .campo {
            margin-bottom: 18px;
        }

        .campo label {
            display: block;
            font-weight: bold;
            margin-bottom: 6px;
            color: #333;
        }

        .campo input {
            width: 100%;
            max-width: 400px;
            padding: 9px;
            border: 1px solid #bbb;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .boton {
            background-color: #2e7d32;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 15px;
        }

        .boton:hover {
            background-color: #256628;
        }
    </style>

    <script type="text/javascript">
function confirmarCanje() {
    return confirm("¿Desea canjear esta recompensa?");
        }
    </script>

</head>

<body>
    <form id="form1" runat="server">
        <div class="contenedor">

            <h2>Recompensas</h2>

            <asp:GridView ID="GridView1" runat="server"
                CssClass="tabla">
            </asp:GridView>

            <div class="campo">
                <label>Usuario:</label>
                <asp:TextBox ID="txtusuarioId" runat="server"></asp:TextBox>
            </div>

            <div class="campo">
                <label>Recompensa:</label>
                <asp:TextBox ID="txtrecompensaId" runat="server"></asp:TextBox>
            </div>

            <asp:Button ID="bcanjear" runat="server"
                Text="Canjear"
                CssClass="boton"
                OnClick="bcanjear_Click"
                OnClientClick="return confirmarCanje();" />

        </div>
    </form>
</body>
</html>