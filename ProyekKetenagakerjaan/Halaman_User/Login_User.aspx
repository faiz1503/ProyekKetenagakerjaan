<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login_User.aspx.vb" Inherits="ProyekKetenagakerjaan.Login_User" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login & Sign Up Form Concept</title>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans:400,300'>
    <link rel='stylesheet' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
    <link rel="stylesheet" href="../App_Themes/css/style.css">
</head>
<body>
    <div class="cotn_principal">
        <div class="cont_centrar">
            <div class="cont_login">
                <div class="cont_info_log_sign_up">
                    <div class="col_md_login">
                        <div class="cont_ba_opcitiy">
                            <h2>
                                LOGIN</h2>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            <button class="btn_login" onclick="cambiar_login()">
                                LOGIN</button>
                        </div>
                    </div>
                    <div class="col_md_sign_up">
                        <div class="cont_ba_opcitiy">
                            <h2>
                                SIGN UP</h2>
                            <p>
                                Lorem ipsum dolor sit amet, 
                                
                                consectetur adipiscing elit.</p>
                            <button class="btn_sign_up" onclick="cambiar_sign_up()">
                                SIGN UP</button>
                        </div>
                    </div>
                </div>
                <div class="cont_back_info">
                    <div class="cont_img_back_grey">
                        <img src="https://images.unsplash.com/42/U7Fc1sy5SCUDIu4tlJY3_NY_by_PhilippHenzler_philmotion.de.jpg?ixlib=rb-0.3.5&q=50&fm=jpg&crop=entropy&s=7686972873678f32efaf2cd79671673d"
                            alt="" />
                    </div>
                </div>
                <div class="cont_forms">
                    <div class="cont_img_back_">
                        <img src="https://images.unsplash.com/42/U7Fc1sy5SCUDIu4tlJY3_NY_by_PhilippHenzler_philmotion.de.jpg?ixlib=rb-0.3.5&q=50&fm=jpg&crop=entropy&s=7686972873678f32efaf2cd79671673d"
                            alt="" />
                    </div>
                    <form id="Form1" method="post" runat="server">
                    <asp:Label ID="lblSign" runat="server" Text=""></asp:Label><br />
                    <div class="cont_form_login">
                        <a href="#" onclick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
                        <h2>
                            LOGIN</h2>
                        <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                        <input id="txtPassword" type="password" class="form-control" placeholder="Password"
                            runat="server">
                        <asp:Button ID="btnLogin" runat="server" class="btn_login" runat="server" Text="LOGIN" />
                    </div>
                    <asp:Label ID="lblSignUp" runat="server" Text=""></asp:Label><br />
                    <div class="cont_form_sign_up">
                        <a href="#" onclick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
                        <h2>
                            SIGN UP</h2>
                        <asp:TextBox ID="txtEmailBaru" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                        <asp:TextBox ID="txtNamaBaru" runat="server" class="form-control" placeholder="Nama"></asp:TextBox>
                        <input id="txtPasswordBaru" type="password" class="form-control" placeholder="Password"
                            runat="server">
                        <asp:Button ID="btnSignUp" runat="server" class="btn_login" runat="server" Text="SIGN UP" />
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="../App_Themes/js/index.js"></script>
</body>
</html>
