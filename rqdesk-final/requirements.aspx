<%@ Page Title="" Language="C#" MasterPageFile="~/rqdesk.Master" AutoEventWireup="true" CodeBehind="requirements.aspx.cs" Inherits="rqdesk_final.requirements" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    <div class="modal fade" id="modalRQ" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">New message</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form>
              <div class="form-group">
                <label for="recipient-name" class="col-form-label">Recipient:</label>
                <input type="text" class="form-control" id="recipient-name">
              </div>
              <div class="form-group">
                <label for="message-text" class="col-form-label">Message:</label>
                <textarea class="form-control" id="message-text"></textarea>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Send message</button>
          </div>
        </div>
      </div>
    </div>

    <asp:Button ID="Prueba" runat="server" Text="Prueba" OnClick="btnEditar_Click" />
    <asp:LinkButton ID="Prueba02" runat="server" OnClick='btnEditar_Click' CssClass='btn btn-outline-secondary btn-sm open-modal-edit' data-toggle='modal' type='button' data-target='#modalRQ'>LinkButton</asp:LinkButton>
    <asp:Button ID='Button1' Text='Editar' runat='server' OnClick='btnEditar_Click' class='btn btn-outline-secondary btn-sm open-modal-edit' data-toggle='modal' type='button' data-target='#modalRQ' />
    <asp:Button ID="Button2" Text="Open Web site" onclientclick="Navigate()" runat="server" onclick="btnEditar_Click" />
</asp:Content>
