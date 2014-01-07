<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Myaccount.aspx.cs" Inherits="GreenOBagWeb.MyAccount.Myaccount" MaintainScrollPositionOnPostback="true" MasterPageFile="~/Master/Site.Master" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>
<asp:Content ID="Index_Content" ContentPlaceHolderID="BodyContent" runat="server">
    <%--<asp:HiddenField ID="HiddenField1" runat="server" />--%>
    <input type="hidden" id="Hdn_State" runat="server" />
<%--<ajax:ToolkitScriptManager ID="ScriptManager1" runat="server"/>--%>
<script src="../js/zxml.src.js"></script>
<link href="../css/Validate.css" rel="stylesheet" type="text/css" />
<%--<script src="../js/html5.js"></script>
<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen">--%>
<script type="text/javascript" src="../js/menu.js"></script>

<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
  <script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>  
  <script>
      $(document).ready(function () {
          $("#datepicker").datepicker();
      });
  </script>
<script type="text/javascript" src="../src/jsScroller.js"></script>
<script type="text/javascript" src="../src/jsScrollbar.js"></script>
        <link href="../js/jquery.autocomplete.css" rel="stylesheet" />
    <script src="../js/jquery.autocomplete.js"></script>
<script type="text/javascript">
    var scroller = null;
    var scrollbar = null;
    window.onload = function () {
        scroller = new jsScroller(document.getElementById("Scroller-1"), 400, 200);
        scrollbar = new jsScrollbar(document.getElementById("Scrollbar-Container"), scroller, false);
    }
</script>
<script type="text/javascript">
    function trim(str) {
        return str.replace(/^\s+|\s+$/g, '');
    }
    function validationforchangepwd() {

        if (document.getElementById("txtnpwd").value.trim() == "") {
            hidediv();
            document.getElementById("lbltxtnpwd").style.display = "block";
            document.getElementById("lbltxtnpwd").innerHTML = "<span>Please enter New password</span>";
            return false;
        }
        else if ((trim(document.getElementById("txtnpwd").value).length < 5) || (trim(document.getElementById("txtnpwd").value).length > 11)) {
            hidediv();
            document.getElementById("lbltxtnpwd").style.display = "block";
            document.getElementById("lbltxtnpwd").innerHTML = "<span>Password length min 6 and max 10 characters</span>";

            return false;
        }
        else if (document.getElementById("txtconpwd").value.trim() == "") {
            hidediv();
            document.getElementById("lbltxtconpwd").style.display = "block";
            document.getElementById("lbltxtconpwd").innerHTML = "<span>Please enter Confirm password</span>";
            return false;
        }
        else if (trim(document.getElementById("txtnpwd").value) != trim(document.getElementById("txtconpwd").value)) {
            hidediv();
            document.getElementById("lbltxtconpwd").style.display = "block";
            document.getElementById("lbltxtconpwd").innerHTML = "<span>Your password and confirmation password do not match.</span>";
            return false;
        }
        else {
            hidediv();
            var EmailId = document.getElementById("txtpwduname").value;
            var Password = document.getElementById("txtnpwd").value;
            var type = 'changepwd';
            var params = "EmailId=" + EmailId + "&Password=" + Password + "&type=" + type;
            var oXmlHttp1 = zXmlHttp.createRequest();
            oXmlHttp1.open("POST", "../MyAccount/WebForm1.aspx", true);
            oXmlHttp1.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            oXmlHttp1.setRequestHeader("Content-length", params.length);
            oXmlHttp1.setRequestHeader("Connection", "close");
            oXmlHttp1.onreadystatechange = function () {
                if (oXmlHttp1.readyState == 4) {
                    var getdata = oXmlHttp1.responseText.split('~');
                    if (oXmlHttp1.responseText != "") {
                        //alert(getdata[0]);                        
                        document.getElementById("Success_Pass_inline4").innerHTML = "Your password has been changed<br>successfully."
                        document.getElementById("Success_Pass_inline4").className = "has";
                        document.getElementById("Success_Pass_inline4").style.display = "block";
                        document.getElementById("i_Mand").style.paddingTop = "0px";
                        document.getElementById("BodyContent_dvGeneralInfo").innerHTML = getdata[1];
                        document.getElementById("BodyContent_dvLoginInfo").innerHTML = getdata[2];
                        document.getElementById("BodyContent_dvAddressBook").innerHTML = getdata[3];
                        document.getElementById("<%=hdpwd.ClientID%>").vaue = getdata[4];
                        document.getElementById("imgcngpwd").style.display = "none";
                        document.getElementById("BodyContent_btncngpwd").style.display = "block";
                        //document.getElementById("BodyContent_btncler").style.display = "block";
                        usertabc('uc1');
                        Clearpwd();
                         //$.fancybox.close();
                        //Changeurlpwd();

                    }
                }
            }
            oXmlHttp1.send(params);
            document.getElementById("imgcngpwd").style.display = "block";
            document.getElementById("BodyContent_btncngpwd").style.display = "none";
            //document.getElementById("BodyContent_btncler").style.display = "none";
        }

    }
    function Changeurlpwd() {
        top.location.href = "../MyAccount/Myaccount.aspx";
    }
    function Clearpwd() {
        document.getElementById("txtconpwd").value = "";
        document.getElementById("txtnpwd").value = "";
    }
</script>
<script type="text/javascript">
     function ValidationUpdation() {
         if (document.getElementById("txtfname").value.trim() == "") {
             hidediv();
             document.getElementById("lbltxtfname").style.display = "block";
             document.getElementById("lbltxtfname").innerHTML = "<span>Please enter Name</span>";
             return false;
         }
         else if (document.getElementById("txtumobileno").value.trim() == "") {                       
            hidediv();
             document.getElementById("lbltxtumobileno").style.display = "block";
             document.getElementById("lbltxtumobileno").innerHTML = "<span>Please enter Phone number</span>";
             return false;
         }
         else if (!document.getElementById("txtumobileno").value.match(/^\d{10}$/)) {             
             hidediv();
             document.getElementById("lbltxtumobileno").style.display = "block";
             document.getElementById("lbltxtumobileno").innerHTML = "<span>Please enter valid Phone number</span>";
             return false;
         }
         else if (document.getElementById("txtuemail").value.trim() == "") {             
             hidediv();
             document.getElementById("lbltxtuemail").style.display = "block";
             document.getElementById("lbltxtuemail").innerHTML = "<span>Please enter E-mail Id</span>";
             return false;
         }
         else if (!document.getElementById("txtuemail").value.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/)) {             
             hidediv();
             document.getElementById("lbltxtuemail").style.display = "block";
             document.getElementById("lbltxtuemail").innerHTML = "<span>Please enter valid E-mail Id</span>";
             return false;
         }
         else if (document.getElementById("txtucity").value.trim() == "") {            
            hidediv();
             document.getElementById("lbltxtucity").style.display = "block";
             document.getElementById("lbltxtucity").innerHTML = "<span>Please enter City</span>";
             return false;
         }
         else if (document.getElementById("BodyContent_txtstate").value.trim() == "") {
            hidediv();
             document.getElementById("lblstate").style.display = "block";
             document.getElementById("lblstate").innerHTML = "<span>Please enter City</span>";
             return false;
         }
         else if (document.getElementById("txtuzipcode").value.trim() == "") {
             hidediv();
             document.getElementById("lbltxtuzipcode").style.display = "block";
             document.getElementById("lbltxtuzipcode").innerHTML = "<span>Please enter City</span>";
             return false;
         }
         
         else {

             hidediv();
             var Name = document.getElementById("txtfname").value;
             var Mobile = document.getElementById("txtumobileno").value;
             var Email = document.getElementById("txtuemail").value;
             var City = document.getElementById("txtucity").value;
             var State = document.getElementById("BodyContent_txtstate").value;
             var Zipcode = document.getElementById("txtuzipcode").value;
             var type = 'general';
             var params = "Name=" + Name + "&Mobile=" + Mobile + "&Email=" + Email + "&City=" + City + "&State=" + State + "&Zipcode=" + Zipcode + "&type=" + type;
             var oXmlHttp1 = zXmlHttp.createRequest();
             oXmlHttp1.open("POST", "../MyAccount/WebForm1.aspx", true);
             oXmlHttp1.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
             oXmlHttp1.setRequestHeader("Content-length", params.length);
             oXmlHttp1.setRequestHeader("Connection", "close");
             oXmlHttp1.onreadystatechange = function () {
                 if (oXmlHttp1.readyState == 4) {
                     var getdata = oXmlHttp1.responseText.split('~');
                     if (oXmlHttp1.responseText != "") {
                         alert("Your user details has been changed successfully.");
                         document.getElementById("BodyContent_dvGeneralInfo").innerHTML = getdata[1];
                         document.getElementById("BodyContent_dvLoginInfo").innerHTML = getdata[2];
                         document.getElementById("BodyContent_dvAddressBook").innerHTML = getdata[3];
                         document.getElementById("<%=hdpwd.ClientID%>").vaue = getdata[4];
                         document.getElementById("imgaSubmit").style.display = "none";
                         document.getElementById("imgSubmit").style.display = "block";
                         document.getElementById("aCancel").style.display = "block";
                         document.getElementById("imgCancle").style.display = "block";
                         usertabc('uc1');
                         //Changeurl();
                         $.fancybox.close();
                     }
                 }
             }
             oXmlHttp1.send(params);
             document.getElementById("imgaSubmit").style.display = "block";
             document.getElementById("imgSubmit").style.display = "none";
             document.getElementById("aCancel").style.display = "none";
             document.getElementById("imgCancle").style.display = "none";

         }


     }

    function Changeurl() {
        top.location.href = "../MyAccount/Myaccount.aspx";
    }
    function Clear() {
        document.getElementById("txtfname").value = "";
        document.getElementById("txtumobileno").value = "";
        document.getElementById("txtuemail").value = "";
        document.getElementById("txtucity").value = "";
        document.getElementById("BodyContent_txtstate").value = "";
        document.getElementById("txtuzipcode").value = "";

    }
    function hidediv() {

        document.getElementById("lbltxtuemail").style.display = "none";
        document.getElementById("lbltxtumobileno").style.display = "none";
        document.getElementById("lbltxtfname").style.display = "none";
        document.getElementById("lbltxtucity").style.display = "none";
        document.getElementById("lblstate").style.display = "none";
        document.getElementById("lbltxtuzipcode").style.display = "none";
        document.getElementById("lbltxtconpwd").style.display = "none";
        document.getElementById("lbltxtnpwd").style.display = "none";        
        document.getElementById("lbltxtshipstate").style.display = "none";
        document.getElementById("lbltxtshipphoneno").style.display = "none";
        document.getElementById("lbltxtshipincode").style.display = "none";
        document.getElementById("lbltxtshipcity").style.display = "none";
        document.getElementById("lbltxtshipaddress").style.display = "none";
        document.getElementById("lbltxtshipfname").style.display = "none";
    }
