<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro_Usuarios.aspx.cs" Inherits="rqdesk_final.Registro_Usuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <title>RQ DESK	</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
<link rel="stylesheet"" href="css/styles.css" />
	<style>
		
		body {
			padding-top:180px;
			padding-bottom:180px;
			background-image:url("img/login.jpg");
			background-repeat:no-repeat;
			background-size:cover;
			
		}

	</style>
</head>
<body>
    <form id="form1" runat="server" class="form-signin text-center">
    <div>
    <div class="container">
			<p class="">
				   <span>Registro de Usuarios</span>
			</p>
	<div class="row form-group">
		<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
			 
    <asp:TextBox type="text" runat="server" class="form-control" ID="txtUsuarioRegistro" aria-describedby="emailHelp" placeholder="Usuario"/>

		</div>
	</div>
			<div class="row form-group">
		<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
		
    <asp:TextBox type="password" runat="server" class="form-control" ID="txtContraseñaRegistro" placeholder="Contraseña"/>
		</div>
	</div>
			<div class="row form-group">
		<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
		
    <select runat="server" class="form-control" id="SelectPriv" placeholder="Contraseña">
		<option value="admin">Administrador</option>
		<option value="estandar">Usuario Estandar</option>
		

		</select>
		</div>
	</div>
    </div>
		<div class="row form-group">
		<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
	
			 <asp:Button ID="btnRegistrar" runat="server" type="button" class="btn btn-lg btn-primary btn-block" Text="Registrar" style="background-color:limegreen" OnClick="btnRegistrar_Click" ></asp:Button>
			</div>
					</div>
    </div>
    </form>
</body>
</html>
