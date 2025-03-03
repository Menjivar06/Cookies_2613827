<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Cookie_2613827.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:Label ID="Label1" runat="server" Text="Enter Product"></asp:Label>
            
        </div>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Category"></asp:Label>
            <asp:DropDownList ID="ddlCategory" runat="server" Height="22px" Width="143px">
                <asp:ListItem>Footwer-Women&#39;s</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Supplier"></asp:Label>
            <asp:DropDownList ID="ddlSupplier" runat="server" Height="17px" Width="131px">
                <asp:ListItem>Nike</asp:ListItem>
                <asp:ListItem>Adidas</asp:ListItem>
                <asp:ListItem>Gucci</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:Label ID="lblProduct" runat="server" Text="Product"></asp:Label>
            <asp:TextBox ID="txtProduct" runat="server" Width="165px">like Flare Women&#39;s Shoes</asp:TextBox>
        </p>
        <p>
            <asp:Label ID="txtDescription" runat="server" Text="Description"></asp:Label>
            <textarea id="TextArea1" cols="20" rows="2" runat="server"></textarea></p>
        <p>
            <asp:Label ID="lblImage" runat="server" Text="Image"></asp:Label>
            <asp:TextBox ID="txtImage" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label runat="server" Text="Price"></asp:Label>
            <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label runat="server" Text="Number in Stock"></asp:Label>
            <asp:TextBox ID="txtNumberInStock" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label runat="server" Text="Number on Order"></asp:Label>
            <asp:TextBox ID="txtNumberOnOrder" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label runat="server" Text="Recorder Level"></asp:Label>
            <asp:TextBox ID="txtRecorderLevel" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="btnConfirm" runat="server" OnClick="btnConfirm_Click" Text="Confirm" />
        </p>
    </form>
</body>
</html>