</script>
<script type="text/javascript">
    function Edit(id) {
        if (id == '1') {

            var Name = document.getElementById('txtuname').innerHTML;
            var Mobile = document.getElementById('txtmobileno').innerHTML;
            var EmailID = document.getElementById('txtemailid').innerHTML;
            var City = document.getElementById('txtcity').innerHTML;
            var State = document.getElementById('txtstate').innerHTML;            
            var Zipcode = document.getElementById('txtzipcode').innerHTML;
            document.getElementById("txtfname").value = Name;
            document.getElementById("txtumobileno").value = Mobile;
            document.getElementById("txtuemail").value = EmailID;
            document.getElementById("txtucity").value = City;
            document.getElementById("BodyContent_txtstate").value = State;
            document.getElementById("txtuzipcode").value = Zipcode;
        }
        else if (id == '2') {
            document.getElementById("Success_Pass_inline4").style.display = "none";
            document.getElementById("i_Mand").style.paddingTop = "30px";
            var EmailIdPwd = document.getElementById('txtupwdemailid').innerHTML;
            var Pwd = document.getElementById("<%=hdpwd.ClientID%>").value;
            document.getElementById('txtpwduname').value = EmailIdPwd;
            document.getElementById('txtcpwd').value = Pwd;
        }

    }
    </script>
<script type="text/jscript">
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
<script type="text/javascript">

        function Editshippaddress(id) {
            var shipFirstName = document.getElementById("shipaddfname" + id).innerHTML;
            var PhoneNo = document.getElementById("shipaddphone" + id).innerHTML;
            var Addesss = document.getElementById("shipaddress" + id).innerHTML;
            var City = document.getElementById("shipaddcity" + id).innerHTML;
            var State = document.getElementById("shipaddstate" + id).innerHTML;
            var PinCode = document.getElementById("shipaddpostcode" + id).innerHTML;
            var ShippingId = document.getElementById("shipaddshipno" + id).innerHTML;
            
            document.getElementById("txtshipfname").value = shipFirstName;
            document.getElementById("txtshipaddress").value = Addesss;
            document.getElementById("txtshipcity").value = City;
            document.getElementById("txtshipincode").value = PinCode;
            document.getElementById("txtshipphoneno").value = PhoneNo;
            document.getElementById("BodyContent_txtshipstate").value = State;
            document.getElementById("shipid").value = ShippingId;
            
        }
    </script>
<script type="text/javascript">

        function Editdelete(id) {
            var r = confirm('Are you sure want to delete?');
            if (r == true) {
                EditdeleteAdress(id)
            }
        }

        function EditdeleteAdress(id) {

            var Name = document.getElementById("shipaddfname" + id).innerHTML;
            var PhoneNo = document.getElementById("shipaddphone" + id).innerHTML;
            var Addesss = document.getElementById("shipaddress" + id).innerHTML;
            var City = document.getElementById("shipaddcity" + id).innerHTML;
            var State = document.getElementById("shipaddstate" + id).innerHTML;
            var PinCode = document.getElementById("shipaddpostcode" + id).innerHTML;
            var ShippingId = document.getElementById("shipaddshipno" + id).innerHTML;
            var type = 'delete';
            var params = "Name=" + Name + "&PhoneNo=" + PhoneNo + "&Addesss=" + Addesss + "&City=" + City + "&State=" + State + "&PinCode=" + PinCode + "&ShippingId=" + ShippingId + "&type=" + type;
            //alert(params);
            var oXmlHttp1 = zXmlHttp.createRequest();
            oXmlHttp1.open("POST", "../MyAccount/WebForm1.aspx", true);
            oXmlHttp1.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            oXmlHttp1.setRequestHeader("Content-length", params.length);
            oXmlHttp1.setRequestHeader("Connection", "close");
            oXmlHttp1.onreadystatechange = function () {
                if (oXmlHttp1.readyState == 4) {
                    var getdata = oXmlHttp1.responseText.split('~');
                    
                    if (oXmlHttp1.responseText != "") {
                        document.getElementById("BodyContent_btnshiping").ImageUrl = '../images/lightbox/update.gif';
                        alert("Your Address has been deleted successfully.");
                        document.getElementById("BodyContent_dvGeneralInfo").innerHTML = getdata[1];
                        document.getElementById("BodyContent_dvLoginInfo").innerHTML = getdata[2];
                        document.getElementById("BodyContent_dvAddressBook").innerHTML = getdata[3];
                        document.getElementById("<%=hdpwd.ClientID%>").vaue = getdata[4];
                        document.getElementById("closediv").style.display = "none";
                        document.getElementById("inline2").style.display = "none";
                        usertabc('uc1');                        
                        document.location.reload(true);
                    }
                }
            }
            oXmlHttp1.send(params);           
            document.getElementById("BodyContent_btnshiping").ImageUrl = '../images/spin.gif';

        }
        
    </script>
