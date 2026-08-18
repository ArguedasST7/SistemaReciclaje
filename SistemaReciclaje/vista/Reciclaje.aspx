<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reciclaje.aspx.cs" Inherits="SistemaReciclaje.vista.Reciclaje" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Reciclaje</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7f5;
            margin: 0;
            padding: 30px;
        }

        .contenedor {
            max-width: 1000px;
            margin: auto;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.15);
        }

        h2, h3 {
            color: #2e7d32;
        }

        .tabla {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 25px;
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

        .estadisticas {
            background-color: #f1f8f2;
            padding: 18px;
            border-radius: 8px;
            margin-bottom: 25px;
        }

            .estadisticas p {
                margin: 8px 0;
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
        function confirmarReciclaje() {
            return confirm("¿Desea registrar este reciclaje?");
        }
    </script>
</head>

<body>
    <form id="form1" runat="server">
        <div class="contenedor">

            <h2>Reciclaje</h2>

            <asp:GridView ID="GridView1" runat="server"
                CssClass="tabla">
            </asp:GridView>

            <div class="estadisticas">
                <h3>Estadísticas de Reciclaje</h3>

                <p>
                    <strong>Total de registros:</strong>
                    <asp:Label ID="lblTotalRegistros" runat="server"></asp:Label>
                </p>

                <p>
                    <strong>Cantidad total reciclada:</strong>
                    <asp:Label ID="lblTotalCantidad" runat="server"></asp:Label>
                </p>

                <p>
                    <strong>Puntos generados:</strong>
                    <asp:Label ID="lblTotalPuntos" runat="server"></asp:Label>
                </p>
            </div>

            <div class="campo">
                <label>Usuario:</label>
                <asp:TextBox ID="txtusuarioId" runat="server"></asp:TextBox>
            </div>

            <div class="campo">
                <label>Tipo de Material:</label>
                <asp:TextBox ID="txttipoMaterialId" runat="server"></asp:TextBox>
            </div>

            <div class="campo">
                <label>Cantidad:</label>
                <asp:TextBox ID="txtcantidad" runat="server"></asp:TextBox>
            </div>

            <asp:Button ID="bagregar" runat="server"
                Text="Agregar"
                CssClass="boton"
                OnClick="bagregar_Click"
                OnClientClick="return confirmarReciclaje();" />
        </div>
    </form>
</body>
</html>
