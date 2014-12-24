<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="IPAC.UI.LogIn" %>

<!DOCTYPE html>
<html class="bg-black">
    <head>
        <meta charset="UTF-8">
        <title>Log in</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- bootstrap 3.0.2 -->
        <link href="Content/bootstrap.min.css" rel="stylesheet" />
        <!-- font Awesome -->
        <link href="Content/font-awesome.min.css" rel="stylesheet" />
        <!-- Theme style -->
        <link href="Content/Site.css" rel="stylesheet" />
    </head>
    <body class="bg-black">

        <div class="form-box" id="login-box">
            <div class="header">Sign In</div>
            <form action="../../index.html" method="post" runat="server">
                <div class="body bg-gray">
                    <div class="form-group">
                       <asp:TextBox ID="txtuserid" runat="server" CssClass="form-control" placeholder="User ID"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>
                    </div>          
                    <div class="form-group">
                        <input type="checkbox" name="remember_me"/> Remember me
                    </div>
                </div>
                <div class="footer">                                                               
                    <asp:Button runat="server" id="btnsubmit" Text="Sign me in" class="btn bg-olive btn-block" OnClick="btnsubmit_Click" ></asp:Button>  
                    
                    <p><a href="#">I forgot my password</a></p>
                    
                    
                    <asp:HyperLink CssClass="text-center" runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register a new membership</asp:HyperLink>
                </div>
            </form>

            <div class="margin text-center">
                <span>Sign in using social networks</span>
                <br/>
                <button class="btn bg-light-blue btn-circle"><i class="fa fa-facebook"></i></button>
                <button class="btn bg-aqua btn-circle"><i class="fa fa-twitter"></i></button>
                <button class="btn bg-red btn-circle"><i class="fa fa-google-plus"></i></button>

            </div>
        </div>


        <!-- jQuery 2.0.2 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="Scripts/bootstrap.min.js"></script>      

    </body>
</html>