<script type="text/javascript">

    function validationforshipping() {
        if (document.getElementById("txtshipfname").value.trim() == "") {           
            hidediv();
            document.getElementById("lbltxtshipfname").style.display = "block";
            document.getElementById("lbltxtshipfname").innerHTML = "<span>Please enter Full Name</span>";
            return false;
        }
        else if (document.getElementById("txtshipphoneno").value.trim() == "") {

            hidediv();
            document.getElementById("lbltxtshipphoneno").style.display = "block";
            document.getElementById("lbltxtshipphoneno").innerHTML = "<span>Please enter PhoneNo</span>";
            return false;
        }
        else if (!document.getElementById("txtshipphoneno").value.match(/^\d{10}$/)) {

            hidediv();
            document.getElementById("lbltxtshipphoneno").style.display = "block";
            document.getElementById("lbltxtshipphoneno").innerHTML = "<span>Please enter valid Phone number</span>";
            return false;
        }
        else if (document.getElementById("txtshipaddress").value.trim() == "") {
           
            hidediv();
            document.getElementById("lbltxtshipaddress").style.display = "block";
            document.getElementById("lbltxtshipaddress").innerHTML = "<span>Please enter address </span>";
            return false;
        }
        else if (document.getElementById("txtshipcity").value.trim() == "") {
            
            hidediv();
            document.getElementById("lbltxtshipcity").style.display = "block";
            document.getElementById("lbltxtshipcity").innerHTML = "<span>Please enter City </span>";
            return false;
        }
        else if (document.getElementById("BodyContent_txtshipstate").value.trim() == "") {

            hidediv();
            document.getElementById("lbltxtshipstate").style.display = "block";
            document.getElementById("lbltxtshipstate").innerHTML = "<span>Please enter State</span>";
            return false;
        }
        else if (document.getElementById("txtshipincode").value.trim() == "") {
           
            hidediv();
            document.getElementById("lbltxtshipincode").style.display = "block";
            document.getElementById("lbltxtshipincode").innerHTML = "<span>Please enter PinCode</span>";
            return false;
        }        
       
        else {

            hidediv();
            var Name = document.getElementById("txtshipfname").value;
            var PhoneNo = document.getElementById("txtshipphoneno").value;
            var Addesss = document.getElementById("txtshipaddress").value;
            var City = document.getElementById("txtshipcity").value;
            var State = document.getElementById("BodyContent_txtshipstate").value;
            var PinCode = document.getElementById("txtshipincode").value;
            var ShippingId = document.getElementById("shipid").value;            
            var type = 'shipping';
            var params = "Name=" + Name + "&PhoneNo=" + PhoneNo + "&Addesss=" + Addesss + "&City=" + City + "&State=" + State + "&PinCode=" + PinCode + "&ShippingId=" + ShippingId + "&type=" + type;
            var oXmlHttp1 = zXmlHttp.createRequest();
            oXmlHttp1.open("POST", "../MyAccount/WebForm1.aspx", true);
            oXmlHttp1.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            oXmlHttp1.setRequestHeader("Content-length", params.length);
            oXmlHttp1.setRequestHeader("Connection", "close");
            oXmlHttp1.onreadystatechange = function () {
                if (oXmlHttp1.readyState == 4) {
                    var getdata = oXmlHttp1.responseText.split('~');
                    //  var getdata = oXmlHttp1.responseText;
                    if (oXmlHttp1.responseText != "") {
                        alert(getdata[0]);
                        document.getElementById("BodyContent_dvGeneralInfo").innerHTML = getdata[1];
                        document.getElementById("BodyContent_dvLoginInfo").innerHTML = getdata[2];
                        document.getElementById("BodyContent_dvAddressBook").innerHTML = getdata[3];
                        document.getElementById("<%=hdpwd.ClientID%>").vaue = getdata[4];
                        document.getElementById("BodyContent_btnshiping").src = '../lightbox/update.gif';
                        document.getElementById("btnclearship").src = "../images/cancel.gif";
                        usertabc('uc1');
                        ClearshippingDetails();
                        $.fancybox.close();
                    }
                }
            }
            oXmlHttp1.send(params);
            document.getElementById("BodyContent_btnshiping").src = '../images/spin.gif';
            document.getElementById("btnclearship").style.display = "none";
        }
    }
    function ClearshippingDetails() {
        document.getElementById("txtshipfname").value="";
        document.getElementById("txtshipphoneno").value="";
        document.getElementById("txtshipaddress").value="";
        document.getElementById("txtshipcity").value="";
        document.getElementById("BodyContent_txtshipstate").value="";
        document.getElementById("txtshipincode").value=""; 
    }
</script>
<script type="text/javascript">
    function CheckWishQty(val) {
        if (document.getElementById("txtWishQty" + val).value == "" || document.getElementById("txtWishQty" + val).value == "0") {
            document.getElementById("txtWishQty" + val).value = "1";
        }
    }

    function isNumberKey(evt, val) {
        var charCode = (evt.which) ? evt.which : event.keyCode
        return !(charCode > 31 && (charCode < 48 || charCode > 57));
    }

    function AddShoppingCartList(ProductId, CurVal) {

        var Qty = document.getElementById("txtWishQty" + CurVal).value;
        var params = "ProductId=" + ProductId + "&Qty=" + Qty + "&Flag=" + "SAVE";
        var oXmlHttp1 = zXmlHttp.createRequest();
        oXmlHttp1.open("POST", "../Collection/AddShoppingCart.aspx", true);
        oXmlHttp1.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        oXmlHttp1.setRequestHeader("Content-length", params.length);
        oXmlHttp1.setRequestHeader("Connection", "close");
        oXmlHttp1.onreadystatechange = function () {
            if (oXmlHttp1.readyState == 4) {
                var getdata = oXmlHttp1.responseText.split('~');
                if (oXmlHttp1.responseText != "") {
                    if (oXmlHttp1.responseText != 0) {
                        window.open("../Shopping/Shopping-Bag.aspx", "_self");
                    }
                }
            }
        }
        oXmlHttp1.send(params);
        document.getElementById("aaddshoppingList" + CurVal).innerHTML = "<img width='20' height='20' src='../images/spin.gif' alt=''>";
    }

    function RemoveWishItem(ProductId, curval) {

        var params = "ProductId=" + ProductId + "&WishFlag=" + "REMOVE";
        var oXmlHttp1 = zXmlHttp.createRequest();
        oXmlHttp1.open("POST", "../Collection/AddWishList.aspx", true);
        oXmlHttp1.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        oXmlHttp1.setRequestHeader("Content-length", params.length);
        oXmlHttp1.setRequestHeader("Connection", "close");
        oXmlHttp1.onreadystatechange = function () {
            if (oXmlHttp1.readyState == 4) {
                var getdata = oXmlHttp1.responseText.split('~');
                if (oXmlHttp1.responseText != "") {
                    if (oXmlHttp1.responseText == 11) {
                        alert("Please login before save the product in wish list.");
                        document.getElementById("aRemoveWishlist" + curval).innerHTML = "Remove";
                        
                        
                    }
                    else {

                        window.open("../MyAccount/Myaccount.aspx?tab=3", "_self");
                       
                    }
                }
            }
        }
        oXmlHttp1.send(params);
        document.getElementById("aRemoveWishlist" + curval).innerHTML = "<img width='20' height='20' src='../images/spin.gif' alt=''>";

    }
</script>
    
