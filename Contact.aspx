<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ContactForm.Contact" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
</head>
<body>

<h3>Contact Form</h3>

<div class="container">
  <form id="form1"  runat="server" >
    <label for="fname">Name</label>
    <asp:TextBox ID="txtname" runat="server" CssClass="form-control" placeholder="Your Name...."></asp:TextBox>

    <label for="lname">Email</label>
    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email...."></asp:TextBox>

    <label for="country">Subject</label>
    <asp:TextBox ID="txtSub" runat="server" CssClass="form-control" placeholder="Subject...."></asp:TextBox>

    <label for="subject">Message</label>
    <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" placeholder="Message...."></asp:TextBox>

    <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="SUBMIT" OnClick="btnSubmit_Click"  />
  </form>
</div>

</body>
</html>

