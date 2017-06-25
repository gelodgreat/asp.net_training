<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Consolidated.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">

        <div class="container">
            <div class="jumbotron" style="background-color: #000000">
                <h1 style="color: #0094ff">Welcome to my Registration Page</h1>
            </div>
            <div class="row">
                <label>
                    Username: 
                </label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="alert-danger" ErrorMessage="Username is required." ControlToValidate="log_tb_username"></asp:RequiredFieldValidator>

                <asp:TextBox ID="log_tb_username" runat="server" CssClass="form-control" />
            </div>
            <div class="row">
                <label>Password:</label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="alert-danger" ErrorMessage="Password is required." ControlToValidate="log_tb_password"></asp:RequiredFieldValidator>
                <asp:TextBox ID="log_tb_password" runat="server" CssClass="form-control" />
            </div>

            <div class="row" style="margin-top: 20px">
                <asp:Button CssClass="btn btn-success" runat="server" ID="log_btn_login" Text="Login" OnClick="log_btn_login_Click" />
                <asp:Button CssClass="btn btn-success pull-right" runat="server" ID="log_btn_reg" Text="Register" OnClick="log_btn_reg_Click" CausesValidation="false" />
            </div>
        </div>






    </form>

</body>
</html>
