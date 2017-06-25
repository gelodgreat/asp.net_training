<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Consolidated.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="jumbotron" style="background-color: #000000;">
                <h1 style="color: #0094ff;">Register new user.</h1>
            </div>

            <div class="row">
                <label>
                    First Name: 
                </label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="alert-danger" ErrorMessage="First Name is required." ControlToValidate="reg_tb_fname"></asp:RequiredFieldValidator>
                <asp:TextBox ID="reg_tb_fname" runat="server" CssClass="form-control" />
            </div>
            <div class="row">
                <label>Last Name:</label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="alert-danger" ErrorMessage="Last name is required." ControlToValidate="reg_tb_lname"></asp:RequiredFieldValidator>
                <asp:TextBox ID="reg_tb_lname" runat="server" CssClass="form-control" />
            </div>
            <div class="row">
                <label>
                    Address: 
                </label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" CssClass="alert-danger" ErrorMessage="Address is required." ControlToValidate="reg_tb_address"></asp:RequiredFieldValidator>
                <asp:TextBox ID="reg_tb_address" runat="server" CssClass="form-control" />
            </div>
            <div class="row">
                <label>
                    Username: 
                </label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="alert-danger" ErrorMessage="Username is required." ControlToValidate="reg_tb_username"></asp:RequiredFieldValidator>
                <asp:TextBox ID="reg_tb_username" runat="server" CssClass="form-control" />
            </div>
            <div class="row">
                <label>Password:</label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="alert-danger" ErrorMessage="Password is required." ControlToValidate="reg_tb_password"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="reg_tb_repass" ControlToValidate="reg_tb_password" CssClass="alert-danger" ErrorMessage="Password does not match."></asp:CompareValidator>
                <asp:TextBox ID="reg_tb_password" runat="server" CssClass="form-control" TextMode="Password"/>
            </div>
            <div class="row">
                <label>Re-type Password:</label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass="alert-danger" ErrorMessage="Re-type Password is required." ControlToValidate="reg_tb_repass"></asp:RequiredFieldValidator>
                <asp:TextBox ID="reg_tb_repass" runat="server" CssClass="form-control" TextMode="Password"/>
            </div>
            <div class="row" style="margin-top: 20px">
                <asp:Button CssClass="btn btn-success" runat="server" ID="reg_btn_reg" Text="Register" OnClick="reg_btn_reg_Click"/>
            </div>

        </div>
    </form>
</body>
</html>
