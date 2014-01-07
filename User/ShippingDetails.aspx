<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShippingDetails.aspx.cs" MasterPageFile="~/Master/Site.Master" MaintainScrollPositionOnPostback="true" Inherits="GreenOBagWeb.User.ShippingDetails" %>
<asp:Content ID="Index_Content" ContentPlaceHolderID="BodyContent" runat="server">
<script type="text/javascript">

    function isNumeric(event) {
        var key;
        var browserName = navigator.appName;
        if (browserName == 'Netscape') {
            key = event.charCode;
        }
        else key = event.keyCode;
        return ((key >= 48 && key <= 57) || key == 8 || key == 46 || key == 0)
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

    function Validate(txt) {
        txt.value = txt.value.replace(/[^a-zA-Z 0-9\n\r]+/g, '');
    }

    function trim(str) {
        return str.replace(/^\s+|\s+$/g, '');
    }
    function Validation() {

        if (trim(document.getElementById("BodyContent_txtShippingUserFullName").value).length == 0) {
            hidediv();
            document.getElementById("lblShippingUserFullName").style.display = "block";
            document.getElementById("lblShippingUserFullName").innerHTML = "<span>Please enter Name</span>";
            return false;
        }        
        else if (trim(document.getElementById("BodyContent_txtShippingUserAddress").value).length == 0) {
            hidediv();
            document.getElementById("lblShippingUserAddress").style.display = "block";
            document.getElementById("lblShippingUserAddress").innerHTML = "<span>Please enter Address</span>";
            return false;
        }
        else if (trim(document.getElementById("BodyContent_txtShippingpostalCode").value).length == 0) {
            hidediv();
            document.getElementById("lblShippingpostalCode").style.display = "block";
            document.getElementById("lblShippingpostalCode").innerHTML = "<span>Please enter Shipping Postal Code/Area Code</span>";
            return false;
        }
        else if (trim(document.getElementById("BodyContent_txtshippingmobile").value).length == 0) {
            hidediv();
            document.getElementById("lblshippingmobile").style.display = "block";
            document.getElementById("lblshippingmobile").innerHTML = "<span>Please enter Phone No</span>";
            return false;
        }
        else if (!document.getElementById("BodyContent_txtshippingmobile").value.match(/^\d{10}$/)) {
            hidediv();
            document.getElementById("lblshippingmobile").style.display = "block";
            document.getElementById("lblshippingmobile").innerHTML = "<span>Please enter valid Phone number</span>";
            return false;
        }
        else if (document.getElementById("ddlstate").selectedIndex == 0) {
            hidediv();
            document.getElementById("lblddlstate").style.display = "block";
            document.getElementById("lblddlstate").innerHTML = "<span>Please select State</span>";
            return false;
        }
        else if (trim(document.getElementById("BodyContent_txtshippingCity").value).length == 0) {
            hidediv();
            document.getElementById("lblshippingCity").style.display = "block";
            document.getElementById("lblshippingCity").innerHTML = "<span>Please enter City</span>";
            return false;
        }
        else if (trim(document.getElementById("BodyContent_txtbname").value).length == 0) {
            hidediv();
            document.getElementById("lbltxtbname").style.display = "block";
            document.getElementById("lbltxtbname").innerHTML = "<span>Please enter Name</span>";
            return false;
        }
        else if (trim(document.getElementById("BodyContent_txtbaddress").value).length == 0) {
            hidediv();
            document.getElementById("lbltxtbaddress").style.display = "block";
            document.getElementById("lbltxtbaddress").innerHTML = "<span>Please enter Address</span>";
            return false;
        }
        else if (trim(document.getElementById("BodyContent_txtbpostalCode").value).length == 0) {
            hidediv();
            document.getElementById("lbltxtbpostalCode").style.display = "block";
            document.getElementById("lbltxtbpostalCode").innerHTML = "<span>Please enter Billing Postal Code/Area Code</span>";
            return false;
        }
        else if (trim(document.getElementById("BodyContent_txtbphone").value).length == 0) {
            hidediv();
            document.getElementById("lbltxtbphone").style.display = "block";
            document.getElementById("lbltxtbphone").innerHTML = "<span>Please enter Phone No</span>";
            return false;
        }
        else if (!document.getElementById("BodyContent_txtbphone").value.match(/^\d{10}$/)) {
            document.getElementById("BodyContent_txtbphone").value = "";
            hidediv();
            document.getElementById("lbltxtbphone").style.display = "block";
            document.getElementById("lbltxtbphone").innerHTML = "<span>Please enter valid Phone number</span>";
            return false;
        }
        else if (document.getElementById("ddlbstate").selectedIndex == 0) {
            hidediv();
            document.getElementById("lblddlbstate").style.display = "block";
            document.getElementById("lblddlbstate").innerHTML = "<span>Please select Country</span>";
            return false;
        }

        else if (trim(document.getElementById("BodyContent_txtbcity").value).length == 0) {
            hidediv();
            document.getElementById("lbltxtbcity").style.display = "block";
            document.getElementById("lbltxtbcity").innerHTML = "<span>Please enter City</span>";
            return false;

        } 
        else {
            hidediv();
            SubmitShippingandBilling();
        }
    }

    function hidediv() {
        document.getElementById("lblShippingUserFullName").style.display = "none";
        document.getElementById("lblShippingUserAddress").style.display = "none";
        document.getElementById("lblShippingpostalCode").style.display = "none";
        document.getElementById("lblshippingmobile").style.display = "none";
        document.getElementById("lblddlstate").style.display = "none";
        document.getElementById("lblshippingCity").style.display = "none";
        document.getElementById("lbltxtbname").style.display = "none";
        document.getElementById("lbltxtbaddress").style.display = "none";
        document.getElementById("lbltxtbphone").style.display = "none";
        document.getElementById("lbltxtbpostalCode").style.display = "none";
        document.getElementById("lbltxtbcity").style.display = "none";
        document.getElementById("lblddlbstate").style.display = "none";
        
    }
</script>

<script type="text/javascript">

    function Clear() {
        document.getElementById("BodyContent_txtShippingUserFullName").value = "";
        document.getElementById("BodyContent_txtshippingmobile").value = "";
        document.getElementById("BodyContent_txtShippingUserAddress").value = "";
        document.getElementById("BodyContent_txtshippingCity").value = "";
        document.getElementById("ddlbstate").selectedIndex = 0;
        document.getElementById("BodyContent_txtbname").value = "";
        document.getElementById("BodyContent_txtbphone").value = "";
        document.getElementById("BodyContent_txtbaddress").value = "";
        document.getElementById("BodyContent_txtbcity").value = "";        
        document.getElementById("BodyContent_txtShippingpostalCode").value = "";
        document.getElementById("BodyContent_txtbpostalCode").value = "";
        document.getElementById("ddlstate").selectedIndex = 0;
        RadioButtonOnChanged();
        var ul = document.getElementById("BodyContent_ulShipping");
        var items = ul.getElementsByTagName("li");
        for (var i = 0; i < items.length; i++) {
            document.getElementById("chka" + i).className = "rd_off";
        }

        
    

</script>
<asp:HiddenField runat="server" ID="hdShippingId" Value="0" />
<asp:HiddenField runat="server" ID="hdExNew" Value="0" />
<link href="../css/Validate.css" rel="stylesheet" type="text/css" />
<script src="../js/html5.js"></script>
<script src="../js/zxml.src.js"></script>
<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen">s
    <section class="wrapper">    	
            </ul><div class="clear"></div>
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
                <li ><a href="javascript:void(0);"><big>1</big><b>Sign In / Register / Guest</b></a></li>
                <li class="tabact"><a href="javascript:void(0);"><big class="larget">2</big><b class="smallt">Shipping Details</b></a></li>
                <li><a href="javascript:void(0);"><big>3</big><b>Payment Process</b></a></li>
                <li><a href="javascript:void(0);"><big>4</big><b>Order Confirmation</b></a></li>
            </ul>
            <article class="userdetailin" style="position:relative;">            	
                <h3 style="padding-bottom:100px;">Where would you like your products to be shipped?</h3>                
                <abbr>All fields are mandatory</abbr>
                <div id="ar1" style="display:block;">
                    <article class="shipping-detail" style="position:relative;z-index:10;">
                        <dl class="shippform">
                            <dt>Enter your full name</dt>
                            <dd class="inputshipp">
                            <asp:TextBox TabIndex="1" runat="server" ID="txtShippingUserFullName" onkeypress=" return onlyAlphabets(event)"></asp:TextBox>
                            <div class="form_error" id="lblShippingUserFullName" style="display:none;">
                            <span>Please mention your  email id.</span>
                            </div>                            
                            </dd>
                            <dt>Address</dt>
                            <dd class="textshipp">
                            <textarea tabindex="2" runat="server" ID="txtShippingUserAddress"></textarea>
                            <div class="form_error" id="lblShippingUserAddress" style="display:none;">
                            <span>Please mention your  email id.</span>
                            </div>
                            </dd>
                            <dt>PIN Code</dt>
                            <dd class="inputshipp">
                            <asp:TextBox MaxLength="6" TabIndex="3"   runat="server"  ID="txtShippingpostalCode" onkeypress=" return isNumeric(event)"></asp:TextBox>
                            <div class="form_error" id="lblShippingpostalCode" style="display:none;">
                            <span>Please mention your  email id.</span></div>
                            </dd>
                        </dl>
                        <dl class="shippform">
                            <dt>Enter your phone number</dt>
                            <dd class="inputshipp">
                            <asp:TextBox TabIndex="4" ID="txtshippingmobile" runat="server" onkeypress=" return isNumeric(event)"></asp:TextBox>
                            <div class="form_error" id="lblshippingmobile" style="display:none;">
                            <span>Please mention your  email id.</span></div>
                            </dd>
                            <dt>State</dt>
                            <%--<dd class="selectshipp">--%>
                            <%--<asp:DropDownList ID="ddlstate" runat="server"  class="custom-class1 custom-class2" style="width:356px;"></asp:DropDownList>--%>
                                <%--<select id="standard-dropdown" name="standard-dropdown" class="custom-class1 custom-class2" style="width:356px;">
                                <option value="1" >Select State</option>
                                <option value="2">Tamilnadu</option>
                                <option value="3">Andra</option>      
                                </select>--%>
                                <dd class="input" runat="server" id="divSelect">
                               </dd>
                                <div class="form_error" id="lblddlstate" style="display:none;">
                                <span>Please mention your  email id.</span>
                                </div>
                            
                            <dt style="margin-top:20px;">City</dt>
                            <dd class="inputshipp">
                            <asp:TextBox TabIndex="6" runat="server" ID="txtshippingCity" onkeypress=" return onlyAlphabets(event)"></asp:TextBox>
                            <div class="form_error" id="lblshippingCity" style="display:none;">
                            <span>Please mention your  email id.</span></div>
                                <%--<select id="standard-dropdown" name="standard-dropdown" class="custom-class1 custom-class2" style="width:356px;">
                                <option value="1" >Select City</option>
                                <option value="2">Chennai</option>      
                                </select>--%>
                            </dd>
                            <dt style="margin-top:25px;">Is this address also your billing address</dt>
                            <dd>
                                <ul class="radio">
                                <li>
                <%--<em class="rdon" id="chka1" onClick="changeChkBox(1,'chka','rdon','rdoff')"></em>--%>
                               
                                 <input id="Yes" type="radio" onclick="CopyShippingToBilling();" name="myradios"  />                                Yes</li>
                               <%-- <span>Yes</span>--%>                                
                                <li>
                                <%--<em class="rdoff" id="chka2" onClick="changeChkBox(2,'chka','rdon','rdoff')"></em>--%>
                                <input id="No" type="radio" onclick="DonotCopyShippingToBilling();" name="myradios" />
                                No <font style="font-size:12px;">
                                (If not, we'll ask you for it in a moment)</font>
                                
                                </li>
                            </ul>
                            </dd>
                        </dl>                        
                    </article>
                    <h3 style="padding-bottom:30px;">Enter your billing address</h3>            
                    <abbr style="margin-top:-50px;">All fields are mandatory</abbr>
                    <article class="shipping-detail">
                       <dl class="shippform">
                            <dt>Enter your full name</dt>
                            <dd class="inputshipp">
                            <%--<input type="text">--%>
                            <asp:TextBox ID="txtbname" TabIndex="7" runat="server" Enabled="true" onkeypress=" return onlyAlphabets(event)"></asp:TextBox>                                            
                            <div class="form_error" id="lbltxtbname" style="display:none;">
                            <span>Please mention your  email id.</span></div> 
                            </dd>
                            <dt>Address</dt>
                            <dd class="textshipp">
                            <textarea ID="txtbaddress" runat="server" Enabled="true" tabindex="8" ></textarea>
                             <div class="form_error" id="lbltxtbaddress" style="display:none;">
                             <span>Please mention your  email id.</span></div> 
                            </dd>
                            <dt>PIN Code</dt>
                            <dd class="inputshipp">
                          <%--  <input type="text">--%>
                            <asp:TextBox MaxLength="6" TabIndex="9" runat="server" ID="txtbpostalCode" onkeypress=" return isNumeric(event)"></asp:TextBox>
                            <div class="form_error" id="lbltxtbpostalCode" style="display:none;">
                            <span>Please mention your  email id.</span></div> 
                            </dd>
                        </dl>
                        <dl class="shippform">
                            <dt>Enter your phone number</dt>
                            <dd class="inputshipp">
                            <%--<input type="text">--%>
                            <asp:TextBox ID="txtbphone" TabIndex="10" runat="server" Enabled="true" onkeypress=" return isNumeric(event)"></asp:TextBox>
                            <div class="form_error" id="lbltxtbphone" style="display:none;">
                            <span>Please mention your  email id.</span></div> 
                            </dd>
                            <dt>State</dt>
                            <%--<dd class="selectshipp">--%>
                             <dd class="input" runat="server" id="divbstate">
                             
                             </dd>
                            <div class="form_error" id="lblddlbstate" style="display:none;">
                            <span>Please mention your  email id.</span></div> 
                                <%--<select id="standard-dropdown" name="standard-dropdown" class="custom-class1 custom-class2" style="width:356px;">
                                <option value="1" >Select State</option>
                                <option value="2">Tamilnadu</option>
                                <option value="3">Andra</option>      
                                </select>--%>
                            
                            <dt style="margin-top:20px;">City</dt>
                            <dd class="inputshipp">
                             <asp:TextBox ID="txtbcity" TabIndex="11" runat="server" Enabled="true"></asp:TextBox>   
                             <div class="form_error" id="lbltxtbcity" style="display:none;">
                             <span>Please mention your  email id.</span></div>
                                <%--<select id="standard-dropdown" name="standard-dropdown" class="custom-class1 custom-class2" style="width:356px;">
                                <option value="1" >Select City</option>
                                <option value="2">Chennai</option>      
                                </select>--%>
                            </dd>
                            <dt>&nbsp;</dt>
                            <dd>
                                <ul class="btns1" style="padding-left:5px;padding-top:5px;">
                                <li id="liProced"><a href="javascript:void(0);" onclick="Validation();" title="Proceed">
                                <img src="../images/proceed.png" alt="">
                                
                                </a></li>
                                <li id="licancel"><a  href="javascript:void(0);" onclick="return Clear();" title="Cancel"><img src="../images/Cancel.png" alt=""></a></li>
                                <li style="padding-top:5px;#width:150px;">Next:<br>Step 3 - Payment</li>
                            </ul>
                            </dd>
                        </dl>                                          
                    </article>  
                </div>
              <%--  <div id="ar2" style="display:none;">
                	<article class="shipping-detail">
                        <dl class="shippform">
                            <dt>Enter your full name</dt>
                            <dd class="inputshipp"><input type="text"></dd>
                            <dt>Address</dt>
                            <dd class="textshipp"><textarea></textarea></dd>
                            <dt>City</dt>
                            <dd class="selectshipp">
                            	<select id="standard-dropdown" name="standard-dropdown" class="custom-class1 custom-class2" style="width:356px;">
                                <option value="1" >Select City</option>
                                <option value="2">Chennai</option>
                                <option value="3">Cuddalore</option>      
                                </select>
                            </dd>
                        </dl>
                        <dl class="shippform">
                            <dt>Enter your phone number</dt>
                            <dd class="inputshipp"><input type="text"></dd>
                            <dt>Country</dt>
                            <dd class="selectshipp">
                                <select id="standard-dropdown" name="standard-dropdown" class="custom-class1 custom-class2" style="width:356px;">
                                <option value="1" >Select Country</option>
                                <option value="2">India</option>
                                <option value="3">US</option>      
                                </select>
                            </dd>
                            <dt style="margin-top:-7px;">State</dt>
                            <dd class="selectshipp">
                                <select id="standard-dropdown" name="standard-dropdown" class="custom-class1 custom-class2" style="width:356px;">
                                <option value="1" >Select State</option>
                                <option value="2">Tamilnadu</option>      
                                </select>
                            </dd>
                            <dt>ZIP Code</dt>
                            <dd class="inputshipp"><input type="text"></dd>
                        </dl>
                        <aside class="radioblk" style="border:0;">
                            <i style="text-align:center;padding-bottom:5px;">Is this address also your billing address</i>
                            <ul class="radio" style="padding:0 0 30px 0;width:600px;float:right;">
                                <li><em class="rdon" id="chka1" onClick="changeChkBox(1,'chka','rdon','rdoff')"></em><span>Yes</span></li>
                                <li><em class="rdoff" id="chka2" onClick="changeChkBox(2,'chka','rdon','rdoff')"></em><span>No <font style="font-size:12px;">(If not, we'll ask you for it in a moment)</font></span></li>
                            </ul>
                        </aside>
                    </article>
                    <h3 style="padding-bottom:30px;">Enter your billing address</h3>            
                    <abbr style="margin-top:-50px;">All fields are mandatory</abbr>
                    <article class="shipping-detail">
                        <dl class="shippform">
                            <dt>Enter your full name</dt>
                            <dd class="inputshipp"><input type="text"></dd>
                            <dt>Address</dt>
                            <dd class="textshipp"><textarea></textarea></dd>
                            <dt>City</dt>
                            <dd class="selectshipp">
                            	<select id="standard-dropdown" name="standard-dropdown" class="custom-class1 custom-class2" style="width:356px;">
                                <option value="1" >Select City</option>
                                <option value="2">Chennai</option>
                                <option value="3">Cuddalore</option>      
                                </select>
                            </dd>
                        </dl>
                        <dl class="shippform">
                            <dt>Enter your phone number</dt>
                            <dd class="inputshipp"><input type="text"></dd>
                            <dt>Country</dt>
                            <dd class="selectshipp">
                                <select id="standard-dropdown" name="standard-dropdown" class="custom-class1 custom-class2" style="width:356px;">
                                <option value="1" >Select Country</option>
                                <option value="2">India</option>
                                <option value="3">US</option>      
                                </select>
                            </dd>
                            <dt style="margin-top:-7px;">State</dt>
                            <dd class="selectshipp">
                                <select id="standard-dropdown" name="standard-dropdown" class="custom-class1 custom-class2" style="width:356px;">
                                <option value="1" >Select State</option>
                                <option value="2">Tamilnadu</option>      
                                </select>
                            </dd>
                            <dt>ZIP Code</dt>
                            <dd class="inputshipp"><input type="text"></dd>
                        </dl>                        
                            <ul class="btns1" style="padding-bottom:30px;padding-top:30px;padding-left:220px;">
                                <li><a href="#" title="Proceed"><img src="images/proceed.png" alt=""></a></li>
                                <li><a href="#" title="Cancel"><img src="images/Cancel.png" alt=""></a></li>
                                <li style="padding-top:5px;#width:150px;">Next:<br>Step 2 - Shipping Details </li>
                            </ul>                 
                    </article> 
                </div>--%>
                <ul class="sub_tab">
                    <li class="tab_select" href="javascript:void(0);" id="tabss1" onclick="archangeTab('t1');"><em></em><span class="da1">India</span><i></i></li>
                    <%--<li class="tab_unselect" href="javascript:void(0);" id="tabss2" onclick="archangeTab('t2');" style="width:233px;"><em ></em><span class="da">International</span><i></i></li> --%>                       
                </ul>
           </article>                
            </article> 
            </article>
        </article>
    </section>
   
<link href='http://fonts.googleapis.com/css?family=Bitter:400,700' rel='stylesheet' type='text/css'>
<script type="text/javascript">
    function usertabc(t) {
        for (i = 1; i <= 3; i++) {
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
    function CopyShippingToBilling() {
        document.getElementById("BodyContent_txtbname").value = document.getElementById("BodyContent_txtShippingUserFullName").value;
        document.getElementById("BodyContent_txtbaddress").value = document.getElementById("BodyContent_txtShippingUserAddress").value;
        document.getElementById("BodyContent_txtbphone").value = document.getElementById("BodyContent_txtshippingmobile").value;
        document.getElementById("BodyContent_txtbpostalCode").value = document.getElementById("BodyContent_txtShippingpostalCode").value;
        document.getElementById("BodyContent_txtbcity").value = document.getElementById("BodyContent_txtshippingCity").value;
        document.getElementById("ddlbstate").selectedIndex = document.getElementById("ddlstate").selectedIndex;
         ChangeBillingDropDown();
    }
    function ChangeBillingDropDown()
     {
         if (document.getElementById("No").checked == false)
         {
             var params = "SelectedCity=" + document.getElementById("ddlstate").value;
             
        }
        else
         {
             var params = "SelectedCity=0";
             
        }
        var oXmlHttp1 = zXmlHttp.createRequest();
        oXmlHttp1.open("POST", "../User/FillDropdown.aspx", true);
        oXmlHttp1.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        oXmlHttp1.setRequestHeader("Content-length", params.length);
        oXmlHttp1.setRequestHeader("Connection", "close");
        oXmlHttp1.onreadystatechange = function () {
            if (oXmlHttp1.readyState == 4) {
                var getdata = oXmlHttp1.responseText.split('~');
                if (oXmlHttp1.responseText != "") {
                    document.getElementById("BodyContent_divbstate").innerHTML = oXmlHttp1.responseText;
                    $("SELECT").selectBox()
                }
            }
        }
        oXmlHttp1.send(params);
    }

    function DonotCopyShippingToBilling() {

        document.getElementById("BodyContent_txtbname").value = "";
        document.getElementById("BodyContent_txtbphone").value = "";
        document.getElementById("BodyContent_txtbaddress").value = "";
        document.getElementById("BodyContent_txtbcity").value = "";
        document.getElementById("BodyContent_txtbpostalCode").value = "";
        document.getElementById("ddlbstate").selectedIndex = 0;        
        ChangeBillingDropDown();
    }

    function SubmitShippingandBilling() {
        document.getElementById("licancel").style.display = "none";
        document.getElementById("liProced").innerHTML = "<img src='../images/spin.gif'>";
        var sName = document.getElementById("BodyContent_txtShippingUserFullName").value;
        var sMobile = document.getElementById("BodyContent_txtshippingmobile").value;
        var sAddress = document.getElementById("BodyContent_txtShippingUserAddress").value;
        var sCity = document.getElementById("BodyContent_txtshippingCity").value;
        var sPostalCode = document.getElementById("BodyContent_txtShippingpostalCode").value;
        var sState = document.getElementById("ddlstate").value;
        var Shiiping = sName + "~" + sMobile + "~" + sAddress + "~" + sCity + "~" + sPostalCode + "~" + sState;
        var bName = document.getElementById("BodyContent_txtbname").value;
        var bPhone = document.getElementById("BodyContent_txtbphone").value;
        var bAddress = document.getElementById("BodyContent_txtbaddress").value;
        var bCity = document.getElementById("BodyContent_txtbcity").value;
        var bPostalCode = document.getElementById("BodyContent_txtbpostalCode").value;
        var bStateBill = document.getElementById("ddlbstate").value;
        var Billing = bName + "~" + bPhone + "~" + bAddress + "~" + bCity + "~" +  bPostalCode + "~" + bStateBill;
        var ShippingId = document.getElementById("<%=hdShippingId.ClientID%>").value;
        var params = "Shiiping=" + Shiiping + "&Billing=" + Billing + "&ShippingId=" + ShippingId;
        var oXmlHttp1 = zXmlHttp.createRequest();
        oXmlHttp1.open("POST", "../User/UpdateShiipindDetails.aspx", true);
        oXmlHttp1.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        oXmlHttp1.setRequestHeader("Content-length", params.length);
        oXmlHttp1.setRequestHeader("Connection", "close");
        oXmlHttp1.onreadystatechange = function () {
            if (oXmlHttp1.readyState == 4) {
                var getdata = oXmlHttp1.responseText.split('~');
                if (oXmlHttp1.responseText != "") {
                    if (oXmlHttp1.responseText == "1") {
                        window.open("../User/PaymentProcess.aspx", "_self");
                    }
                    else {
                        alert(oXmlHttp1.responseText);
                        document.getElementById("liProced").innerHTML = "<a href='javascript:void(0);' onclick='Validation();' title='Proceed'><img src='../images/proceed.png' alt='' /></a>";
                        document.getElementById("licancel").style.display = "block;";
                    }
                }
            }
        }
        oXmlHttp1.send(params);
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