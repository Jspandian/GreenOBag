<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderConfirmation.aspx.cs" Inherits="GreenOBagWeb.User.OrderConfirmation" MasterPageFile="~/Master/Site.Master" %>

<asp:Content ID="Index_Content" ContentPlaceHolderID="BodyContent" runat="server">

<script src="../js/html5.js"></script>
<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen">

    <section class="wrapper">
    	<div class="clear"></div>
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
                <li><a href="javascript:void(0);"><big>3</big><b>Payment Process</b></a></li>
                <li class="tabact"><a href="javascript:void(0);"><big class="larget">4</big><b class="smallt">Order Confirmation</b></a></li>
            </ul>
            <div id="orderdiv" runat="server">
            <%--<article class="userdetailin">            	
                <h3><img src="../images/tick.gif" alt=""> &nbsp;Your booking was successful</h3>
                <article class="shipping-detail" style="padding-bottom:50px;padding-top:50px;">
                	<aside class="yellowbox">
                        <aside class="yellowbox-lt">
                            <b>Dear <span>Harish Anand Thilakan,</span></b>
                            <big>Thank you for shopping with GreenOBag.com</big>
                            <strong>Your Order Code is: 317568</strong>
                            <p>Your preferred mode of payment is CC/Debit/Net-Banking. Prepaid<br> orders are processed and shipped post realization of payment.</p>
                        </aside>
                        <aside class="yellowbox-rt">
                            <aside class="yellowbox-rt1">
                                <p><span>Shipping Address:</span></p>
                                <p>Harish Anand Thilakan<br>CG, Alsa Windsor,<br>23, Kothari Road,<br>Nungamabakkam,<br>Chennai, Tamil Nadu 600034<br>India.</p>
                            </aside>
                            <aside class="yellowbox-rt2">
                                <p><span>Phone:</span></p>
                                <p>+91 9840055418</p>
                            </aside>
                        </aside>
                    </aside>
                    <table width="860" border="0" cellspacing="0" cellpadding="0">
                      <tr class="thead1">
                        <td width="305" align="left" style="border-left:0;">Product Name</td>
                        <td width="112" align="left">Product Code</td>
                        <td width="69" align="right">Quantity</td>
                        <td width="111" align="right">Unit Price</td>
                        <td width="203" align="right">Total</td>
                      </tr>
                      <tr class="thead2">
                        <td style="border-left:0;">Tote bag</td>
                        <td>PKSS0992</td>
                        <td align="right">2</td>
                        <td align="right">Rs. 18,500</td>
                        <td align="right">Rs. 37,000</td>
                      </tr>
                      <tr class="thead3">
                        <td style="border-left:0;">Shoppig bag</td>
                        <td>WSS0235</td>
                        <td align="right">4</td>
                        <td align="right">Rs. 20,500</td>
                        <td align="right">Rs. 82,000</td>
                      </tr>
                      <tr class="thead2">
                        <td style="border-left:0;">Designer bag</td>
                        <td>CS6378</td>
                        <td align="right">1</td>
                        <td align="right">Rs. 15,500</td>
                        <td align="right">Rs. 15,500</td>
                      </tr>
                      <tr class="thead3">
                        <td style="border-left:0;">Wallets</td>
                        <td>PKSS0992</td>
                        <td align="right">2</td>
                        <td align="right">Rs. 10,800</td>
                        <td align="right">Rs. 21,600</td>
                      </tr>
                      <tr class="thead2">
                        <td style="border-left:0;">Utility bag</td>
                        <td>CS0244</td>
                        <td align="right">1</td>
                        <td align="right">Rs. 7,300</td>
                        <td align="right">Rs. 7,300</td>
                      </tr>
                      <tr class="thead4">
                        <td colspan="5" align="right">Total Price Rs. 1,63,400</td>                       
                      </tr>
                    </table>
                </article> 
                </article>--%>
                </div>
        </article>
    </section>
  
</section>
<!-- Section main ends here -->
<!-- Google Fonts Starts here -->
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
<!--[if IE 8]>
<style type="text/css">
dl.shippform dd.inputshipp input{width:363px;float:left;border:0;background:none;color:#000;font:400 16px 'Bitter', serif;font-style:normal;height:31px;margin:17px 10px 0;}
</style>
<![endif]-->
<script type="text/javascript">
    function toggle2(show, hide) {
        if (!hide) {
            var el = document.getElementById(show);
            if (el.style.display != "none")
            { el.style.display = 'none'; }
            else
            { el.style.display = ""; }
        } else {
            document.getElementById(hide).style.display = "none";
            document.getElementById(show).style.display = "block";
        } 
    }
</script>
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
</asp:Content>