<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SportsStore.Pages.DemoAjax.WebForm1" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../../Scripts/jquery-1.11.1.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#call_ajax").click(function () {
                $.ajax({
                    url: '/Pages/DemoAjax/WebForm1.aspx/GetProductById',
                    method: 'post',
                    contentType: 'application/json',
                    dataType: 'json',
                    data: '{id: 12}',
                    success: function (data) {
                        alert(data);
                    },
                    error: function (error) {
                        alert(error);
                    }
                });
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input type="button" id="call_ajax" value="Call ajax" />
        </div>
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel runat="server" ID="pn2">
                <ContentTemplate>
                    <asp:Button runat="server" ID="btn" Text="click me" OnClick="btn_Click" />
                </ContentTemplate>
            </asp:UpdatePanel>
                    
            <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:TextBox runat="server" ID="txt"></asp:TextBox>
                    <asp:Label runat="server" ID="lbl"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
             
        </div>
    </form>
</body>
</html>
