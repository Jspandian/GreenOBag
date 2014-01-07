<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentProcess.aspx.cs" MasterPageFile="~/Master/Site.Master" MaintainScrollPositionOnPostback="true" Inherits="GreenOBagWeb.User.PaymentProcess" %>

<asp:Content ID="Index_Content" ContentPlaceHolderID="BodyContent" runat="server">
<script src="../js/html5.js"></script>
<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen">
<!-- Section main starts here -->
<%--<section class="main">--%>
	<!-- Section wrapper starts here -->
    <section class="wrapper">
    	<%--<header>
        	<h1><a href="index.html" title="Green Bag">Green Bag</a></h1>
            <ul class="nav">
            	<li><a href="greenomart.html" title="GreenOMart" style="padding-left:49px;width:195px;">GreenOMart</a></li>
                <li><a href="#" title="GreenOGift" style="padding-left:57px;width:187px;">GreenOGift</a></li>
                <li><a href="#" title="GreenOExport">GreenOExport</a></li>
            </ul>
        </header>
        <article class="submenu">
        	<ul class="submenulink">
            	<li><a href="#" title="About Us">About Us</a></li>
                <li><a href="#" title="Offers">Offers</a></li>
                <li><a href="#" title="New Arrival/Range">New Arrival/Range</a></li>
                <li><a href="#" title="Contact Us">Contact Us</a></li>
            </ul>
            <ul class="icons">
            	<li class="gift"><a href="#" title="Gift Voucher">Gift Voucher</a></li>
                <li class="toys atoys"><a href="sign-in-register.html" title="Checkout">Checkout</a></li>
                <li class="heart"><a href="#" title="Favourite">Favourite</a></li>
                <li class="shopping"><a href="greenomart-shopping-bag.html" title="Shopping Cart">Shopping Cart</a></li>
            </ul>--%><div class="clear"></div>
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
                <li ><a href="javascript:void(0);"><big >2</big><b >Shipping Details</b></a></li>
                <li class="tabact"><a href="javascript:void(0);"><big class="larget">3</big><b class="smallt">Payment Process</b></a></li>
                <li><a href="javascript:void(0);"><big>4</big><b>Order Confirmation</b></a></li>
            </ul>
            <article class="userdetailin">            	
                <h3>Select Your Payment Options</h3>
                <article class="shipping-detail">
                	<aside class="payoption">
                        <ul class="cardtype">
                            <li onClick="GetChange('rdDebitCard')"><i><asp:RadioButton Checked="true" ID="rdDebitCard" runat="server"   GroupName="DC" /></i><em>Pay by Debit Card</em></li>
                            <li onClick="GetChange('rdCreditCard')"><i><asp:RadioButton ID="rdCreditCard" runat="server"  GroupName="DC" /></i><em>Pay by Credit Card</em></li>
                            <li onClick="GetChange('rdNetBank')"><i><asp:RadioButton  ID="rdNetBank" runat="server"   GroupName="DC" /></i><em>Pay by Net Banking</em></li>
                            <li style="display:none" onClick="toggle2('recommend01')"><i><asp:RadioButton  runat="server" ID="rdCash"  GroupName="DC" /></i><em>Pay by Cash on Delivery</em></li>
                            <%--<li><i><input type="radio" name="DC"></i><em><cite>Pay with</cite> <code><img src="images/paypal.png" alt=""></code></em></li>--%>
                        </ul>
                      
                    </aside>
                    <aside class="payment">
                        <ul>
                            <li><cite>Sub Total:</cite><code>Rs. <asp:Label runat="server" ID="lblSubTotal"></asp:Label></code></li>
                            <%--<li><cite>Estimated Tax:</cite><code>Rs. <asp:Label runat="server" ID="lblEstimatedTax"></asp:Label></code></li>--%>
                        </ul>
                        <dl>
                            <dt>Grand Total:</dt>
                            <dd>Rs. <asp:Label runat="server" ID="lblGrandTotal"></asp:Label></dd>
                        </dl>
                    </aside>
                    <ul class="btns1" style="padding-bottom:30px;padding-top:30px;padding-left:250px;">
                    <li><a href="#" title="Proceed to pay now">
                    <%--<img src="../images/pay.gif" alt="">--%>
                    <asp:ImageButton runat="server" ID="imgbtnProcess" OnClick="imgbtnProcess_OnClick" OnClientClick="return ValidatePayment();"  ImageUrl="../images/pay.gif" />
                    <img id="imgProcess" style="display:none" src="../images/spin.gif" alt="">
                    </a></li>
                    <li style="padding-top:5px;#width:200px;">Next:<br>Step 4 - Order Confirmation</li>
                </ul>
                </article> 
                </article>
                <%--<ul class="btns1" style="padding-bottom:30px;padding-top:30px;padding-left:300px;margin-top:50px;">
                    <li><a href="#" title="Proceed"><img src="../images/proceed.png" alt=""></a></li>
                    <li><a href="#" title="Cancel"><img src="../images/Cancel.png" alt=""></a></li>
                    <li style="padding-top:5px;#width:150px;">Next:<br>Step 2 - Shipping Details </li>
                </ul>--%>
        </article>
    </section>
   
