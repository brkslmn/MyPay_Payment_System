<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginUser.aspx.cs" Inherits="Proje.Web.LoginUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>

    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>

    <!-- Favicon -->
    <link rel="shortcut icon" href="Temp/grains-master/public/img/favicon.ico"/>

    <!-- Template -->
    <link rel="stylesheet" href="Temp/grains-master/public/graindashboard/css/graindashboard.css"/>
</head>
<body>
    
	<main class="main">

      <div class="content">

			<div class="container-fluid pb-5">

				<div class="row justify-content-md-center">
					<div class="card-wrapper col-12 col-md-4 mt-5">
						<div class="brand text-center mb-3">
							<a href="/"><img src="Temp/public/img/logo.PNG"/></a>
						</div>
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">Login</h4>
								<form runat="server">
									<div class="form-group">
										<label for="emailInput">E-Mail Address</label><input runat="server" id="emailInput" type="email" class="form-control" name="email" required="required"/>
									</div>


									<div class="form-group">
										<label for="passwordInput">Password</label><input  runat="server" id="passwordInput" type="password" class="form-control" name="password" required="required"/>
										<div class="text-right">
											<a href="password-reset.html" class="small">
												Forgot Your Password?
											</a>
										</div>
									</div>

									<div class="form-group no-margin">
										
										<asp:Button id="Login" runat="server" CssClass="btn btn-primary" OnClick="btnLogin_Click" Text="Login" />
									
									</div>
									<div class="text-center mt-3 small">
										Don't have an account? <a href="./Register.aspx">Sign Up</a>
									</div>
								</form>
							</div>
						</div>
						<footer class="footer mt-3">
							<div class="container-fluid">
								<div class="footer-content text-center small">
									<span class="text-muted">&copy; 2021 MyPay. All Rights Reserved.</span>
								</div>
							</div>
						</footer>
					</div>
				</div>
			</div>
		</div>
    </main>
	<script src="Temp/public/graindashboard/js/graindashboard.js"></script>
    <script src="Temp/public/graindashboard/js/graindashboard.vendor.js"></script>
</body>
</html>
