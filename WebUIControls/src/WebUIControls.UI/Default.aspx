<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebUIControls.UI._Default" %>

<%@ Register Assembly="Microsoft.Web.UI.WebControls" Namespace="Microsoft.Web.UI.WebControls"
    TagPrefix="iewc" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <iewc:TabStrip ID="TabStrip1" runat="server" TabDefaultStyle="background-color:#000000;font-family:verdana;font-weight:bold;font-size:8pt;color:#ffffff;width:79;height:21;text-align:center"
            TabHoverStyle="background-color:#777777" TabSelectedStyle="background-color:#ffffff;color:#000000"
            TargetID="MultiPage1">
            <iewc:Tab Text="Tab 1" />
            <iewc:Tab Text="Tab 2" />
            <iewc:Tab Text="Tab 3" />
        </iewc:TabStrip>
        <iewc:MultiPage ID="MultiPage1" runat="server" SelectedIndex="0">
            <iewc:PageView ID="PageView1" runat="server">
                PageView 1
            </iewc:PageView>
            <iewc:PageView ID="PageView2" runat="server">
                PageView 2
            </iewc:PageView>
            <iewc:PageView ID="PageView3" runat="server">
                PageView 3
            </iewc:PageView>
        </iewc:MultiPage>
    </div>
    </form>
</body>
</html>
