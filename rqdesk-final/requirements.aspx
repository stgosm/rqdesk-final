<%@ Page Title="" Language="C#" MasterPageFile="~/rqdesk.Master" AutoEventWireup="true" CodeBehind="requirements.aspx.cs" Inherits="rqdesk_final.requirements" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            <div class="modal fade" id="modalRQ" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                      <div>
                          <h5><asp:Label ID="lblName" runat="server" Text=""></asp:Label></h5>
                          <asp:Label ID="lblDate" runat="server" Text="" CssClass="text-monospace text-muted"></asp:Label>
                      </div>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                      <div class="form-group">
                        <label for="message-text" class="col-form-label">Descripción:</label>
                        <asp:TextBox id="txtDescription" class="form-control" mode="multiline" runat="server"></asp:TextBox>
                      </div>
                      <div class="form-group">
                        <label for="recipient-name" class="col-form-label">Área:</label>
                        <asp:TextBox ID="txtArea" CssClass="form-control" runat="server"></asp:TextBox>
                      </div>
                      <div class="form-group">
                        <label for="recipient-name" class="col-form-label">Estatus:</label>
                        <asp:TextBox ID="txtStatus" CssClass="form-control" runat="server"></asp:TextBox>
                      </div>
                  </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar RQ</button>
                    </div>
                </div>
              </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
