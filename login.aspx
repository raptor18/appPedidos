<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="appPedidos.login" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, minimal-ui">
<title>Pedidos</title>
<link rel="stylesheet" href="../vendor/swiper/swiper.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@300;400;500;600;800&display=swap" rel="stylesheet"> 
<link rel="manifest" href="_manifest.json" data-pwa-version="set_in_manifest_and_pwa_js">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover" />
<link rel="stylesheet" type="text/css" href="styles/bootstrap.css">
<link rel="stylesheet" type="text/css" href="styles/style.css">
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900|Roboto:300,300i,400,400i,500,500i,700,700i,900,900i&amp;display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="fonts/css/fontawesome-all.min.css">    
<link rel="manifest" href="_manifest.json" data-pwa-version="set_in_manifest_and_pwa_js">
<link rel="apple-touch-icon" sizes="180x180" href="app/icons/icon-192x192.png">

</head>
<body>

<div class="page page--login" data-page="login">

	<!-- HEADER -->
	<header class="header header--fixed">	
		<div class="header__inner">	
			<div class="header__icon"><a href="splash.html"><img src="../assets/images/icons/gray/arrow-back.svg" alt="" title=""/></a></div>	
                </div>
	</header>

        <div class="login">
		<div class="login__content">	
			<h2 class="login__title">Inicio de sesión</h2>
				<div class="login-form">
					<form id="LoginForm"  runat="server">
						<div class="login-form__row">

                            <asp:Login ID="Login1" runat="server" CssClass="login-form"  OnAuthenticate="ValidateUser">
                                <LayoutTemplate>
                                   
                                   <asp:Label ID="UserNameLabel" class="login-form__label" runat="server" AssociatedControlID="UserName">Nombre de usuario:</asp:Label>
                                               
                                   <asp:TextBox ID="UserName" runat="server" CssClass="login-form__input required"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="El nombre de usuario es obligatorio." ToolTip="El nombre de usuario es obligatorio." ValidationGroup="Login1" class="login-form__input required">*</asp:RequiredFieldValidator>
                                               
                                               
                                    <asp:Label ID="PasswordLabel" class="login-form__label" runat="server" AssociatedControlID="Password">Contraseña:</asp:Label>
                                               
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="login-form__input required"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="La contraseña es obligatoria." ToolTip="La contraseña es obligatoria." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                              
                                    <asp:CheckBox ID="RememberMe" runat="server" Text="Recordármelo la próxima vez." />
                                           
                                     <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                           
                                     <asp:Button ID="LoginButton" class="login-form__submit button button--blue button--full" runat="server" CommandName="Login" Text="Inicio de sesión" ValidationGroup="Login1" />
                                                     
                               
                                </LayoutTemplate>
                            </asp:Login>
                            </div>


				<%--			<label class="login-form__label">Usuario</label>
							<input type="text" name="Username" value="" id="txtUsuario" class="login-form__input required" runat="server" />
                         



						</div>
						<div class="login-form__row">
							<label class="login-form__label">Contraseña</label>
							<input type="password" name="password" value="" id="txtPassword" class="login-form__input required" runat="server" />
						</div>
						<div class="login-form__row">
							<input type="submit" name="submit"  class="login-form__submit button button--blue button--full" id="submit" value="INGRESAR" />
						</div>--%>



					</form>
					<div class="login-form__forgot-pass"><a href="forgot-password.html">Recuperar Contraseña</a></div>		
					<%--<div class="login-form__bottom">
						<p>Don't have an account?</p>
						<a href="signup.html" class="button button--green button--full">REGISTRARSE</a>
					</div>--%>
				</div>
		</div>
        </div>
			  


</div>
<!-- PAGE END -->
   <script src="regist_serviceWorker.js"></script>
<script src="../vendor/jquery/jquery-3.5.1.min.js"></script>
<script src="../vendor/jquery/jquery.validate.min.js" ></script>
<script src="../vendor/swiper/swiper.min.js"></script>
<script src="js/jquery.custom.js"></script>


</body>
</html>
