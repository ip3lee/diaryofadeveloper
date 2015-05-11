<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ModalPopupExtendarWithPostback._Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .modalBackground
        {
            background-color: #CCCCFF;
            filter: alpha(opacity=40);
            opacity: 0.5;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="Button1"
        BackgroundCssClass="modalBackground" PopupControlID="Panel1">
    </asp:ModalPopupExtender>
    <div>
        <asp:Button ID="Button1" runat="server" Text="Popup" OnClick="Button1_Click"></asp:Button>
        <asp:Panel ID="Panel1" runat="server">
            <fieldset>
                <legend>Popup</legend>
                <asp:UpdatePanel ID="UpdatePanel1" runat="Server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="Popup"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"
                            ControlToValidate="TextBox1" Display="Dynamic" SetFocusOnError="true" ValidationGroup="Popup"></asp:RequiredFieldValidator>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem Text="1" Value="1"></asp:ListItem>
                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                            <asp:ListItem Text="4" Value="4"></asp:ListItem>
                            <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="DropDownList1" EventName="SelectedIndexChanged" />
                    </Triggers>
                </asp:UpdatePanel>
                <asp:Button ID="Button3" runat="server" Text="Save" OnClick="Button3_Click" ValidationGroup="Popup" />
                <asp:Button ID="Button2" runat="server" Text="Close" OnClick="Button2_Click" />
            </fieldset>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
