<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GreenOBagWeb.User.Login" MaintainScrollPositionOnPostback="true" MasterPageFile="~/Master/Site.Master" %>


<asp:Content ID="Index_Content" ContentPlaceHolderID="BodyContent" runat="server">
    <script src="../js/html5.js"></script>
<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen">
<script type="text/javascript" src="../js/menu.js"></script>
<link href="../css/Validate.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    function docht() {
        if (document.documentElement.clientHeight < document.documentElement.scrollHeight) {
            return document.documentElement.scrollHeight;
        } else {
            return document.documentElement.clientHeight;
        } 
    }
    function godisplay() {
        document.getElementById("aDispalyEMail").innerHTML = document.getElementById("BodyContent_txtMailId").value;
        document.getElementById("aDispalyEMail").innerText = document.getElementById("BodyContent_txtMailId").value;
        document.getElementById('html_pop').style.display = 'block';
        document.getElementById('pop_div').style.display = "block";
        document.getElementById('pop_div').style.height = docht() + "px";
 
    }
    function hide_div() {
        document.getElementById('pop_div').style.display = "none";
        document.getElementById('html_pop').style.display = 'none';
        document.getElementById("aDispalyEMail").innerHTML = "";
        document.getElementById("aDispalyEMail").innerText = "";
        document.getElementById("imgpwd").style.display = "none";
        document.getElementById("BodyContent_lnkpwd").style.display = "block";
        HideDiv();
    }
</script>
<script type="text/jscript">

    function trim(str) {
        return str.replace(/^\s+|\s+$/g, '');
    }

    function Validation() {
        if (trim(document.getElementById("BodyContent_txtMailId").value).length == 0) {
            HideDiv();
            document.getElementById("lblMailId").style.display = "block";
            document.getElementById("lblMailId").innerHTML = "<span>Please enter Email-Id</span>";           
            return false;
        }
        else if (!document.getElementById("BodyContent_txtMailId").value.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/)) {
            HideDiv();
            document.getElementById("lblMailId").style.display = "block";
            document.getElementById("lblMailId").innerHTML = "<span>Please enter valid E-mail Id</span>";           
            return false;
        }
        else if (trim(document.getElementById("BodyContent_txtpwd").value).length == 0) {
            HideDiv();
            document.getElementById("lblpwd").style.display = "block";
            document.getElementById("lblpwd").innerHTML = "<span>Please enter Password</span>";           
            return false;
        }
        else {
            HideDiv();
            document.getElementById("imgLogin").style.display = "block";
            document.getElementById("BodyContent_imgbtnLogin").style.display = "none";
            return true;
        }
    }

    function Clear() {

        document.getElementById("BodyContent_txtMailId").value = "";
        document.getElementById("BodyContent_txtpwd").value = "";
    }

    function HideDiv() {
        document.getElementById("BodyContent_lbllnkpwd").style.display = "none";
        document.getElementById("lblMailId").style.display = "none";
        document.getElementById("BodyContent_lblLogin").style.display = "none";
    }

    function validationmail() {

        if (trim(document.getElementById("BodyContent_txtMailId").value).length == 0) {
            HideDiv();
            document.getElementById("lblMailId").style.display = "block";
            document.getElementById("lblMailId").innerHTML = "<span>Please enter Email-Id</span>";
            return false;
        }
        else if (!document.getElementById("BodyContent_txtMailId").value.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/)) {

            HideDiv();
            document.getElementById("lblMailId").style.display = "block";
            document.getElementById("lblMailId").innerHTML = "<span>Please enter valid E-mail Id</span>";
            return false;
        }
        else {
            HideDiv();
            document.getElementById("aimgbtnLogin").style.display = "none";
            document.getElementById("imgpwd").style.display = "block";
            document.getElementById("BodyContent_lnkpwd").style.display = "none";
            return true;
        }
    }

