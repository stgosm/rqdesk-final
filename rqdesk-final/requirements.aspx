<%@ Page Title="" Language="C#" MasterPageFile="~/rqdesk.Master" AutoEventWireup="true" CodeBehind="requirements.aspx.cs" Inherits="rqdesk_final.requirements" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="true">
        <ContentTemplate>
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
            <div class="modal fade" id="newModalRQ" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                      <div>
                          <h5><asp:Label ID="Label1" runat="server" Text="Nuevo RQ"></asp:Label></h5>
                      </div>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                      <div class="form-group">
                        <label for="recipient-name" class="col-form-label">Nombre del RQ:</label>
                        <asp:TextBox ID="txtNewName" CssClass="form-control" runat="server"></asp:TextBox>
                      </div>
                      <div class="form-group">
                        <label for="message-text" class="col-form-label">Descripción:</label>
                        <asp:TextBox id="txtNewDescription" class="form-control" mode="multiline" runat="server"></asp:TextBox>
                      </div>
                      <div class="form-group">
                        <label for="recipient-name" class="col-form-label">Área:</label>
                        <asp:TextBox ID="txtNewArea" CssClass="form-control" runat="server"></asp:TextBox>
                      </div>
                      <div class="form-group">
                        <label for="recipient-name" class="col-form-label">Estatus:</label>
                        <asp:TextBox ID="txtNewStatus" CssClass="form-control" runat="server" Text="Pendiente" ReadOnly="true"  ></asp:TextBox>
                      </div>
                  </div>
                    <div class="modal-footer">
                        <asp:LinkButton ID="btnNewRq" runat="server" CssClass="btn btn-outline-info" OnClick="btnNewRq_Click">Agregar RQ</asp:LinkButton>
                        <!--<asp:Button ID="btnNewRequirement" runat="server" CssClass="btn btn-outline-info" Text="Agregar RQ" OnClick="btnNewRequirement_Click" />-->
                    </div>
                </div>
              </div>
            </div>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        </ContentTemplate>
        <Triggers>  
            <asp:AsyncPostBackTrigger   
                ControlID="btnNewRq" 
                EventName="Click" 
            /> 
        </Triggers> 
    </asp:UpdatePanel>
</asp:Content>