<link href='http://fonts.googleapis.com/css?family=Bitter:400,700' rel='stylesheet' type='text/css'>
<script type="text/javascript">
    function changeChkBox(intId, strClassName, strOn, strOff) {
        if (document.getElementById(strClassName + intId).className == strOn) {
            document.getElementById(strClassName + intId).className = strOff;
        } else {
            document.getElementById(strClassName + intId).className = strOn;
        } 
    }
</script>
<script type="text/javascript">
    function usertab(t) {
        for (i = 1; i <= 4; i++) {
            if (t == "u" + i + "") {
                document.getElementById("users" + i + "").className = "tab_select1";
                document.getElementById("ur" + i + "").style.display = 'block';
            }
            else {
                document.getElementById("users" + i + "").className = "tab_unselect1";
                document.getElementById("ur" + i + "").style.display = 'none';
            }
        }
    }
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
    function changeChkBox(intId, strClassName, strOn, strOff) {
        if (document.getElementById(strClassName + intId).className == strOn) {
            document.getElementById(strClassName + intId).className = strOff;
        } else {
            document.getElementById(strClassName + intId).className = strOn;
        }
    }
</script>
<script type="text/javascript">
    function toggle2(show, hide) {
        if (!hide) {
            var el = document.getElementById(show);
            if (el.style.display != "none") {
                el.style.display = 'none';
                document.getElementById("BodyContent_rdCash").checked = false;
                document.getElementById("BodyContent_rdDebitCard").checked = true;
            }
            else {
                el.style.display = "";
                document.getElementById("BodyContent_rdCash").checked = true;
            }
        } else {
            document.getElementById("BodyContent_rdCash").checked = true;
            document.getElementById(hide).style.display = "none";
            document.getElementById(show).style.display = "block";


        }
    }

</script>
<script type="text/javascript">
    function GetChange() {
        document.getElementById('recommend01').style.display = "none";
    }

    function trim(str) {
        return str.replace(/^\s+|\s+$/g, '');
    }

    function ValidatePayment() {
        if (document.getElementById("<%=rdCash.ClientID%>").checked == true) {            
            return false;
        }
        else {
            var s = confirm('Please verify once again before Proceed ?');
            if (s == true) {
                document.getElementById("BodyContent_imgbtnProcess").style.display = "none";
                document.getElementById("imgProcess").style.display = "block";
                return true;
            } else return false;


        }
    }


    function CheckVarificationCode() {
        alert('Please enter correct verificaton code');
        toggle2('recommend01');
    }
</script>
<!--[if IE 8]>
<style type="text/css">
dl.shippform dd.inputshipp input{width:363px;float:left;border:0;background:none;color:#000;font:400 16px 'Bitter', serif;font-style:normal;height:31px;margin:17px 10px 0;}
</style>
<![endif]-->
</asp:Content>