<style type="text/css">
.Container {
  position:absolute;
  top:40px;
  left:0;
  width:395px;
  height:660px;
  background-color:#fffce6;
}
#Scroller-1 { 
  position:absolute; 
  overflow:hidden;
  width:395px;
  height:640px;
}
.Scroller-Container{
  position:absolute;
  top:0; 
  left:0;
}
.Scrollbar-Track 
{
  width:10px; 
  height:620px;
  position:absolute;
  top:60px;
  left:370px;
  background-color:#e3e3e3;
}
.Scrollbar-Handle {
  position:absolute;
  top:0;
  left:0;
  width:14px; 
  height:34px;
  background:url('../src/track.png') 0 0 no-repeat;
}
</style>
  <asp:HiddenField runat="server" ID="hdpwd" Value="0" />
    <section class="wrapper">
    	<%--<header>
        	<h1><a href="index.html" title="Green Bag">Green Bag</a></h1>
            <ul class="nav" id="chromemenu">
            	<li><a href="greenomart.html" title="GreenOMart" style="padding-left:49px;width:195px;" rel="dropmenu1">GreenOMart</a></li>
                <li><a href="greenogift.html" title="GreenOGift" style="padding-left:57px;width:187px;" rel="dropmenu2">GreenOGift</a></li>
                <li><a href="#" title="GreenOExport">GreenOExport</a></li>
            </ul>
            <!--1st drop down menu -->                                                   
            <div id="dropmenu1" class="dropmenudiv">
            	<div class="bgtop">&nbsp;</div>
                <div class="bgmdl">
                    <a href="#" title="Laptop Bags">Laptop Bags</a>
                    <a href="#" title="Shopping Bags">Shopping Bags</a>
                    <a href="greenomart-description.html" title="Hand Bags">Hand Bags</a>
                    <a href="#" title="Tote Bags">Tote Bags</a>
                    <a href="#" title="Mens Bags">Mens Bags</a>
                    <a href="#" title="Designer Bags">Designer Bags</a>
                    <a href="#" title="Wallets">Wallets</a>
                    <a href="#" title="Utility Bags">Utility Bags</a>
                </div>
                <div class="bgbtm">&nbsp;</div>
            </div>
            <!--2nd drop down menu -->                                                
            <div id="dropmenu2" class="dropmenudiv">
            	<div class="bgtop">&nbsp;</div>
                <div class="bgmdl">
                    <a href="#" title="Corporate">Corporate</a>
                    <a href="#" title="Wedding">Wedding</a>
                    <a href="greenogift-description.html" title="Festive">Festive</a>
                    <a href="#" title="Utility">Utility</a>
                </div>
                <div class="bgbtm">&nbsp;</div>
            </div>
            <script type="text/javascript">
                cssdropdown.startchrome("chromemenu")
			</script>
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
                <li class="toys atoys"><a href="login.html" title="Login">Login</a></li>
                <li class="heart"><a href="#" title="Favourite">Favourite</a></li>
                <li class="shopping"><a href="greenomart-shopping-bag.html" title="Shopping Cart">Shopping Cart</a></li>
            </ul>--%>
            <%--<script type="text/javascript">
                cssdropdown.startchrome("chromemenu")
			</script>--%>
            <div class="clear"></div>
            <ul class="breadcrumb">
            	<li><a href="index.html" title="Home">Home</a></li>
                <li>&gt;</li>
                <li><a href="#" title="GreenOBag ">GreenOBag </a></li>
                <li>&gt;</li>
                <li>My Account</li>
            </ul>
        </article>
        <article class="userdetail">
        	<h2>My Account</h2>
        	<!-- article account starts here -->
                    <article class="account">
                    	<!-- article account-top starts here -->
                        <article class="account-top">
                        	<aside class="profileimg"><img src="../images/photo.jpg" alt=""></aside>
                            <strong id="strongUserName" runat="server">Welcome Mr. Harish Anand Thilakan<br><small><a href="#">Edit Profile Picture</a></small></strong>
                            
                            <ul class="change">
                            	<li><a class="fancybox" href="#inline4" onclick="Edit(2);">Change password</a></li>
                                <li><a href="#" title="Logout"><asp:LinkButton OnClick="lbtnLoginText_Click"  runat="server" Text="Logout" ID="lbtnLogin"></asp:LinkButton></a></li>
                            </ul>
                        </article>
                        <!-- article account-top ends here -->
                        <!-- article userdetailin21out starts here -->
                        <aside class="userdetailin21out">
                        	<ul class="user_tab2">
                                <li class="tab_select2" href="javascript:void(0);" id="usersc1" onclick="usertabc('uc1');">My Profile</li>
                                <li class="tab_unselect2" href="javascript:void(0);" id="usersc2" onclick="usertabc('uc2');">Order History</li>
                                <li class="tab_unselect2" href="javascript:void(0);" id="usersc3" onclick="usertabc('uc3');">Wish List</li>
                            </ul>
                        	
                            <div id="urc1" style="display:block;">
                            	<aside class="userdetailin212">
                                	<aside class="general-lt">
                                    	<h1>General Information</h1>
                                        <div class="clear"></div>
                                        <div style="float:left;width:415px;" runat="server" id="dvGeneralInfo"></div>
                                        <%--<table width="415" border="0" cellspacing="0" cellpadding="0">
                                          <tr class="thead20">
                                            <td width="125" align="left" style="border-left:0;">Full Name</td>
                                            <td width="226" align="left">Harish Anand Thilakan</td>
                                          </tr>
                                          <tr class="thead30">
                                            <td style="border-left:0;">Phone Number</td>
                                            <td align="left">+91 9840055418</td>
                                          </tr>
                                          <tr class="thead20">
                                            <td style="border-left:0;">Email Id</td>
                                            <td align="left">harishanand@gmail.com</td>
                                          </tr>
                                          <tr class="thead30">
                                            <td style="border-left:0;">Date of Birth</td>
                                            <td align="left">24 September 1984</td>
                                          </tr>
                                          <tr class="thead20">
                                            <td style="border-left:0;">Country</td>
                                            <td align="left">India</td>
                                          </tr> 
                                          <tr class="thead30">
                                            <td style="border-left:0;">State</td>
                                            <td align="left">Tamil Nadu</td>
                                          </tr> 
                                          <tr class="thead20">
                                            <td style="border-left:0;">City</td>
                                            <td align="left">Chennai</td>
                                          </tr>                                          
                                        </table>--%>
                                        
                                        <h6><a class="fancybox" href="#inline2" onclick="Edit(1);"><img src="../images/edit.png" alt=""></a></h6>
                                        <h1>Login Information</h1>
                                        
                                        <div style="float:left;width:415px;" id="dvLoginInfo" runat="server">
                                        <%--<table width="415" border="0" cellspacing="0" cellpadding="0">
                                          <tr class="thead20">
                                            <td width="105" align="left" style="border-left:0;">User Name</td>
                                            <td width="246" align="left">harishanand@gmail.com</td>
                                          </tr>
                                          <tr class="thead30">
                                            <td style="border-left:0;">Password</td>
                                            <td align="left">***********</td>
                                          </tr>                     
                                        </table>--%>
                                        </div>
                                        <h6><a class="fancybox" href="#inline4" onclick="Edit(2);"><img src="../images/changepassword.png" alt=""></a></h6>
                                    </aside>
                                    <aside class="general-rt" style="position:relative;margin-left:15px;">
                                    	<h1>Address Book</h1>
                                        <div class="Container">
                                          <div id="Scroller-1">                                          
                                           <div class="Scroller-Container" runat="server" id="dvAddressBook">
                                              <%--<aside class="general-rtin" style="position:relative;">
                                                <aside class="general-adds">
                                                    <p><span>Harish Anand Thilakan</span><br>CG, Alsa Windsor,<br>23, Kothari Road,<br>Nungamabakkam,<br>Chennai, Tamil Nadu 600034<br>India.</p>
                                                    <p><span>Phone: +91 9840055418</span></p>
                                                    <ul class="add">
                                                        <li class="addbtn"><a class="fancybox" href="#inline5">Address Book</a></li>
                                                        <li class="delete"><a href="#" title="Delete">Delete</a></li>
                                                    </ul>
                                                </aside>
                                                <aside class="general-adds">
                                                    <p><span>Tarun Maitra</span><br>1425 W Houston Avenue<br>Fullerton, CA 92833-4605<br>United States.</p>
                                                    <p><span>Phone: +7146924014</span></p>
                                                    <ul class="add">
                                                        <li class="addbtn"><a href="#" title="Address Book">Address Book</a></li>
                                                        <li class="delete"><a href="#" title="Delete">Delete</a></li>
                                                    </ul>
                                                </aside>
                                                <aside class="general-adds">
                                                    <p><span>Influx Interactive</span><br>U26 10th Street,<br>Anna Nagar, <br>Chennai, Tamil Nadu 600040.<br>India.</p>
                                                    <p><span>Phone: +91 9840055418</span></p>
                                                    <ul class="add">
                                                        <li class="addbtn"><a href="#" title="Address Book">Address Book</a></li>
                                                        <li class="delete"><a href="#" title="Delete">Delete</a></li>
                                                    </ul>
                                                </aside>
                                                <aside class="general-adds">
                                                    <p><span>Harish Anand Thilakan</span><br>CG, Alsa Windsor,<br>23, Kothari Road,<br>Nungamabakkam,<br>Chennai, Tamil Nadu 600034<br>India.</p>
                                                    <p><span>Phone: +91 9840055418</span></p>
                                                    <ul class="add">
                                                        <li class="addbtn"><a class="fancybox" href="#inline5">Address Book</a></li>
                                                        <li class="delete"><a href="#" title="Delete">Delete</a></li>
                                                    </ul>
                                                </aside>
                                                <aside class="general-adds">
                                                    <p><span>Tarun Maitra</span><br>1425 W Houston Avenue<br>Fullerton, CA 92833-4605<br>United States.</p>
                                                    <p><span>Phone: +7146924014</span></p>
                                                    <ul class="add">
                                                        <li class="addbtn"><a href="#" title="Address Book">Address Book</a></li>
                                                        <li class="delete"><a href="#" title="Delete">Delete</a></li>
                                                    </ul>
                                                </aside>
                                                <aside class="general-adds">
                                                    <p><span>Influx Interactive</span><br>U26 10th Street,<br>Anna Nagar, <br>Chennai, Tamil Nadu 600040.<br>India.</p>
                                                    <p><span>Phone: +91 9840055418</span></p>
                                                    <ul class="add">
                                                        <li class="addbtn"><a href="#" title="Address Book">Address Book</a></li>
                                                        <li class="delete"><a href="#" title="Delete">Delete</a></li>
                                                    </ul>
                                                </aside>
                                            </aside>--%>
                                            </div>
                                          </div>
                                        </div>
                                        
                                          <div id="Scrollbar-Container">
                                            <div class="Scrollbar-Track">
                                              <div class="Scrollbar-Handle"></div>
                                            </div>
                                          </div>
                                    </aside> 
                                </aside>
                            </div>
                            <div id="urc2" style="display:none;">
                           	  <aside class="userdetailin212">
                                	<aside class="lastorder">
                                    <div id="orderidblock" runat="server">
                                    	<h5><code>Last order details</code><cite><a class="fancybox" href="#inline1">Order ID: 317568</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Date: 08 July 2013, Monday</cite></h5>
                                        </div>
                                         <div id="dvLastOrderDet" style="width:860px;float:left;"  runat="server">
                                        <%--<table width="860" border="0" cellspacing="0" cellpadding="0">
                                          <tr class="thead01">
                                            <td width="355" align="left" style="border-left:0;">Product Name</td>
                                            <td width="112" align="left">Product Code</td>
                                            <td width="69" align="right">Quantity</td>
                                            <td width="111" align="right">Unit Price</td>
                                            <td width="153" align="right">Total</td>
                                          </tr>
                                          <tr class="thead02">
                                            <td style="border-left:0;">Kanchipuram Silk Sarees</td>
                                            <td>PKSS0992</td>
                                            <td align="right">2</td>
                                            <td align="right">Rs. 18,500</td>
                                            <td align="right">Rs. 37,000</td>
                                          </tr>
                                          <tr class="thead03">
                                            <td style="border-left:0;">Soft Silk Sarees</td>
                                            <td>WSS0235</td>
                                            <td align="right">4</td>
                                            <td align="right">Rs. 20,500</td>
                                            <td align="right">Rs. 82,000</td>
                                          </tr>
                                          <tr class="thead02">
                                            <td style="border-left:0;">Concept Sarees</td>
                                            <td>CS6378</td>
                                            <td align="right">1</td>
                                            <td align="right">Rs. 15,500</td>
                                            <td align="right">Rs. 15,500</td>
                                          </tr>
                                          <tr class="thead03">
                                            <td style="border-left:0;">Light Weight Kanchipuram</td>
                                            <td>PKSS0992</td>
                                            <td align="right">2</td>
                                            <td align="right">Rs. 10,800</td>
                                            <td align="right">Rs. 21,600</td>
                                          </tr>
                                          <tr class="thead02">
                                            <td style="border-left:0;">Casual Sarees</td>
                                            <td>CS0244</td>
                                            <td align="right">1</td>
                                            <td align="right">Rs. 7,300</td>
                                            <td align="right">Rs. 7,300</td>
                                          </tr>
                                        </table>--%>
                                        </div>
                                        <div id="ordertracktotal" runat="server">
                                        <h4><em><a href="#">ORDER TRACKING</a></em><i>Total Price &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rs. 1,63,400</i></h4>
                                        </div>
                                        <aside class="previous">
                                        	<aside class="previous-lt">
                                            	<h3>Previous purchases</h3>
                                                <div runat="server" style="width:415px;float:left" id="dvPrePurChange">
                                             <%--   <table width="415" border="0" cellspacing="0" cellpadding="0">
                                                  <tr class="thead01">
                                                    <td width="70" align="left" style="border-left:0;">Date</td>
                                                    <td width="72" align="left">Order&nbsp;ID</td>
                                                    <td width="24" align="right">Qty</td>
                                                    <td width="58" align="left">Status</td>
                                                    <td width="31" align="left">View</td>
                                                  </tr>
                                                  <tr class="thead04">
                                                    <td style="border-left:0;">20/04/2013</td>
                                                    <td>343456</td>
                                                    <td align="right">3</td>
                                                    <td align="left"><font>Delivered</font></td>
                                                    <td align="center"><img src="../images/view.png" alt=""></td>
                                                  </tr>
                                                  <tr class="thead05">
                                                    <td style="border-left:0;">09/02/2013</td>
                                                    <td>266578</td>
                                                    <td align="right">2</td>
                                                    <td align="left"><font>Delivered</font></td>
                                                    <td align="center"><img src="../images/view.png" alt=""></td>
                                                  </tr>
                                                  <tr class="thead04">
                                                    <td style="border-left:0;">29/12/2012</td>
                                                    <td>090303</td>
                                                    <td align="right">6</td>
                                                    <td align="left"><font>Delivered</font></td>
                                                    <td align="center"><img src="../images/view.png" alt=""></td>
                                                  </tr>
                                                  <tr class="thead05">
                                                    <td style="border-left:0;">08/07/2012</td>
                                                    <td>023004</td>
                                                    <td align="right">4</td>
                                                    <td align="left"><font>Delivered</font></td>
                                                    <td align="center"><img src="../images/view.png" alt=""></td>
                                                  </tr>                                          
                                                </table>--%>
                                                </div>
                                            </aside>
                                            <aside class="previous-mdl">&nbsp;</aside>
                                            <aside class="previous-rt">
                                            	<h3>Last payment details</h3>
                                                <div style="width:415px;float:left" runat="server" id="dvlastpaymentDet">
                                                <%--<table width="415" border="0" cellspacing="0" cellpadding="0">
                                                  <tr class="thead01">
                                                    <td width="251" align="left" style="border-left:0;" colspan="3">Mode of payment</td>
                                                    <td width="100" align="right" colspan="2">Amount</td>
                                                  </tr>
                                                  <tr class="thead06">
                                                    <td style="border-left:0;" colspan="3">Visa/Master Credit Card - HDFC</td>
                                                    <td align="right" colspan="2">Rs. 55,490</td>
                                                  </tr>
                                                  <tr class="thead07">
                                                    <td style="border-left:0;" colspan="3">Visa/Master Debit Card - SBI</td>
                                                    <td align="right" colspan="2">Rs. 23,450</td>
                                                  </tr>
                                                  <tr class="thead06">
                                                    <td style="border-left:0;" colspan="3">Net Banking - ICICI</td>
                                                    <td align="right" colspan="2">Rs. 46,900</td>
                                                  </tr>
                                                  <tr class="thead07">
                                                    <td style="border-left:0;" colspan="3">Visa/Master Debit Card - SBI</td>
                                                    <td align="right" colspan="2">Rs. 10,780</td>
                                                  </tr>                                          
                                                </table>--%>
                                                </div>
                                            </aside>
                                        </aside>
                                    </aside>
                                </aside>                                
                            </div>                            
                            <div id="urc3" style="display:none;">
                            <div id="dvWishList" runat="server">
                           	  <%--<aside class="userdetailin212" style="padding-bottom:40px;">
                                	<!-- aside shoppingbagtop1 starts here --> 
                                    <aside class="shoppingbagtop1">
                                        <!-- aside shoppingbagimg1 starts here --> 
                                        <aside class="shoppingbagimg1"><img src="../images/greenoexport/bag.jpg" alt="" width="120"></aside>
                                        <!-- aside shoppingbagimg1 ends here -->
                                        <!-- aside shoppingbagrt1 starts here --> 
                                        <aside class="shoppingbagrt1">
                                            <!-- aside shoppingbagrt-top1 starts here --> 
                                            <aside class="shoppingbagrt-top1">
                                                <h2>Product Code: <span>ARS0163</span></h2>
                                                <h3>Pure handloom silk saree woven with half fine zari.</h3>
                                            </aside>
                                            <!-- aside shoppingbagrt-top1 ends here -->
                                            <!-- aside shoppingbagrt-btm1 starts here --> 
                                            <aside class="shoppingbagrt-btm1">
                                                <aside class="shoppingbagrt-btm-lt1"><p>Blue coloured sarees for women by Fabdeal. This embellished sarees is made from chiffon and comes with unstitched blouse piece.</p></aside>
                                                <aside class="shoppingbagrt-btm-rt1">
                                                    <aside class="shoppingbagrt-btm-rt-top1">
                                                        <table width="322" border="0" cellspacing="0" cellpadding="0">
                                                          <tr class="tablehd">
                                                            <td align="left">Price</td>
                                                            <td align="left">Quantity</td>
                                                            <td align="left">Available</td>
                                                            <td align="left">Amount</td>
                                                          </tr>
                                                          <tr class="tablehd1">
                                                            <td align="left">Rs. 8,500</td>
                                                            <td align="left" class="tablehd2"><input type="text" value="2"></td>
                                                            <td align="left">10 Nos.</td>
                                                            <td align="left">Rs. 8,500</td>
                                                          </tr>
                                                        </table>
                                                    </aside>
                                                    <aside class="shoppingbagrt-btm-rt-btm1">
                                                        <ul class="savel">
                                                            <li class="buynow"><a href="#" title="Buy Now"><img src="../images/buynow.gif" alt=""></a></li>
                                                            <li class="removeic" style="margin-top:5px;"><a href="#" title="Remove">Remove</a></li>
                                                        </ul>
                                                    </aside>
                                                </aside>
                                            </aside>
                                            <!-- aside shoppingbagrt-btm1 ends here -->
                                        </aside>
                                        <!-- aside shoppingbagrt1 ends here -->
                                    </aside>
                    				<!-- aside shoppingbagtop1 ends here -->
                                    <!-- aside shoppingbagtop1 starts here --> 
                                    <aside class="shoppingbagtop1">
                                        <!-- aside shoppingbagimg1 starts here --> 
                                        <aside class="shoppingbagimg1"><img src="../images/greenogift/bag.jpg" width="120" height="150"></aside>
                                        <!-- aside shoppingbagimg1 ends here -->
                                        <!-- aside shoppingbagrt1 starts here --> 
                                        <aside class="shoppingbagrt1">
                                            <!-- aside shoppingbagrt-top1 starts here --> 
                                            <aside class="shoppingbagrt-top1">
                                                <h2>Product Code: <span>ARS0163</span></h2>
                                                <h3>Pure handloom silk saree woven with half fine zari.</h3>
                                            </aside>
                                            <!-- aside shoppingbagrt-top1 ends here -->
                                            <!-- aside shoppingbagrt-btm1 starts here --> 
                                            <aside class="shoppingbagrt-btm1">
                                                <aside class="shoppingbagrt-btm-lt1"><p>Blue coloured sarees for women by Fabdeal. This embellished sarees is made from chiffon and comes with unstitched blouse piece.</p></aside>
                                                <aside class="shoppingbagrt-btm-rt1">
                                                    <aside class="shoppingbagrt-btm-rt-top1">
                                                        <table width="322" border="0" cellspacing="0" cellpadding="0">
                                                          <tr class="tablehd">
                                                            <td align="left">Price</td>
                                                            <td align="left">Quantity</td>
                                                            <td align="left">Available</td>
                                                            <td align="left">Amount</td>
                                                          </tr>
                                                          <tr class="tablehd1">
                                                            <td align="left">Rs. 12,500</td>
                                                            <td align="left" class="tablehd2"><input type="text" value="2"></td>
                                                            <td align="left">15 Nos.</td>
                                                            <td align="left">Rs. 12,500</td>
                                                          </tr>
                                                        </table>
                                                    </aside>
                                                    <aside class="shoppingbagrt-btm-rt-btm1">
                                                        <ul class="savel">
                                                            <li class="buynow"><a href="#" title="Buy Now"><img src="../images/buynow.gif" alt=""></a></li>
                                                            <li class="removeic" style="margin-top:5px;"><a href="#" title="Remove">Remove</a></li>
                                                        </ul>
                                                    </aside>
                                                </aside>
                                            </aside>
                                            <!-- aside shoppingbagrt-btm1 ends here -->
                                        </aside>
                                        <!-- aside shoppingbagrt1 ends here -->
                                    </aside>
                    				<!-- aside shoppingbagtop1 ends here -->
                                    <!-- aside shoppingbagtop1 starts here --> 
                                    <aside class="shoppingbagtop1">
                                        <!-- aside shoppingbagimg1 starts here --> 
                                        <aside class="shoppingbagimg1"><img src="../images/greenoexport/bag.jpg" alt="" width="120"></aside>
                                        <!-- aside shoppingbagimg1 ends here -->
                                        <!-- aside shoppingbagrt1 starts here --> 
                                        <aside class="shoppingbagrt1">
                                            <!-- aside shoppingbagrt-top1 starts here --> 
                                            <aside class="shoppingbagrt-top1">
                                                <h2>Product Code: <span>ARS0163</span></h2>
                                                <h3>Pure handloom silk saree woven with half fine zari.</h3>
                                            </aside>
                                            <!-- aside shoppingbagrt-top1 ends here -->
                                            <!-- aside shoppingbagrt-btm1 starts here --> 
                                            <aside class="shoppingbagrt-btm1">
                                                <aside class="shoppingbagrt-btm-lt1"><p>Blue coloured sarees for women by Fabdeal. This embellished sarees is made from chiffon and comes with unstitched blouse piece.</p></aside>
                                                <aside class="shoppingbagrt-btm-rt1">
                                                    <aside class="shoppingbagrt-btm-rt-top1">
                                                        <table width="322" border="0" cellspacing="0" cellpadding="0">
                                                          <tr class="tablehd">
                                                            <td align="left">Price</td>
                                                            <td align="left">Quantity</td>
                                                            <td align="left">Available</td>
                                                            <td align="left">Amount</td>
                                                          </tr>
                                                          <tr class="tablehd1">
                                                            <td align="left">Rs. 8,500</td>
                                                            <td align="left" class="tablehd2"><input type="text" value="2"></td>
                                                            <td align="left">10 Nos.</td>
                                                            <td align="left">Rs. 8,500</td>
                                                          </tr>
                                                        </table>
                                                    </aside>
                                                    <aside class="shoppingbagrt-btm-rt-btm1">
                                                        <ul class="savel">
                                                            <li class="buynow"><a href="#" title="Buy Now"><img src="../images/buynow.gif" alt=""></a></li>
                                                            <li class="removeic" style="margin-top:5px;"><a href="#" title="Remove">Remove</a></li>
                                                        </ul>
                                                    </aside>
                                                </aside>
                                            </aside>
                                            <!-- aside shoppingbagrt-btm1 ends here -->
                                        </aside>
                                        <!-- aside shoppingbagrt1 ends here -->
                                    </aside>
                    				<!-- aside shoppingbagtop1 ends here -->
                                    <!-- aside shoppingbagtop1 starts here --> 
                                    <aside class="shoppingbagtop1">
                                        <!-- aside shoppingbagimg1 starts here --> 
                                        <aside class="shoppingbagimg1"><img src="../images/greenogift/bag.jpg" width="120" height="150"></aside>
                                        <!-- aside shoppingbagimg1 ends here -->
                                        <!-- aside shoppingbagrt1 starts here --> 
                                        <aside class="shoppingbagrt1">
                                            <!-- aside shoppingbagrt-top1 starts here --> 
                                            <aside class="shoppingbagrt-top1">
                                                <h2>Product Code: <span>ARS0163</span></h2>
                                                <h3>Pure handloom silk saree woven with half fine zari.</h3>
                                            </aside>
                                            <!-- aside shoppingbagrt-top1 ends here -->
                                            <!-- aside shoppingbagrt-btm1 starts here --> 
                                            <aside class="shoppingbagrt-btm1">
                                                <aside class="shoppingbagrt-btm-lt1"><p>Blue coloured sarees for women by Fabdeal. This embellished sarees is made from chiffon and comes with unstitched blouse piece.</p></aside>
                                                <aside class="shoppingbagrt-btm-rt1">
                                                    <aside class="shoppingbagrt-btm-rt-top1">
                                                        <table width="322" border="0" cellspacing="0" cellpadding="0">
                                                          <tr class="tablehd">
                                                            <td align="left">Price</td>
                                                            <td align="left">Quantity</td>
                                                            <td align="left">Available</td>
                                                            <td align="left">Amount</td>
                                                          </tr>
                                                          <tr class="tablehd1">
                                                            <td align="left">Rs. 12,500</td>
                                                            <td align="left" class="tablehd2"><input type="text" value="2"></td>
                                                            <td align="left">15 Nos.</td>
                                                            <td align="left">Rs. 12,500</td>
                                                          </tr>
                                                        </table>
                                                    </aside>
                                                    <aside class="shoppingbagrt-btm-rt-btm1">
                                                        <ul class="savel">
                                                            <li class="buynow"><a href="#" title="Buy Now"><img src="../images/buynow.gif" alt=""></a></li>
                                                            <li class="removeic" style="margin-top:5px;"><a href="#" title="Remove">Remove</a></li>
                                                        </ul>
                                                    </aside>
                                                </aside>
                                            </aside>
                                            <!-- aside shoppingbagrt-btm1 ends here -->
                                        </aside>
                                        <!-- aside shoppingbagrt1 ends here -->
                                    </aside>
                    				<!-- aside shoppingbagtop1 ends here -->
                                </aside>--%>
                            </div>
                            </div>
                            <!-- div inline1 starts here -->
                            <div id="inline1" style="width:767px;display:none;">
                                <aside class="detail">
                                	<small>Last order details</small>
                                    <em>Order ID: 317568</em><div class="clear"></div>
                                    <aside class="detail-lt">
                                    	<code>Shipping Address:</code>
                                        <p><span>Harish Anand Thilakan</span><br>CG, Alsa Windsor,<br>23, Kothari Road,<br>Nungamabakkam,<br>Chennai, Tamil Nadu 600034<br>India.</p>
                                        <code>Phone:</code>
                                        <p><span>+91 9840055418</span></p>
                                    </aside>
                                    <aside class="detail-rt">
                                    	<table width="445" border="0" cellspacing="0" cellpadding="0">
                                          <tr class="thead08">
                                            <td width="152" align="left" style="border-left:0;">Product Name</td>
                                            <td width="229" align="left" style="line-height:18px;">Kanchipuram Silk Sarees (2)<br>Soft Silk Sarees (1)<br>Light Weight Kanchipuram (4)<br>Casual Sarees (2)</td>
                                          </tr>
                                          <tr class="thead09">
                                            <td style="border-left:0;">Quantity</td>
                                            <td align="left">9</td>
                                          </tr>
                                          <tr class="thead08">
                                            <td style="border-left:0;">Price</td>
                                            <td align="left">Rs. 93,340</td>
                                          </tr>
                                          <tr class="thead09">
                                            <td style="border-left:0;">Status</td>
                                            <td align="left"><font>Delivered</font></td>
                                          </tr>
                                          <tr class="thead08">
                                            <td style="border-left:0;">Courier</td>
                                            <td align="left"><a href="#" title="Blue Dart">Blue Dart</a></td>
                                          </tr> 
                                          <tr class="thead09">
                                            <td style="border-left:0;">AWB Number</td>
                                            <td align="left">39301048910</td>
                                          </tr> 
                                          <tr class="thead08">
                                            <td style="border-left:0;">Delivered Date & Time</td>
                                            <td align="left">20 April 2013  - 01:34:55</td>
                                          </tr>                                          
                                        </table>
                                    </aside>
                                </aside>
                            </div>
                            <!-- div inline1 ends here -->
                            <!-- div inline2 starts here -->
                            <div id="inline2" style="width:860px;display:none;">
                                <aside class="general">
                                    <small>General Information</small><div class="clear1">&nbsp;</div>
                                    <dl class="shippform">
                                        <dt>Full Name <span>*</span></dt>
                                        <dd class="inputshipp">
                                        <input name="txtfname" id="txtfname"   type="text" onkeypress=" return onlyAlphabets(event)"/>
                                        <div class="form_error" id="lbltxtfname" style="display:none;">
                                        <span>Please mention your  email id.</span>
                                       </div>                                        
                                        </dd>
                                        <dt>Email ID <span>*</span></dt>                                        
                                        <dd class="inputshipp">
                                        <input name="txtuemail" id="txtuemail"   type="text"/>
                                        <div class="form_error" id="lbltxtuemail" style="display:none;">
                                        <span>Please mention your  email id.</span>
                                       </div>                                        
                                        </dd>
                                        <dt>State</dt>
                                        <dd class="inputshipp">
                                        <asp:TextBox ID="txtstate" runat="server" onkeypress="return onlyAlphabets(event)" ></asp:TextBox>
                                        <%--<input name="txtustate" id="txtustate"  type="text" runat="server" onkeypress=" return onlyAlphabets(event)"/>--%>
                                        <%--<ajax:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" TargetControlID="txtstate" 
                                        MinimumPrefixLength="1" EnableCaching="true" CompletionSetCount="1" CompletionInterval="0" ServiceMethod="GetStates">
                                        </ajax:AutoCompleteExtender>--%>
                                        <div class="form_error" id="lblstate" style="display:none;">
                                        <span>Please mention your  email id.</span>
                                       </div>                                        
                                        </dd>                                       
                                    </dl>
                                    <dl class="shippform">
                                        <dt>Phone Number <span>*</span></dt>
                                        <dd class="inputshipp">
                                        <input name="txtumobileno" id="txtumobileno"  type="text" onkeypress="return isNumeric(event);"/>
                                        <div class="form_error" id="lbltxtumobileno" style="display:none;">
                                        <span>Please mention your  email id.</span>
                                       </div>                                        
                                        </dd>
                                        <dt style="margin-top:5px;">City</dt>
                                        <dd class="inputshipp">
                                        <%--<input type="text" id="datepicker">--%>
                                        <input name="txtucity" id="txtucity"  type="text" onkeypress=" return onlyAlphabets(event)"/>
                                        <div class="form_error" id="lbltxtucity" style="display:none;">
                                        <span>Please mention your  email id.</span>
                                       </div>
                                        </dd>
                                        <dt>Zip Code</dt>
                                        <dd class="inputshipp">
                                        <input name="txtuzipcode" id="txtuzipcode"  type="text" onkeypress="return isNumeric(event);"/>
                                        <div class="form_error" id="lbltxtuzipcode" style="display:none;">
                                        <span>Please mention your  email id.</span>
                                       </div>
                                        </dd>                                        
                                    </dl>
                                    <dd>
                                        <ul class="btns1" style="padding-left:300px;">
                                            <li><a href="#" title="Submit" id="aSubmit" onclick="ValidationUpdation();" ><img id="imgSubmit" src="../lightbox/update.gif" ></a>
                                            <img id="imgaSubmit" style="display:none;margin-left:145px;" src="../images/spin.gif" alt="">
                                            </li>
                                            <li><a id="aCancel" onclick="return Clear();" href="javascript:void(0);" title="Cancel" ><img id="imgCancle" src="../images/Cancel.png" alt=""></a></li>
                                        </ul> 
                                    </dd>
                                </aside>
                            </div>
                            <!-- div inline2 ends here -->
                            <!-- div inline3 starts here -->
                            <div id="inline3" style="width:440px;display:none;">
                                <aside class="chp">
                                	<small>Change Password</small>
                                    <aside class="has" id="Pass_Success" style="display:none">Your password has been changed<br>successfully.</aside><div class="clear"></div>
                                    <i>All fields are mandatory</i>
                                     <dl class="shippform1">
                                        <dt>User Name<span>*</span></dt>
                                        <dd class="inputshipp1"><input name="q" id="s-head" onFocus="if (this.value == 'Harish Anand Thilakan') {this.value = '';}" onBlur="if (this.value == '') {this.value = 'Harish Anand Thilakan';}" value="Harish Anand Thilakan" type="text"/></dd>
                                        <dt>Current Password <span>*</span></dt>                                        
                                        <dd class="inputshipp1"><input name="q" id="s-head" onFocus="if (this.value == 'Current Password') {this.value = '';}" onBlur="if (this.value == '') {this.value = 'Current Password';}" value="Current Password" type="password"/></dd>
                                        <dt>New Password <span>*</span></dt>
                                        <dd class="inputshipp1"><input name="q" id="s-head" onFocus="if (this.value == 'New Password') {this.value = '';}" onBlur="if (this.value == '') {this.value = 'New Password';}" value="New Password" type="password"/></dd>
                                        <dt>Confirm Password <span>*</span></dt>
                                        <dd class="inputshipp1"><input name="q" id="s-head" onFocus="if (this.value == 'Confirm Password') {this.value = '';}" onBlur="if (this.value == '') {this.value = 'Confirm Password';}" value="Confirm Password" type="password"/></dd>
                                    
                                    </dl>
                                    <div class="clear"></div>
                                    <ul class="submit">
                                        <li style="padding-top:1px;"><a href="#" title="Submit"><img src="../images/save.png" alt=""></a></li>
                                        <li><a href="javascript:void(0);" title="Cancel" onclick="javascript:$.fancybox.close();"><img src="../images/cancel.png" alt=""></a></li>
                                    </ul>
                                </aside>
                            </div>
                            <!-- div inline3 ends here -->
                            <!-- div inline4 starts here -->
                            <div id="inline4" style="width:440px;display:none;">
                                <aside class="chp">
                                	<small>Change Password</small>
                                    <%--<div style="display:none" id="succuesspwdmsg">--%>
                                    <%--<aside class="has" id="Success_Pass_inline4" style="display:none">Your password has been changed<br>successfully.</aside>--%>
                                    <aside id="Success_Pass_inline4"></aside>
                                    <%--</div>--%>
                                    <%--<div class="clear"></div> --%>                                   
                                    <i style="padding-top: 30px;" id="i_Mand">All fields are mandatory</i>
                                     <dl class="shippform1">
                                        <dt>User Name<span>*</span></dt>
                                        <dd class="inputshipp1"><input name="txtpwduname" id="txtpwduname" readonly="readonly" type="text"/></dd>
                                        <dt>Current Password <span>*</span></dt>                                        
                                        <dd class="inputshipp1"><input name="txtcpwd" readonly="readonly" id="txtcpwd"  type="password"/></dd>
                                        <dt>New Password <span>*</span></dt>
                                        <dd class="inputshipp1"><input name="txtnpwd" id="txtnpwd"  type="password"/>
                                        <div class="form_error" id="lbltxtnpwd" style="display:none;">
                                        <span>Please mention your  email id.</span>
                                        </div>
                                        </dd>
                                        <dt>Confirm Password <span>*</span></dt>
                                        <dd class="inputshipp1"><input name="txtconpwd"  id="txtconpwd"  type="password"/>
                                        <div class="form_error" id="lbltxtconpwd" style="display:none;">
                                        <span>Please mention your  email id.</span>
                                        </div></dd>                                   
                                    </dl>
                                    <div class="clear"></div>
                                    <ul class="submit">
                                        <li style="padding-top:1px;"><a href="#" title="Submit">
                                        <%--<img src="../images/save.png" alt="">--%>
                                        <asp:ImageButton ID="btncngpwd" runat="server" ImageUrl="../images/save.png" OnClientClick="return validationforchangepwd();" />
                                        </a>
                                        <img id="imgcngpwd" style="display:none;" src="../images/spin.gif" alt="" />
                                        </li>
                                        <li><a href="javascript:void(0);" title="Cancel" onclick="Clearpwd()" ><img src="../images/cancel.png" alt=""></a></li>
                                    </ul>                                    
                                </aside>
                            </div>
                            <!-- div inline4 ends here -->
                            <!-- div inline5 starts here -->
                            <div id="inline5" style="width:860px;display:none;">
                                <aside class="general">
                                	<small>Address Book</small>
                                    <i>All fields are mandatory</i>
                                    <dl class="shippform1">
                                        <dt>Enter your full name <span>*</span></dt>
                                        <dd class="inputshipp1">
                                        <input name="txtshipfname" id="txtshipfname"  type="text" onkeypress=" return onlyAlphabets(event)"/>
                                        <div class="form_error" id="lbltxtshipfname" style="display:none;">
                                         <span>Please mention your  email id.</span>
                                        </div>                                        
                                        </dd>
                                        <dt>Enter your mobile number <span>*</span></dt>                                        
                                        <dd class="inputshipp1">
                                        <input name="txtshipphoneno" id="txtshipphoneno"  type="text" onkeypress="return isNumeric(event);"/>
                                        <div class="form_error" id="lbltxtshipphoneno" style="display:none;">
                                         <span>Please mention your  email id.</span>
                                        </div>                                        
                                        </dd>
                                        <dt>Address <span>*</span></dt>
                                        <dd class="textshipp1">
                                        <textarea name="txtshipaddress" id="txtshipaddress" ></textarea>
                                        <div class="form_error" id="lbltxtshipaddress" style="display:none;">
                                         <span>Please mention your  email id.</span>
                                        </div>
                                        </dd>
                                        
                                    </dl>
                                    <dl class="shippform1">
                                        <dt> City<span>*</span></dt>
                                        <dd class="inputshipp1">
                                      <input name="txtshipcity" id="txtshipcity"  type="text" onkeypress=" return onlyAlphabets(event)"/>
                                        <div class="form_error" id="lbltxtshipcity" style="display:none;">
                                         <span>Please mention your  email id.</span>
                                        </div>                                      
                                        </dd>                                         
                                        <dt style="margin-top:5px;">State<span>*</span></dt>
                                         <dd class="inputshipp1">
                                       <%-- <input name="txtshipstate" id="txtshipstate"  type="text" onkeypress=" return onlyAlphabets(event)"/>--%>
                                       <asp:TextBox ID="txtshipstate" runat="server" ></asp:TextBox>
                                       <%--<ajax:AutoCompleteExtender ID="AutoCompleteExtender2" runat="server" TargetControlID="txtshipstate" 
                                        MinimumPrefixLength="1" EnableCaching="true" CompletionSetCount="1" CompletionInterval="0" ServiceMethod="GetStates">
                                        </ajax:AutoCompleteExtender>--%>
                                        <div class="form_error" id="lbltxtshipstate" style="display:none;">
                                         <span>Please mention your  email id.</span>
                                        </div>                                        
                                        </dd>
                                        <dt>ZIP Code <span>*</span></dt>
                                        <dd class="inputshipp1">
                                        <input name="txtshipincode" id="txtshipincode"  type="text" onkeypress="return isNumeric(event);"/>
                                        <div class="form_error" id="lbltxtshipincode" style="display:none;">
                                         <span>Please mention your  email id.</span>
                                        </div>
                                         <label id="shipid"  style="display:none"></label>
                                        </dd>                                      
                                        <dt>&nbsp;</dt>
                                        <dd>
                                            <ul class="btns1" style="padding:15px 0 0;">
                                                <li>
                                               <%-- <a href="javascript:void(0);" title="Submit"  ><img id="btnshiping" src="../lightbox/update.gif" alt="" onclick="validationforshipping()"></a>--%>
                                                  <asp:ImageButton ID="btnshiping" runat="server" OnClientClick="return validationforshipping();" ImageUrl="../lightbox/update.gif" />
                                                </li>
                                                <li><a href="javascript:void(0);" title="Cancel" id="btnclearship" onclick="ClearshippingDetails()"><img src="../images/Cancel.png" alt=""></a>
                                               <%-- <asp:ImageButton ID="btnclearship" runat="server" ImageUrl="../images/cancel.gif" OnClientClick="return ClearshippingDetails();" />--%>
                                                </li>
                                            </ul> 
                                        </dd>
                                    </dl>                                    
                                </aside>
                            </div>
                            <!-- div inline5 ends here -->
                        </aside>
                        <!-- aside userdetailin21out ends here -->
                    </article>                     
                    <!-- article account ends here -->             
        </article> 
    </section>
   
