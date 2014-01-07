<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="GreenOBagWeb.User.UserDetails1" MaintainScrollPositionOnPostback="true" MasterPageFile="~/Master/Site.Master" %>


<asp:Content ID="Index_Content" ContentPlaceHolderID="BodyContent" runat="server">
 <link href="../css/Validate.css" rel="stylesheet" type="text/css" />
<script src="../js/html5.js"></script>
<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen">
<script type="text/javascript">

    function trim(str) {
        return str.replace(/^\s+|\s+$/g, '');
    }
    function Newuservalidation() {
        if (trim(document.getElementById("BodyContent_txtUserMailId").value).length == 0) {
            hidediv1();
            document.getElementById("BodyContent_lblUserMailId").style.display = "block";
            document.getElementById("BodyContent_lblUserMailId").innerHTML = "<span>Please enter Email-Id</span>";
            return false;
        }
        else if (!document.getElementById("BodyContent_txtUserMailId").value.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/)) {
            hidediv1();
            document.getElementById("BodyContent_lblUserMailId").style.display = "block";
            document.getElementById("BodyContent_lblUserMailId").innerHTML = "<span>Please enter valid E-mail Id</span>";
            return false;
        }
        else if (trim(document.getElementById("BodyContent_txtNewUserPassword").value).length == 0) {
            hidediv1();
            document.getElementById("lbltxtNewUserPassword").style.display = "block";
            document.getElementById("lbltxtNewUserPassword").innerHTML = "<span>Please enter Password</span>";
            return false;
        }
        else if ((trim(document.getElementById("BodyContent_txtNewUserPassword").value).length < 6) && (trim(document.getElementById("BodyContent_txtNewUserPassword").value).length < 11)) {

            hidediv1();
            document.getElementById("lbltxtNewUserPassword").style.display = "block";
            document.getElementById("lbltxtNewUserPassword").innerHTML = "<span>Password length min 6 and max 10 characters</span>";
            return false;
        }
        else if (trim(document.getElementById("BodyContent_txtNewUserConfirmPassword").value).length == 0) {
            hidediv1();
            document.getElementById("lbltxtNewUserConfirmPassword").style.display = "block";
            document.getElementById("lbltxtNewUserConfirmPassword").innerHTML = "<span>Please enter ConfirmPassword</span>";
            return false;
        }
        else if (document.getElementById("BodyContent_txtNewUserPassword").value != document.getElementById("BodyContent_txtNewUserConfirmPassword").value) {
            hidediv1();
            document.getElementById("lbltxtNewUserConfirmPassword").style.display = "block";
            document.getElementById("lbltxtNewUserConfirmPassword").innerHTML = "<span>The Password and Confirmation Password must match</span>";
            return false;
        }

        else if (trim(document.getElementById("BodyContent_txtNewUserFullName").value).length == 0) {
            hidediv1();
            document.getElementById("lbltxtNewUserFullName").style.display = "block";
            document.getElementById("lbltxtNewUserFullName").innerHTML = "<span>Please enter FullName</span>";
            return false;
        }
        else if (!document.getElementById("BodyContent_txtNewUserFullName").value.match(/^[a-zA-Z ]+$/)) {
            hidediv1();
            document.getElementById("lbltxtNewUserFullName").style.display = "block";
            document.getElementById("lbltxtNewUserFullName").innerHTML = "<span>Please enter  FullName  only alphabet characters</span>";
            return false;
        }
        else if (trim(document.getElementById("BodyContent_txtNewUserMobileNo").value).length == 0) {
            hidediv1();
            document.getElementById("lbltxtNewUserMobileNo").style.display = "block";
            document.getElementById("lbltxtNewUserMobileNo").innerHTML = "<span>Please enter Phone No</span>";
            return false;
        }
        else if (!document.getElementById("BodyContent_txtNewUserMobileNo").value.match(/^\d{10}$/)) {
            hidediv1();
            document.getElementById("lbltxtNewUserMobileNo").style.display = "block";
            document.getElementById("lbltxtNewUserMobileNo").innerHTML = "<span>Please enter valid Phone number </span>";
            return false; 
        }
        else if (document.getElementById("BodyContent_ddldobdate").selectedIndex == 0) {
            hidediv1();
            document.getElementById("lblddldobdate").style.display = "block";
            document.getElementById("lblddldobdate").innerHTML = "<span>Please Select Day </span>";
            return false;
        }
        else if (document.getElementById("BodyContent_ddldobmonth").selectedIndex == 0) {
            hidediv1();
            document.getElementById("lblddldobmonth").style.display = "block";
            document.getElementById("lblddldobmonth").innerHTML = "<span>Please Select Month </span>";
            return false;
        }
        else if (document.getElementById("BodyContent_ddldobyear").selectedIndex == 0) {
            hidediv1();
            document.getElementById("lblddldobyear").style.display = "block";
            document.getElementById("lblddldobyear").innerHTML = "<span>Please Select Year </span>";
            return false;
        }
        else if (document.getElementById("BodyContent_chktermscondtion").checked == false) {
            hidediv1();
            document.getElementById("lblchktermscondtion").style.display = "block";
            document.getElementById("lblchktermscondtion").innerHTML = "<span>Please accept the terms & conditions</span>";
            return false;
        }
        else if (!document.getElementById("BodyContent_chktermscondtion").checked) {
            hidediv1();
            document.getElementById("lblchktermscondtion").style.display = "block";
            document.getElementById("lblchktermscondtion").innerHTML = "<span>Please accept Terms & Conditions</span>";
            return false;
        }

        else {
            hidediv1();
            document.getElementById("BodyContent_imgNewUserProceed").style.display = "block";
            document.getElementById("BodyContent_ImgbtnNewUserProceedforNextProcess").style.display = "none";
            document.getElementById("BodyContent_ImgbtnNewUserCancel").style.display = "none";

            return true;
        }


    }


    function hidediv1() {
        document.getElementById("BodyContent_imgNewUserProceed").style.display = "none";
        document.getElementById("lbltxtNewUserMobileNo").style.display = "none";
        document.getElementById("lbltxtNewUserFullName").style.display = "none";
        document.getElementById("lbltxtNewUserConfirmPassword").style.display = "none";
        document.getElementById("lbltxtNewUserPassword").style.display = "none";
        document.getElementById("BodyContent_lblUserMailId").style.display = "none";
        document.getElementById("lblddldobdate").style.display = "none";
        document.getElementById("lblddldobmonth").style.display = "none";
        document.getElementById("lblddldobyear").style.display = "none";
    }

    function onlyAlphabets(e, t) {
        try {
            if (window.event) {
                var charCode = window.event.keyCode;
            }
            else if (e) {
                var charCode = e.which;
            }
            else { return true; }
            if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123) || charCode == 8 || charCode == 32)
                return true;
            else
                return false;
        }
        catch (err) {
            alert(err.Description);
        }
    }
    function isNumeric(event) {
        var key;
        var browserName = navigator.appName;
        if (browserName == 'Netscape') {
            key = event.charCode;
        }
        else key = event.keyCode;

        return ((key >= 48 && key <= 57) || key == 8 || key == 0)
    }
    function NewuserClear() {
        document.getElementById("BodyContent_txtUserMailId").value = "";
        document.getElementById("BodyContent_txtNewUserPassword").value = "";
        document.getElementById("BodyContent_txtNewUserConfirmPassword").value = "";
        document.getElementById("BodyContent_txtNewUserFullName").value = "";
        document.getElementById("BodyContent_txtNewUserMobileNo").value = "";
        document.getElementById("BodyContent_chktermscondtion").checked = false;
        document.getElementById("BodyContent_ddldobdate").selectedIndex = 0;
        document.getElementById("BodyContent_ddldobmonth").selectedIndex = 0;
        document.getElementById("BodyContent_ddldobyear").selectedIndex = 0;
    }

    function ValidateLogin() {
        if (trim(document.getElementById("BodyContent_txtExistingEmailid").value).length == 0) {
            HideDiv11();
            document.getElementById("BodyContent_lbltxtexisitingmail").style.display = "block";
            document.getElementById("BodyContent_lbltxtexisitingmail").innerHTML = "<span>Please enter Email-Id</span>";           
            return false;
        }
        else if (!document.getElementById("BodyContent_txtExistingEmailid").value.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/)) {
            HideDiv11();
            document.getElementById("BodyContent_lbltxtexisitingmail").style.display = "block";
            document.getElementById("BodyContent_lbltxtexisitingmail").innerHTML = "<span>Please enter valid E-mail Id</span>";            
            return false;
        }
        else if (trim(document.getElementById("BodyContent_txtRigisterUserPassword").value).length == 0) {
            HideDiv11();
            document.getElementById("lblpwd").style.display = "block";
            document.getElementById("lblpwd").innerHTML = "<span>Please enter Password</span>";
            return false;
        }
        else {
            HideDiv11();
            document.getElementById("imgRegisterUserProceed").style.display = "block";
            document.getElementById("BodyContent_imgbtnRegisterUserProceed").style.display = "none";
            document.getElementById("BodyContent_imgbtnRegisterUserCancel").style.display = "none";
            return true;
        }


    }

    function ValidateLoginCancel() {
        
       // HideDiv11();
        document.getElementById("BodyContent_txtExistingEmailid").value = "";
        document.getElementById("BodyContent_txtRigisterUserPassword").value = "";
        usertabc('uc2');

    }
    function HideDiv11() {
        document.getElementById("BodyContent_lbltxtexisitingmail").style.display = "none";
         document.getElementById("lblpwd").style.display = "none";      
    }
    


    function Mailvalidation() {

        if (trim(document.getElementById("BodyContent_txtExistingEmailid").value).length == 0) {

            HideDiv11();
            document.getElementById("BodyContent_lbltxtexisitingmail").style.display = "block";
            document.getElementById("BodyContent_lbltxtexisitingmail").innerHTML = "<span>Please enter Email-Id</span>";
            return false;
        }
        else if (!document.getElementById("BodyContent_txtExistingEmailid").value.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/)) {           
            HideDiv11();
            document.getElementById("BodyContent_lbltxtexisitingmail").style.display = "block";
            document.getElementById("BodyContent_lbltxtexisitingmail").innerHTML = "<span>Please enter valid E-mail Id</span>";
            return false;
        }
        else {
            HideDiv11();
            document.getElementById("imgpwd").style.display = "block";
            document.getElementById("ulLogin").style.display = "none";
            document.getElementById("BodyContent_lnkpwd").style.display = "none";

            return true;
        }

    }    
