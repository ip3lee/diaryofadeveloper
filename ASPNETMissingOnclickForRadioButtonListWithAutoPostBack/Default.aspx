<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASPNETMissingOnclickForRadioButtonListWithAutoPostBack._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:RadioButtonList ID="WithValidation" runat="server" AutoPostBack="true">
            <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
            <asp:ListItem Text="No" Value="No"></asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="WithValidationMandatory" runat="server" ControlToValidate="WithValidation"
            ErrorMessage="* Required"></asp:RequiredFieldValidator>
        <asp:RadioButtonList ID="WithoutValidation" runat="server" AutoPostBack="true">
            <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
            <asp:ListItem Text="No" Value="No"></asp:ListItem>
        </asp:RadioButtonList>
    </div>
    </form>
</body>
</html>