<link href='http://fonts.googleapis.com/css?family=Bitter:400,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>
<script type='text/javascript' src='../js/jquery.easing.1.3.js'></script>
<script type="text/javascript">
    $(document).ready(function () {
        $().UItoTop({ easingType: 'easeOutQuart' });
    });
</script>
<script type="text/javascript" src="../js/jquery.fancybox1.js"></script>
<link rel="stylesheet" type="text/css" href="../lightbox/jquery.fancybox.css" media="screen" />
<script type="text/javascript">
    $(document).ready(function () {
        $('.fancybox').fancybox();
    });
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
    <%--AutoComplete--%>
    <script type="text/javascript">
        $().ready(function () {                        
            $("#BodyContent_txtstate").autocomplete([<%Response.Write(ConfigurationManager.AppSettings["States"]); %>], {            
                width: 320,
                max: 10,
                highlight: false,
                multiple: true,
                multipleSeparator: " ",
                scroll: true,
                scrollHeight: 300
            });
            $("#BodyContent_txtshipstate").autocomplete([<%Response.Write(ConfigurationManager.AppSettings["States"]); %>], {
                width: 320,
                max: 10,
                highlight: false,
                multiple: true,
                multipleSeparator: " ",
                scroll: true,
                scrollHeight: 300
            });
        });
</script>

   
</asp:Content>