</script> 



<script>
    function docht() {
        if (document.documentElement.clientHeight < document.documentElement.scrollHeight) {
            return document.documentElement.scrollHeight;
        } else {
            return document.documentElement.clientHeight;
        }

    }

    function godisplay() {
        usertabc('uc2');
        document.getElementById("aDispalyEMail").innerHTML = document.getElementById("BodyContent_txtExistingEmailid").value;
        document.getElementById("aDispalyEMail").innerText = document.getElementById("BodyContent_txtExistingEmailid").value;

        document.getElementById('html_pop').style.display = 'block';
        document.getElementById('pop_div').style.display = "block";
        document.getElementById('pop_div').style.height = docht() + "px";
    }
    function hide_div() {
        document.getElementById("aDispalyEMail").innerText = "";
        document.getElementById("aDispalyEMail").innerHTML = "";
        document.getElementById("imgpwd").style.display = "none";
        document.getElementById('pop_div').style.display = "none";
        document.getElementById('html_pop').style.display = 'none';
        document.getElementById("BodyContent_lnkpwd").style.display = "block";
        document.getElementById("BodyContent_txtExistingEmailid").style.display = "none";
    }
</script>

    <section class="wrapper">    	
            <ul class="breadcrumb">
            	<li><a href="index.html" title="Home">Home</a></li>
                <li>&gt;</li>
                <li><a href="#" title="GreenOMart">GreenOMart</a></li>
                <li>&gt;</li>
                <li>User Details</li>
            </ul>
        </article>
        <article class="userdetail">
        	<h2>User Details</h2>
            <ul class="user_tab">
                <li class="tabact"><a href="javascript:void(0);"><big class="larget">1</big><b class="smallt">Sign In / Register / Guest</b></a></li>
                <li><a href="javascript:void(0);"><big>2</big><b>Shipping Details</b></a></li>
                <li><a href="javascript:void(0);"><big>3</big><b>Payment Process</b></a></li>
                <li><a href="javascript:void(0);"><big>4</big><b>Order Confirmation</b></a></li>
            </ul>
            <article class="userdetailin">            	
                <h3>Please select your option below</h3>
                <aside class="userdetailin21out">
            	<ul class="user_tab2">
                    <li class="tab_select2" href="javascript:void(0);" id="usersc1" onclick="usertabc('uc1');">I am a new user</li>
                    <li class="tab_unselect2" href="javascript:void(0);" id="usersc2" onclick="usertabc('uc2');">I am a registered customer</li>
                </ul>
                <i>All fields are mandatory</i>
                <div id="urc1" style="display:block;">
                    <aside class="userdetailin21">
                        <aside class="userdetailin21-lt">
                            <h6>Create an account with us and you will be able to:</h6>
                            <ul class="keep">
                                <li>Keep a wish list</li>
                                <li>Check out quickly</li>
                                <li>Access your order history</li>
                                <li>Track your orders</li>
                                <li>Be the first to know about <br>the new arrivals</li>
                            </ul>                            
                        </aside>
                        <aside class="userdetailin21-rtout">
                            <aside class="userdetailin21-rt">
                                <dl class="shipp">
                                    <dt>Enter your email address</dt>
                                    <dd class="input"><asp:TextBox runat="server" ID="txtUserMailId"></asp:TextBox>
                                    <div class="form_error" id="lblUserMailId" runat="server" style="display:none;">
                                    <span>Please mention your  email id.</span>
                                    </div>                                    
                                    </dd>
                                    <dt>Enter your password</dt>
                                    <dd class="input"><asp:TextBox TextMode="Password" MaxLength="10" runat="server" ID="txtNewUserPassword"></asp:TextBox>
                                    <div class="form_error" id="lbltxtNewUserPassword" style="display:none;">
                                    <span>Please mention your  email id.</span></div></dd>
                                    <dt>Confirm your password</dt>
                                    <dd class="input"><asp:TextBox TextMode="Password" runat="server" ID="txtNewUserConfirmPassword"></asp:TextBox>
                                    <div class="form_error" id="lbltxtNewUserConfirmPassword" style="display:none;">
                                    <span>Please mention your  email id.</span></div></dd>
                                    <dt>Enter your full name</dt>
                                    <dd class="input"><asp:TextBox runat="server" ID="txtNewUserFullName" onkeypress=" return onlyAlphabets(event)"></asp:TextBox>
                                    <div class="form_error" id="lbltxtNewUserFullName" style="display:none;">
                                    <span>Please mention your  email id.</span></div></dd>
                                    <dt>Enter your mobile number</dt>
                                    <dd class="input"><asp:TextBox runat="server" ID="txtNewUserMobileNo" onkeypress="return isNumeric(event);"></asp:TextBox>
                                    <div class="form_error" id="lbltxtNewUserMobileNo" style="display:none;">
                                    <span>Please mention your  email id.</span></div></dd>
                                    <dt>Enter your date of birth</dt>
                                    <dd class="tselect">
                                    	<code>
                                        <asp:DropDownList ID="ddldobdate" runat="server" class="custom-class1 custom-class2" style="width:96px;">
                                        <asp:ListItem Selected="True" Text="DD" Value="0"></asp:ListItem>
                                        </asp:DropDownList>                                                                               	
                                        </code>
                                        
                                        <code>
                                        <asp:DropDownList ID="ddldobmonth" runat="server" class="custom-class1 custom-class2" style="width:96px;"  >
                                        <asp:ListItem Selected="True" Text="MM" Value="0"></asp:ListItem>
                                        </asp:DropDownList>                                      
                                        	
                                        </code>
                                        
                                        <code>
                                        <asp:DropDownList ID="ddldobyear" runat="server" class="custom-class1 custom-class2" style="width:126px;" >
                                        <asp:ListItem Selected="True" Text="YYYY" Value="0"></asp:ListItem>
                                        </asp:DropDownList>                                                                                	
                                        </code>
                                       <div class="form_error" id="lblddldobdate" style="display:none;margin-top:5px;">
                                        <span style="margin-top:5px;">Please mention your  email id.</span></div> 
                                         <div class="form_error" id="lblddldobmonth" style="display:none;margin-top:5px;">
                                      <span style="margin-top:5px;">Please mention your  email id.</span></div>
                                    <div class="form_error" id="lblddldobyear" style="display:none;margin-top:5px;">
                                         <span style="margin-top:5px;">Please mention your  email id.</span></div> 
                                    </dd>
                                 </dl>
                            </aside>
                            <ul class="chkbox">
                                <li><asp:CheckBox ID="chktermscondtion" runat="server" Checked="true" style="float:left;"  /><span>I accept <a href="terms-and-conditions.html" title="Terms &amp; Conditions">Terms &amp; Conditions</a>.</span></li>
                                <div class="form_error" id="lblchktermscondtion" style="display:none;margin-top:-15px;margin-left:27px;">
                                 <span>Please mention your  email id.</span>  </div>
                                <li><asp:CheckBox ID="chkmails" runat="server" style="float:left;"/><span>Please send me weekly, new arrivals, discounts and offers mailers.</span></li>
                            </ul>
                             <ul class="btns1">
                                <li><a href="#" title="Proceed">
                                <asp:ImageButton runat="server" ID="ImgbtnNewUserProceedforNextProcess" ImageUrl="../images/proceed.png" OnClick="btnnewuserproced_Click" OnClientClick="return Newuservalidation();" />
                                 <asp:Image runat="server"  style="display:none" ID="imgNewUserProceed" ImageUrl="../images/spin.gif" />
                                </a></li>
                                <li><a href="#" title="Cancel" >
                                 <asp:ImageButton runat="server" ID="ImgbtnNewUserCancel" ImageUrl="~/images/Cancel.png" OnClientClick="return NewuserClear()" />
                                 </a></li>
                                <li style="padding-top:5px;#width:150px">Next:<br>Step 2 - Shipping Details </li>
                                <li>
                                <div class="form_error" id="lblNewUserProceedforNextProcess" runat="server" style="display:none;">
                                 <span>Please mention your  email id.</span> 
                                 </div>
                                </li>
                            </ul>
                        </aside>
                    </aside>
                </div>
                <div id="urc2" style="display:none;">
                    <aside class="userdetailin21">
                        <aside class="userdetailin21-lt">
                            <h6>Create an account with us and you will be able to:</h6>
                            <ul class="keep">
                                <li>Keep a wish list</li>
                                <li>Check out quickly</li>
                                <li>Access your order history</li>
                                <li>Track your orders</li>
                                <li>Be the first to know about <br>the new arrivals</li>
                            </ul>                            
                        </aside>
                        <aside class="userdetailin21-rtout">
                            <aside class="userdetailin21-rt">
                                <dl class="shipp">
                                    <dt>Enter your email address</dt>
                                    <dd class="input">
                                    <asp:TextBox runat="server" ID="txtExistingEmailid"></asp:TextBox>                                    
                                    </dd>
                                    <div class="form_error" id="lbltxtexisitingmail" runat="server" style="display:none;">
                                    <span>Please mention your  email id.</span>
                                    </div>
                                    <dt>Enter password</dt>
                                    <dd class="input">
                                    <asp:TextBox TextMode="Password" runat="server" ID="txtRigisterUserPassword"></asp:TextBox>
                                    <div class="form_error" id="lblpwd" style="display:none;">
                                    <span>Please mention your Password</span>
                                    </div>
                                   <%-- <div class="form_error" id="invalid"  runat="server" style="display:none;">
                                    <span>Please mention your Password</span>
                                    </div>--%>
                                    </dd>
                                    <dt>
                                   <%-- <a href="#" onClick="godisplay();">Forgot Password ?</a>--%>
                                   <asp:LinkButton ID="lnkpwd" Text="Forgot Password ?" runat="server" OnClick="lnkpwd_Click" OnClientClick="return Mailvalidation();" ></asp:LinkButton>
                                    <div class="form_error" runat="server" id="lbllnkpwd" style="display:none;">
                                    <span>you Emaild is incorrect</span>
                                    </div>
                                     <img id="imgpwd" style="display:none" src="../images/spin.gif" />
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
                                                <p>An email with a link to reset your password has been sent to <br><span><a id="aDispalyEMail" href="mailto:harishanandthilakan@gmail.com">harishanandthilakan@gmail.com</a></span></p>
                                               <%-- <p>Please check your email and click the password reset link.</p>--%>
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
                            <ul class="btns1" style="padding-top:5px;">
                                <li><a href="javascript:void(0);" title="Proceed">                               
                                <asp:ImageButton runat="server" ID="imgbtnRegisterUserProceed" OnClick="imgbtnRegisterUserProceed_Click" OnClientClick="return ValidateLogin();" ImageUrl="../images/proceed.png" />
                                <img id="imgRegisterUserProceed" style="display:none" src="../images/spin.gif"">
                                </a></li>
                                <li><a href="javascript:void(0);" title="Cancel" onclick="return ValidateLoginCancel();">  
                                <img id="imgbtnRegisterUserCancel"   src="../images/Cancel.png" />                            
                                </a></li>
                                <li style="padding-top:5px;#width:150px">Next:<br>Step 2 - Shipping Details </li>
                            </ul>
                        </aside>
                    </aside>
                </div> 
                </aside>               
            </article>
        </article>
    </section>   
<link href='http://fonts.googleapis.com/css?family=Bitter:400,700' rel='stylesheet' type='text/css'>
<script type="text/javascript">
    function usertabc(t) {
        for (i = 1; i <= 2; i++) {
            if (t == "uc" + i + "") {
                document.getElementById("usersc" + i + "").className = "tab_select2";
                document.getElementById("urc" + i + "").style.display = 'block';
            }
            else {
                document.getElementById("usersc" + i + "").className = "tab_unselect2";
                document.getElementById("urc" + i + "").style.display = 'none';
            } 
        } 
    }
</script>
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

</asp:Content>