</script>
    <section class="wrapper">
    	
        <article class="submenu">        	
            <ul class="breadcrumb">
            	<li><a href="index.html" title="Home">Home</a></li>
                <li>&gt;</li>
                <li><a href="#" title="GreenOBag ">GreenOBag </a></li>
                <li>&gt;</li>
                <li>Login </li>
            </ul>
        </article>
        <article class="userdetail">
        	<h2 id="Header_Txt" runat="server">Let's get started</h2>            
            <article class="userdetailin">
                    <article class="shipping-detail">
                        <aside class="userdetailin21-rt" style="padding-left:240px;">
                                <dl class="shipp">
                                    <dt>Enter your email address</dt>
                                    <dd class="input">
                                    <asp:TextBox runat="server" ID="txtMailId"></asp:TextBox>
                                   <div class="form_error" id="lblMailId" style="display:none;">
                                     <span>Please mention your  email id.</span>
                                     </div>
                                     </dd>
                                    <dt>Enter password</dt>
                                    <dd class="input">
                                     <asp:TextBox TextMode="Password" runat="server" ID="txtpwd"></asp:TextBox>
                                     <div class="form_error" id="lblpwd" style="display:none;">
                                     <span>Please mention your Password</span>
                                     </div>
                                    </dd>
                                    <dt>
                                    <asp:LinkButton ID="lnkpwd" Text="Forgot Password ?" runat="server" OnClick="lnkpwd_Click" OnClientClick="return validationmail();" ></asp:LinkButton>
                                  <%--  <a href="#" onClick="godisplay();">Forgot Password ?</a>--%>     
                                  <img id="imgpwd" width="20px" height="20px" style="display:none;float:right" src="../images/spin.gif" alt="" />
                                  <div class="form_error" runat="server" id="lbllnkpwd" style="display:none;">
                                    <span>you Emaild is incorrect</span>
                                    </div>                               
                                    </dt>
                                    <dd style="height:10px;"></dd>                                    
                                 </dl>
                                 <!-- html_pop starts here -->
                                    <div id="pop_div" style="display:none;"></div>
                                    <div id="html_pop" style="display:none">
                                    <div class="pop-up">
                                         <div class="forgotpop">                           
                                            <div class="close"><a href="javascript:hide_div();"><img src="../lightbox/close.gif" title="Close" /></a></div>
                                            <aside class="general">
                                                <small style="margin-bottom:70px;text-align:left;padding-top:0;margin-top:-20px;width:500px;">Forgot your password? No Worries.</small>
                                                <div class="clear"></div>
                                                <p>Please check your email<br /><span><a href="#" id="aDispalyEMail"></a></span></p>
                                                <%--<p>Please check your email and click the password reset link.</p>--%>
                                                <div class="clear"></div>
                                                <ul class="submit" style="padding-left:390px;padding-top:10px;">                                    	
                                                    <li><a href="javascript:hide_div();" title="OK"><img src="../lightbox/ok.png" alt=""></a></li>
                                                </ul>
                                            </aside>
                                        </div>
                                    </div>
                                    </div>
                                    <!-- html_pop ends here -->
                            </aside>                            
                            <ul class="btns1" style="padding:5px 0 30px 251px;">
                                <li><a href="#" title="Proceed">
                                <%--<img src="images/login.gif" alt="">--%>
                                <asp:ImageButton runat="server"  ID="imgbtnLogin" ImageUrl="../images/login.gif" onclick="imgbtnLogin_Click"  OnClientClick="return Validation();"/>
                                </a></li>
                                <div class="form_error" runat="server" id="lblLogin" style="display:none;">
                                <span>Invalid User Please try again</span>
                             </div>
                            </ul>
                                             
                    </article>      
           </article>                
           
        </article>
    </section>
   
<link href='http://fonts.googleapis.com/css?family=Bitter:400,700' rel='stylesheet' type='text/css' />
<script type="text/javascript">
    function changeChkBox(intId, strClassName, strOn, strOff) {
        if (document.getElementById(strClassName + intId).className == strOn) {
            document.getElementById(strClassName + intId).className = strOff;
        } else {
            document.getElementById(strClassName + intId).className = strOn;
        } 
    }
</script>
<script type='text/javascript' src='../js/jquery-1.7.2.min.js'></script>
<script type="text/javascript" src="../js/jquery.selectBox.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("SELECT")
.selectBox()
    });
</script>
<!--[if IE 8]>
<style type="text/css">
dl.shippform dd.inputshipp input{width:363px;float:left;border:0;background:none;color:#000;font:400 16px 'Bitter', serif;font-style:normal;height:31px;margin:17px 10px 0;}
ul.radio li span{float:left;padding:0 36px 0 10px;color:#000;font:400 16px 'Bitter', serif;font-style:normal;}
</style>
<![endif]-->
<script type="text/javascript">
    function archangeTab(t) {
        for (i = 1; i <= 2; i++) {
            if (t == "t" + i + "") {
                document.getElementById("tabss" + i + "").className = "tab_select";
                document.getElementById("ar" + i + "").style.display = 'block';
            }
            else {
                document.getElementById("tabss" + i + "").className = "tab_unselect";
                document.getElementById("ar" + i + "").style.display = 'none';
            } 
        } 
    }
</script>


</asp:Content>
