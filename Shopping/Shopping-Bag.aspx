<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Shopping-Bag.aspx.cs" Inherits="GreenOBagWeb.Shopping.Shopping_Bag" %>
<%@ Register Src="~/WebControl/LowerPanel.ascx" TagName="MostLoved" TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">
    <asp:HiddenField ID="HdnQty" Value="1" runat="server" />
    <!-- Section greenomartblk starts here -->
    <section class="greenomartblk">
    	<!-- Section wrapper starts here -->
    	<section class="wrapper">
        	<!-- Section greenomart starts here -->
            <section class="greenomart">            	
                <!-- article greenomart-rtd starts here -->
                <article class="greenomart-rtd">
                	<ul class="breadcrumb1">
                        <li><a href="../Home/Index.aspx" title="Home">Home</a></li>
                        <li>&gt;</li>
                        <%--<li><a href="#" title="GreenOMart">GreenOMart</a></li>
                        <li>&gt;</li>
                        <li><a href="#" title="Jute Bags">Jute Bags</a></li>
                        <li>&gt;</li>--%>
                        <li>My Shopping Bag</li>
                    </ul>
                    <aside class="headingd">
                    	<h2 style="text-align:center;width:980px;" id="Title_ShoppingBag" runat="server">My Shopping Bag</h2>  
                    </aside>
                    <article class="shoppingbag" >
                    	<aside class="shoppingbag-top" id ="ar_ShoppingCart" runat="server">
                        	<%--<aside class="shoppingbag-top-lt">
                            	<figure><img src="../images/greenomart/handbag/small/s1.jpg" alt=""></figure>
                                <figcaption><span>GB 234</span><br>Modern Women Beige &amp;<br>Black Tote Bag</figcaption>
                                <ul class="savel">
                                	<li class="zoomic"><a href="#" title="Zoom">Zoom</a></li>
                                    <li class="swl"><a href="#" title="Save in wishlist">Save in wishlist</a></li>
                                    <li class="removeic"><a href="#" title="Remove">Remove</a></li>
                                </ul>
                            </aside>
                            <aside class="shoppingbag-top-rt">
                            	<aside class="shoppingbag-top-rtt">
                                	<p>A stylish, versatile and trendy inclusion in your bag collection. This bag from Pick Pocket is perfect to be carried to the beach, barbeque or even the mall. Team it up with a stylish pair of ripped jeans, tees and flat sandals for a neat, casual look.</p>
                                </aside>
                                <aside class="shoppingbag-top-rtbtm">
                                	<dl>
                                        <dt>
                                            <select id="standard-dropdown" name="standard-dropdown" class="custom-class1 custom-class2" style="width:89px;">
                                            <option value="1" >Qty</option>
                                            <option value="2">1</option>
                                            <option value="3">2</option>      
                                            </select>
                                        </dt>
                                        <dd>Rs. 1,798</dd>
                                    </dl>
                                </aside>
                            </aside>--%>
                        </aside>
                        <aside class="shoppingbag-mdl" id="ar_Grand" runat="server">                        	
                           <%-- <dl class="discount">
                            	<dt>Discount Code</dt>
                                <dd><cite><input name="q" id="s-head" onFocus="if (this.value == 'OERPR') {this.value = '';}" onBlur="if (this.value == '') {this.value = 'OERPR';}" value="OERPR" type="text"/></cite><code><a href="#" title="Add">Add</a></code></dd>
                            </dl><div class="clear"></div>
                            <dl class="grand">
                            	<dt>Grand Total</dt>
                                <dd>Rs.1878</dd>
                            </dl>--%>
                        </aside>

                        <aside class="shoppingbag-btm">
                        	<dl>
                            	<dt>
                                    <a href="../Collection/GreenOMart-Collections.aspx"  title="Continue Shopping">Continue Shopping</a></dt>
                                <dd>
                                    <asp:LinkButton ID="lnk_Checkout" OnClick="lnk_Checkout_Click" OnClientClick="return validate()" runat="server">Checkout</asp:LinkButton>
                                    </dd>
                            </dl>
                        </aside>                        
                    </article>
                </article>
                <!-- article greenomart-rtd ends here -->
            </section>
            <!-- Section greenomart ends here -->
            <!-- Section recently starts here -->
            <section class="recently">
            	<article class="recentlyhd">
                	<h3>Bags Others Loved</h3><small></small>
                </article>
                <uc:MostLoved id="CtrlMostLoved" runat="server" flag="OthersLoved" ></uc:MostLoved>
                <%--<ul class="recentlyvb">
                    <li>
                        <aside class="sell1"> 
                            <aside class="title1"><a href="greenomart-description.html">Cotton bag with multi-color<br />printed design</a></aside>
                            <aside class="bags1"><a href="greenomart-description.html"><img src="../images/greenomart/reusebags/bag1.jpg" alt=""/></a></aside>
                            <aside class="size1">GB 269<br />Size: 35 x 45 cm</aside>
                            <aside class="rate1">Rs. 780/-</aside>               
                            <h1><strong><a href="#" target="_blank">Quick</a></strong></h1>
                        </aside>
                    </li>
                    <li>
                        <aside class="sell1"> 
                            <aside class="title1"><a href="greenomart-description.html">Cotton bag with floral<br>emboridery design</a></aside>
                            <aside class="bags1"><a href="greenomart-description.html"><img src="../images/greenomart/reusebags/bag2.jpg" alt=""/></a></aside>
                            <aside class="size1">GB 42<br>Size: 39 x 33 x 12 cm</aside>
                            <aside class="rate1">Rs. 890/-</aside>               
                            <h1><strong><a href="#" target="_blank">Quick</a></strong></h1>
                        </aside>
                    </li>
                    <li>
                        <aside class="sell1"> 
                            <aside class="title1"><a href="greenomart-description.html">Cotton bag with screen<br>printed design</a></aside>
                            <aside class="bags1"><a href="greenomart-description.html"><img src="../images/greenomart/reusebags/bag3.jpg" alt=""/></a></aside>
                            <aside class="size1">GB 174<br>Size: 32 x 42 cm</aside>
                            <aside class="rate1">Rs. 660/-</aside>               
                            <h1><strong><a href="#" target="_blank">Quick</a></strong></h1>
                        </aside>
                    </li>
                    <li>
                        <aside class="sell1"> 
                            <aside class="title1"><a href="greenomart-description.html">Cotton bag with multi-color<br />printed design</a></aside>
                            <aside class="bags1"><a href="greenomart-description.html"><img src="../images/greenomart/reusebags/bag1.jpg" alt=""/></a></aside>
                            <aside class="size1">GB 269<br />Size: 35 x 45 cm</aside>
                            <aside class="rate1">Rs. 780/-</aside>               
                            <h1><strong><a href="#" target="_blank">Quick</a></strong></h1>
                        </aside>
                    </li>
            	</ul>--%>
            </section>
            <!-- Section recently ends here -->
            
        </section>
        <!-- Section wrapper ends here -->
    </section>
    <!-- Section greenomartblk ends here --> 
    <!-- Google Fonts Starts here -->
