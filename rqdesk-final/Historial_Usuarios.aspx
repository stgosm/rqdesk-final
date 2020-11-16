<%@ Page Title="" Language="C#" MasterPageFile="~/rqdesk.Master" AutoEventWireup="true" CodeBehind="Historial_Usuarios.aspx.cs" Inherits="rqdesk_final.Historial_Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

		<div class="container">
		<table id="exa" class="display" style="width:100%">
        <thead>
            <tr>
                <th>Usuario</th>
                <th>Contraseña</th>
                <th>Privilegio</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td id="usuario" runat="server"></td>
                <td id="contraseña" runat="server">System Architect</td>
                <td id="privilegio" runat="server">Edinburgh</td>
          
            </tr>
                </table>
			
			</div>
    
</asp:Content>
