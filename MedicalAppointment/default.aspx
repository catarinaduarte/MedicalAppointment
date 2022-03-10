<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ExConsultaMedico._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Consultar Medicos e Pacientes<br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" DataKeyNames="Id Medico" DataSourceID="SqlDataSource1" Width="668px">
                <Columns>
                    <asp:BoundField DataField="Id Medico" HeaderText="Id Medico" InsertVisible="False" ReadOnly="True" SortExpression="Id Medico" />
                    <asp:BoundField DataField="Nome Medico" HeaderText="Nome Medico" SortExpression="Nome Medico" />
                    <asp:BoundField DataField="Especialiade" HeaderText="Especialiade" SortExpression="Especialiade" />
                    <asp:BoundField DataField="Contacto" HeaderText="Contacto" SortExpression="Contacto" />
                    <asp:BoundField DataField="Anos" HeaderText="Anos" SortExpression="Anos" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Medico]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:DataList ID="DataList1" runat="server" CssClass="auto-style1" DataKeyField="Id" DataSourceID="SqlDataSource3" RepeatDirection="Horizontal" Width="779px">
                <ItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    Nome Paciente:
                    <asp:Label ID="Nome_PacienteLabel" runat="server" Text='<%# Eval("[Nome Paciente]") %>' />
                    <br />
                    ID Medico:
                    <asp:Label ID="ID_MedicoLabel" runat="server" Text='<%# Eval("[ID Medico]") %>' />
                    <br />
                    Contacto:
                    <asp:Label ID="ContactoLabel" runat="server" Text='<%# Eval("Contacto") %>' />
                    <br />
                    Local:
                    <asp:Label ID="LocalLabel" runat="server" Text='<%# Eval("Local") %>' />
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Pacientes] WHERE ([ID Medico] = @ID_Medico)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="ID_Medico" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