<link href='http://fonts.googleapis.com/css?family=Bitter:400,700' rel='stylesheet' type='text/css'/>
<script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="../js/jquery.selectBox.js"></script>
<script type="text/javascript">
    //$(document).ready(function () {
    //    $("SELECT")
    //    .selectBox()
    //});
</script>
<%--<style type="text/css">
/* Dropdown control */
.selectBox-dropdown{width:89px;position:relative;text-decoration:none;text-align:left;outline:none;vertical-align:middle;
cursor:pointer;color:#000;font:400 16px 'Bitter', serif;font-style:normal;height:30px;padding:10px 0 0;float:left;background:url(../images/greenomart/select.png) 0 0 no-repeat;}
.selectBox-dropdown:focus,.selectBox-dropdown:focus .selectBox-arrow{}
.selectBox-dropdown.selectBox-menuShowing{}
.selectBox-dropdown .selectBox-label{padding:0 0 0 5px;display:inline-block;white-space:nowrap;overflow:hidden;}
.selectBox-dropdown .selectBox-arrow{position:absolute;top:0;right:0;height:auto;}
/* Dropdown menu */
.selectBox-dropdown-menu{position:absolute;z-index:99999;max-height:200px;min-height:1.5em;background:#FFF;color:#000;font:400 16px 'Bitter', serif;font-style:normal;overflow:auto;width:352px;border:1px solid #cbcbcb;border-radius:5px;}
/* Inline control */
.selectBox-inline{min-width:361px;outline:none;background:#FFF;display:inline-block;overflow:auto;}
.selectBox-inline:focus{border-color:#cbcbcb;}
/* Options */
.selectBox-options,.selectBox-options LI,.selectBox-options LI A{list-style:none;display:block;padding:0;margin:0;}
.selectBox-options LI A{line-height:1.5;padding:0 .5em;white-space:nowrap;overflow:hidden;background:6px center no-repeat;}
.selectBox-options LI.selectBox-hover A{background-color:#09c42f;cursor:pointer;}
.selectBox-options .selectBox-optgroup{background:#09c42f;font-weight:bold;line-height:1.5;padding:0 .3em;white-space:nowrap;}
/* Disabled state */
.selectBox.selectBox-disabled{color:#000 !important;}
.selectBox-dropdown.selectBox-disabled .selectBox-arrow{opacity:.5;filter:alpha(opacity=50);border-color:#cbcbcb;}
.selectBox-inline.selectBox-disabled{color:#000 !important;}
.selectBox-inline.selectBox-disabled .selectBox-options A{background-color:transparent !important;}
</style>--%>
    <script src="../js/zxml.src.js" type="text/javascript"></script>
    <script type="text/javascript">
        //Remove Cart Items
        function RemoveShoppingBagItem(ProductId, currentVal,ItemID) {
            var params = "ProductID=" + ProductId + "&Qty=" + 0 + "&Flag=" + "REMOVE" + "&ItemID=" + ItemID;
            var oXmlHttp1 = zXmlHttp.createRequest();
            oXmlHttp1.open("POST", "../Shopping/CartList.aspx", true);
            oXmlHttp1.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            oXmlHttp1.setRequestHeader("Content-length", params.length);
            oXmlHttp1.setRequestHeader("Connection", "close");
            oXmlHttp1.onreadystatechange = function () {
                if (oXmlHttp1.readyState == 4) {
                    var getdata = oXmlHttp1.responseText.split('~');
                    if (oXmlHttp1.responseText != "") {                        
                            window.open("../Shopping/Shopping-Bag.aspx", "_self");                        
                    }
                }
            }
            oXmlHttp1.send(params);
            document.getElementById("remove" + currentVal).innerHTML = "<img width='20' height='20' src='../images/spin.gif' alt=''>";
        }
        //Change Qty
        //function QtyChange(ProductId, Qty, currentVal, ItemID) {
        function QtyChange(value) {
            //debugger;
            var getvalue = value.split('~');
            if (getvalue[1] != "0") {
                //var params = "ProductID=" + ProductId + "&Qty=" + Qty + "&Flag=" + "UPDATE" + "&ItemID=" + ItemID;
                var params = "ProductID=" + getvalue[0] + "&Qty=" + getvalue[1] + "&Flag=" + "UPDATE" + "&ItemID=" + getvalue[3];
                var oXmlHttp1 = zXmlHttp.createRequest();
                oXmlHttp1.open("POST", "../Shopping/CartList.aspx", true);
                oXmlHttp1.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                oXmlHttp1.setRequestHeader("Content-length", params.length);
                oXmlHttp1.setRequestHeader("Connection", "close");
                oXmlHttp1.onreadystatechange = function () {
                    if (oXmlHttp1.readyState == 4) {
                        var getdata = oXmlHttp1.responseText.split('~');
                        if (oXmlHttp1.responseText != "") {
                            document.getElementById("<%=HdnQty.ClientID %>").value = "1";
                            window.open("../Shopping/Shopping-Bag.aspx", "_self");
                        }
                    }
                }
                oXmlHttp1.send(params);
                document.getElementById("drop" + getvalue[2]).innerHTML = "<img width='20' height='20' src='../images/spin.gif' alt=''>";
            }
            else {
                alert("Please select Min 1 quantity!!");
                document.getElementById("<%=HdnQty.ClientID %>").value = "0";
            }
        }
        //Checkout Validation
        function validate() {
            if (document.getElementById("<%=HdnQty.ClientID %>").value == "0") {
                alert("Please select Min 1 quantity!!");
                return false;
            }
            else {
                return true;
            }
        }
    </script>
</asp:Content>
