<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editar_Registros.aspx.cs" Inherits="rqdesk_final.Editar_Registros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
