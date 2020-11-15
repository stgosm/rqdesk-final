<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usuhis.aspx.cs" Inherits="rqdesk_final.usuhis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>RQ DESK	</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
		<link rel="stylesheet" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css" />
	<script src="https://cdn.datatables.net/responsive/2.2.6/js/dataTables.responsive.js"></script> 
    <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.6/css/responsive.dataTables.min.csS"/>
	 <link href="css/icons//css/all.css" rel="stylesheet"/> 
	<script>
	$(document).ready(function () {
		$('#exa').DataTable();
	});
</script>
	<link rel="stylesheet"" href="css/styles.css" />
		<style>
		
		body {
	background-color:#2C3240;
			
		}

	</style>
</head>
<body>
    <form id="form1" runat="server">
		<div class="container">
		<table id="exa" class="display responsive" style="width:100%" >
        <thead>
            <tr>
				<th>Usuario</th>
                <th>Usuario</th>
                <th>Contraseña</th>
                <th>Privilegio</th>
				<th>Privilegio</th>
				<th>Privilegio</th>


			
            </tr>
        </thead>
        <tbody>
		<asp:Repeater runat="server" ID="rptrqdesk" ItemType="rqdesk_final.usuario">
			<ItemTemplate>
				<td id="tdmagico"><asp:HiddenField ID="editarcamp" Value="<%# Item.id %>" runat="server" /></td>
				<td><%# Item.usuario1  %></td>
				<td><%# Item.contrasena  %></td>
				<td><%# Item.privilegio %></td>
				<td><asp:Button ID="btnEditar" runat="server" type="button" class="btn btn-lg btn-primary btn-block" value="<%# Item.id %>" Text="Editar" style="background-color:limegreen" OnClick="btnEditar_Click"></asp:Button></td>
				<td><i class="fas fa-trash-alt"></i></td>
				
			</ItemTemplate>

		</asp:Repeater>



			</tbody>
			</table>
			
			</div>
    </form>
</body>
</html>
