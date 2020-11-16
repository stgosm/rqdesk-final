<%@ Page Title="" Language="C#" MasterPageFile="~/rqdesk.Master" AutoEventWireup="true" CodeBehind="Historial_Usuarios.aspx.cs" Inherits="rqdesk_final.Historial_Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

		<div class="container">
		<table id="exa" class="display" style="width:100%">
        <thead>
            <tr>
                <th>Usuario</th>
                
            </tr>
        </thead>
        <tbody>
			<asp:PlaceHolder ID="PlaceHolder1" runat="server">

			</asp:PlaceHolder>
        </tbody>
            
        </table>
			
			</div>
    
</asp:Content>
