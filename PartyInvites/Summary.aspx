<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Summary.aspx.cs" Inherits="PartyInvites.Summary" %>

<%@ Import Namespace="PartyInvites.Models" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Contents/PartyStyles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
    <h2>RSVP Summary</h2>
    <h3>People Who Will Attend</h3>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
            </tr>
        </thead>
        <tbody>
            <% var yesData = ResponseRepository.GetRepository().GetAllResponses()
                      .Where(r => r.WillAttend.HasValue && r.WillAttend.Value);
                foreach (var rsvp in yesData)
                {
                    string htmlString =
                    String.Format("<tr><td>{0}</td><td>{1}</td><td>{2}</ td > ",
                    rsvp.Name, rsvp.Email, rsvp.Phone);
                    Response.Write(htmlString);
                }
            %>
        </tbody>
    </table>
</body>
</html>
