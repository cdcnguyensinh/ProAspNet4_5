<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PartyInvites.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Contents/PartyStyles.css" rel="stylesheet" />
</head>
<body>
    <form id="rsvpform" runat="server">
        <div>
            <h1>New Year's Eve at Jacqui's!</h1>
            <p>We're going to have an exciting party. And you're invited!</p>
        </div>
        <div>
            <asp:ValidationSummary runat="server" ID="validationSummary" ShowModelStateErrors="true" />
        </div>
        <div>
            <label>Your name:</label><input runat="server" type="text" id="name" /></div>
        <div>
            <label>Your email:</label><input runat="server" type="text" id="email" /></div>
        <div>
            <label>Your phone:</label><input runat="server" type="text" id="phone" /></div>
        <div>
            <label>Will you attend?</label>
            <select runat="server" id="willattend">
                <option value="">Choose an Option</option>
                <option value="true">Yes</option>
                <option value="false">No</option>
            </select>
        </div>
        <div>
            <button type="submit">Submit RSVP</button>
            <asp:Button runat="server" ID="btnDemo" Text="Demo" />
            <asp:TextBox runat="server" ID="txtDemo"></asp:TextBox>
        </div>
    </form>
</body>
</html>
