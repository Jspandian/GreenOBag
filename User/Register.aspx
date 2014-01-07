<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="GreenOBagWeb.User.Register" MaintainScrollPositionOnPostback="true" MasterPageFile="~/Master/Site.Master" %>

<asp:Content ID="Index_Content" ContentPlaceHolderID="BodyContent" runat="server">
<script src="../js/html5.js"></script>
 <link href="../css/Validate.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen" />
<script type="text/javascript" src="../js/menu.js"></script>
<script type="text/javascript">
    function trim(str) {
        return str.replace(/^\s+|\s+$/g, '');
    }
    function Validation() {

        if (trim(document.getElementById("BodyContent_txtname").value).length == 0) {
            hidediv();
            document.getElementById("lbltxtname").style.display = "block";
            document.getElementById("lbltxtname").innerHTML = "<span>Please enter Fullname</span>";
            return false;
        }
        else if (trim(document.getElementById("BodyContent_txtmobileno").value).length == 0) {
            hidediv();
            document.getElementById("lbltxtmobileno").style.display = "block";
            document.getElementById("lbltxtmobileno").innerHTML = "<span>Please enter Phone No</span>";
            return false;
        }
        else if (!document.getElementById("BodyContent_txtmobileno").value.match(/^\d{10}$/)) {
            hidediv();
            document.getElementById("lbltxtmobileno").style.display = "block";
            document.getElementById("lbltxtmobileno").innerHTML = "<span>Please enter valid Phone number </span>";
            return false;
        }
        else if (trim(document.getElementById("BodyContent_txtpassword").value).length == 0) {
            hidediv();
            document.getElementById("lbltxtpassword").style.display = "block";
            document.getElementById("lbltxtpassword").innerHTML = "<span>Please enter Password</span>";
            return false;
        }
        else if ((trim(document.getElementById("BodyContent_txtpassword").value).length < 6) && (trim(document.getElementById("BodyContent_txtpassword").value).length < 11)) {
            hidediv();
            document.getElementById("lbltxtpassword").style.display = "block";
            document.getElementById("lbltxtpassword").innerHTML = "<span>Password length min 6 and max 10 characters</span>";
            return false;
        }
        else if (trim(document.getElementById("BodyContent_txtaddress").value).length == 0) {
            hidediv();
            document.getElementById("lbltxtaddress").style.display = "block";
            document.getElementById("lbltxtaddress").innerHTML = "<span>Please enter Address </span>";
            return false;
        }
        else if (trim(document.getElementById("BodyContent_txtzipcode").value).length == 0) {
            hidediv();
            document.getElementById("lbltxtzipcode").style.display = "block";
            document.getElementById("lbltxtzipcode").innerHTML = "<span>Please enter Zipcode</span>";
            return false;
        }
        else if (trim(document.getElementById("BodyContent_txtemailid").value).length == 0) {
            hidediv();
            document.getElementById("BodyContent_lbltxtemailid").style.display = "block";
            document.getElementById("BodyContent_lbltxtemailid").innerHTML = "<span>Please enter Email-Id</span>";
            return false;
        }
        else if (!document.getElementById("BodyContent_txtemailid").value.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/)) {
            hidediv();
            document.getElementById("BodyContent_lbltxtemailid").style.display = "block";
            document.getElementById("BodyContent_lbltxtemailid").innerHTML = "<span>Please enter valid E-mail Id</span>";
            return false;
        }
        else if (trim(document.getElementById("BodyContent_txtmobilealternative").value).length == 0) {
            hidediv();
            document.getElementById("lbltxtmobilealternative").style.display = "block";
            document.getElementById("lbltxtmobilealternative").innerHTML = "<span>Please enter alternative contact no</span>";
            return false;
        }
        else if (!document.getElementById("BodyContent_txtmobilealternative").value.match(/^\d{10}$/)) {
            hidediv();
            document.getElementById("lbltxtmobilealternative").style.display = "block";
            document.getElementById("lbltxtmobilealternative").innerHTML = "<span>Please enter valid Phone number </span>";
            return false;
        }
        else if (trim(document.getElementById("BodyContent_txtconfirampassword").value).length == 0) {
            hidediv();
            document.getElementById("lbltxtconfirampassword").style.display = "block";
            document.getElementById("lbltxtconfirampassword").innerHTML = "<span>Please enter Confirmpassword</span>";
            return false;
        }
        else if ((trim(document.getElementById("BodyContent_txtconfirampassword").value).length < 6) && (trim(document.getElementById("BodyContent_txtconfirampassword").value).length < 11)) {
            hidediv();
            document.getElementById("lbltxtconfirampassword").style.display = "block";
            document.getElementById("lbltxtconfirampassword").innerHTML = "<span>Password length min 6 and max 10 characters</span>";
            return false;
        }
        else if (document.getElementById("BodyContent_txtpassword").value != document.getElementById("BodyContent_txtconfirampassword").value) {
            hidediv();
            document.getElementById("lbltxtconfirampassword").style.display = "block";
            document.getElementById("lbltxtconfirampassword").innerHTML = "<span>The Password and Confirmation Password must match</span>";
            return false;
        }
        else if (document.getElementById("BodyContent_ddlstate").selectedIndex == 0) {
            hidediv();
            document.getElementById("lblddlstate").style.display = "block";
            document.getElementById("lblddlstate").innerHTML = "<span>Please select State </span>";
            return false;
        }
        else if (trim(document.getElementById("BodyContent_txtcity").value).length == 0) {
            hidediv();
            document.getElementById("lbltxtcity").style.display = "block";
            document.getElementById("lbltxtcity").innerHTML = "<span>Please enter City </span>";
            return false;
        }
        else if (!document.getElementById("BodyContent_chkconditions").checked) {
            hidediv();
            document.getElementById("lblchktermscondtion").style.display = "block";
            document.getElementById("lblchktermscondtion").innerHTML = "<span>Please accept Terms & Conditions </span>";
            return false;
        }
        else {

            hidediv();
            return true;
        }
    }


    function hidediv() {
        document.getElementById("lbltxtname").style.display = "none";
        document.getElementById("lbltxtmobileno").style.display = "none";
        document.getElementById("lbltxtpassword").style.display = "none";
        document.getElementById("lbltxtaddress").style.display = "none";
        document.getElementById("lbltxtzipcode").style.display = "none";
        document.getElementById("BodyContent_lbltxtemailid").style.display = "none";
        document.getElementById("lbltxtmobilealternative").style.display = "none";
        document.getElementById("lbltxtconfirampassword").style.display = "none";
        document.getElementById("lbltxtcity").style.display = "none";
        document.getElementById("lblddlstate").style.display = "none";
        document.getElementById("lblchktermscondtion").style.display = "none";

    }
    function Clear() {
        document.getElementById("BodyContent_txtname").value = "";
        document.getElementById("BodyContent_txtmobileno").value = "";
        document.getElementById("BodyContent_txtpassword").value = "";
        document.getElementById("BodyContent_txtaddress").value = "";
        document.getElementById("BodyContent_txtzipcode").value = "";
        document.getElementById("BodyContent_txtemailid").value = "";
        document.getElementById("BodyContent_txtmobilealternative").value = "";
        document.getElementById("BodyContent_txtconfirampassword").value = "";
        document.getElementById("BodyContent_txtcity").value = "";       
        document.getElementById("BodyContent_ddlstate").selectedIndex = 0;

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
</script>
    <section class="wrapper">
    	<header>
        	
           <%-- <script type="text/javascript">
                cssdropdown.startchrome("chromemenu")
			</script>--%>
        </header>
        <article class="submenu">
        	 <div class="clear"></div>
            <ul class="breadcrumb">
            	<li><a href="index.html" title="Home">Home</a></li>
                <li>&gt;</li>
                <li><a href="#" title="GreenOBag ">GreenOBag </a></li>
                <li>&gt;</li>
                <li>Registration </li>
            </ul>
        </article>
     
        <article class="userdetail">
        	<h2>Thank you for choosing GreenOBag<br><span>Please fill in your details below to create an account.</span></h2>            
            <article class="userdetailin">
                    <article class="shipping-detail">
                        <dl class="shippform">
                            <dt>Enter your full name</dt>
                            <dd class="inputshipp"><asp:TextBox ID="txtname" TabIndex="1" runat="server" onkeypress=" return onlyAlphabets(event)"></asp:TextBox>
                            <div class="form_error" id="lbltxtname"  style="display:none;">
                            <span>Please mention your  email id.</span>
                            </div>
                            </dd>
                            <dt>Enter your mobile number</dt>
                            <dd class="inputshipp"><asp:TextBox ID="txtmobileno" TabIndex="3" runat="server" onkeypress="return isNumeric(event);"></asp:TextBox>
                            <div class="form_error" id="lbltxtmobileno"  style="display:none;">
                            <span>Please mention your  email id.</span>
                            </div>
                            </dd>
                            <dt>Enter password</dt>
                            <dd class="inputshipp"><asp:TextBox ID="txtpassword" runat="server"  TabIndex="5" TextMode="Password" ></asp:TextBox>
                            <div class="form_error" id="lbltxtpassword"  style="display:none;">
                            <span>Please mention your  email id.</span>
                            </div>
                            </dd>
                            <dt>Address</dt>
                            <dd class="textshipp"><textarea id="txtaddress" name="txtaddress" runat="server" tabindex="7"></textarea>
                            <div class="form_error" id="lbltxtaddress"  style="display:none;">
                            <span>Please mention your  email id.</span>
                            </div>
                            </dd>
                            <dt>ZIP Code</dt>
                            <dd class="inputshipp"><asp:TextBox  ID="txtzipcode" runat="server" TabIndex="9" onkeypress="return isNumeric(event);"></asp:TextBox>
                            <div class="form_error" id="lbltxtzipcode"  style="display:none;">
                            <span>Please mention your  email id.</span>
                            </div>
                            </dd>
                        </dl>
                        <dl class="shippform">
                            <dt>Enter your e-mail id</dt>
                            <dd class="inputshipp"><asp:TextBox ID="txtemailid" runat="server" TabIndex="2"></asp:TextBox>
                            <div class="form_error" id="lbltxtemailid" runat="server" style="display:none;">
                            <span>This Email-Id already exist</span>
                            </div>                           
                            </dd>
                            <dt>Enter alternative contact number</dt>
                            <dd class="inputshipp"><asp:TextBox ID="txtmobilealternative" runat="server" TabIndex="4" onkeypress="return isNumeric(event);"></asp:TextBox>
                            <div class="form_error" id="lbltxtmobilealternative"  style="display:none;">
                            <span>Please mention your  email id.</span>
                            </div>
                            </dd>
                            <dt>Confirm password</dt>
                            <dd class="inputshipp"><asp:TextBox ID="txtconfirampassword" runat="server" TabIndex="6" TextMode="Password"></asp:TextBox>
                            <div class="form_error" id="lbltxtconfirampassword"  style="display:none;">
                            <span>Please mention your  email id.</span>
                            </div>
                            </dd>
                            <dt>State</dt>
                            <dd class="selectshipp">
                            <asp:DropDownList ID="ddlstate" runat="server" class="custom-class1 custom-class2" style="width:356px;" TabIndex="8" ></asp:DropDownList>
                            <div class="form_error" id="lblddlstate"  style="display:none;">
                            <span>Please mention your  email id.</span>
                            </div>
                                <%--<select id="standard-dropdown" name="standard-dropdown" class="custom-class1 custom-class2" style="width:356px;">
                                <option value="1" >Select State</option>
                                <option value="2">Tamilnadu</option>
                                <option value="3">Andra</option>      
                                </select>--%>
                            </dd>
                            <dt style="margin-top:-7px;">City</dt>
                            <dd class="inputshipp"><asp:TextBox  ID="txtcity" runat="server" TabIndex="10" onkeypress=" return onlyAlphabets(event)"></asp:TextBox></dd>
                           <%-- <dd class="selectshipp">
                                <select id="standard-dropdown" name="standard-dropdown" class="custom-class1 custom-class2" style="width:356px;">
                                <option value="1" >Select City</option>
                                <option value="2">Chennai</option>      
                                </select>
                            </dd>--%>
                            <div class="form_error" id="lbltxtcity"  style="display:none;">
                            <span>Please mention your  email id.</span>
                            </div>
                            <dt>
                            
                            </dt>
                            <dd>
                                <ul class="chkbox" style="padding:23px 0 0;#padding:10px 0 0;">
                                <li><%--<em class="chkon" id="chka1" onClick="changeChkBox(1,'chka','chkon','chkoff')"></em>--%><asp:CheckBox ID="chkconditions" runat="server" Checked="true" style="float:left;" TabIndex="11" />  <span>I accept <a href="terms-and-conditions.html" title="Terms &amp; Conditions">Terms &amp; Conditions</a>.</span></li>
                                <div class="form_error" id="lblchktermscondtion" style="display:none;margin-top:-15px;margin-left:27px;">
                                 <span>Please mention your  email id.</span>  </div>
                                <li><%--<em class="chkoff" id="chka2" onClick="changeChkBox(2,'chka','chkon','chkoff')"></em>--%><asp:CheckBox ID="chkweeklymail" runat="server" style="float:left;" TabIndex="12" />  <span>Please send me weekly, new arrivals, discounts and offers mailers.</span></li>
                            
                            </ul>
                            </dd>
                        </dl>
                        <ul class="btns1" style="padding:20px 0 50px 468px;">
                                <li><a href="#" title="Submit">
                                <asp:ImageButton runat="server" ID="Imgsubmit" ImageUrl="../images/submit.png" OnClientClick="return Validation();"
                                        onclick="Imgsubmit_Click" />
                                 <asp:Image runat="server"  style="display:none" ID="imgspin" ImageUrl="../images/spin.gif" />
                              <%--  <img src="../images/submit.png" alt="">--%>
                                </a></li>
                                <li><a href="#" title="Cancel"><img src="../images/Cancel.png" alt=""></a></li>
                            </ul>                        
                    </article>      
           </article>                
            </article> 
            </article>
        </article>
    </section>    

<!-- Section main ends here -->
<!-- Google Fonts Starts here -->
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
