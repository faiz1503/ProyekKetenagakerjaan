<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="testing.aspx.vb" Inherits="ProyekKetenagakerjaan.testing" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
<Columns>
    <asp:TemplateField HeaderText = "Row Number" ItemStyle-Width="100">
        <ItemTemplate>
            <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
        </ItemTemplate>
    </asp:TemplateField>
    <asp:BoundField DataField="Name" HeaderText="Name" ItemStyle-Width="150" />
    <asp:BoundField DataField="Country" HeaderText="Country" ItemStyle-Width="150" />
</Columns>
</asp:GridView>

    </form>
</body>
</html>
