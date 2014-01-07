<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="GreenOMart-Collections.aspx.cs" Inherits="GreenOBagWeb.Collection.GreenOMart_Collections" %>
<%@ Register Src="~/WebControl/LowerPanel.ascx" TagName="Recent" TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">
    <asp:HiddenField ID="HdnMaterial" runat="server" Value="0" />
    <asp:HiddenField ID="HdnPrice" runat="server" Value="0"  />
    <asp:HiddenField ID="HdnColor" runat="server"  Value="0" />
    <!-- Section greenomartblk starts here -->
    <section class="greenomartblk">
    	<!-- Section wrapper starts here -->
    	<section class="wrapper">
        	<!-- Section greenomart starts here -->
            <section class="greenomart">
            	<!-- article greenomart-lt starts here -->
                <article class="greenomart-lt">
                	<aside class="greenomart-ltt">Categories</aside>
                    <aside class="greenomart-ltm">
                    	<ul class="categorylinks" id="ul_Categorylist" runat="server">
                        	<%--<li><a href="#" title="Laptop Bags">Laptop Bags</a></li>
                            <li><a href="#" title="Shopping Bags">Shopping Bags</a></li>
                            <li class="actbag"><a href="#" title="Hand Bags">Hand Bags</a></li>
                            <li><a href="#" title="Tote Bags">Tote Bags</a></li>
                            <li><a href="#" title="Mens Bags">Mens Bags</a></li>
                            <li><a href="#" title="Designer Bags">Designer Bags</a></li>
                            <li><a href="#" title="Wallets">Wallets</a></li>
                            <li><a href="#" title="Utility Bags">Utility Bags</a></li>--%>
                        </ul>
                        <h3>Material</h3>
                        <ul class="material"  id="ul_Materiallist" runat="server">
                        	<%--<li><a href="#" title="Cotton">Cotton</a></li>
                            <li><a href="#" title="Jute">Jute</a></li>
                            <li><a href="#" title="PP Hoven">PP Hoven</a></li>
                            <li><a href="#" title="PP Non Hoven">PP Non Hoven</a></li>--%>
                        </ul>
                        <h3>Price</h3>
                        <ul class="price" id="ul_Pricelist" runat="server">
                        	<<%--li><b><input type="radio"></b><big>300 - 500</big></li>
                            <li><b><input type="radio"></b><big>501 - 800</big></li>
                            <li><b><input type="radio"></b><big>801 - 1000</big></li>
                            <li><b><input type="radio"></b><big>1001 - 1300</big></li>--%>
                        </ul>
                        <h3>Colour</h3>
                        <ul class="color" id="ul_ColorList" runat="server">
                        	<%--<li><b><input type="checkbox"></b><big><img src="../images/color/blue.gif" alt=""></big><em>Blue (19)</em></li>
                            <li><b><input type="checkbox"></b><big><img src="../images/color/pink.gif" alt=""></big><em>Pink (14)</em></li>
                            <li><b><input type="checkbox"></b><big><img src="../images/color/red.gif" alt=""></big><em>Red (37)</em></li>
                            <li><b><input type="checkbox"></b><big><img src="../images/color/yellow.gif" alt=""></big><em>Yellow (13)</em></li>
                            <li><b><input type="checkbox"></b><big><img src="../images/color/purple.gif" alt=""></big><em>Purple (24)</em></li>
                            <li><b><input type="checkbox"></b><big><img src="../images/color/black.gif" alt=""></big><em>Black (12)</em></li>
                            <li><b><input type="checkbox"></b><big><img src="../images/color/brown.gif" alt=""></big><em>Brown (28)</em></li>
                            <li><b><input type="checkbox"></b><big><img src="../images/color/maroon.gif" alt=""></big><em>Maroon (21)</em></li>
                            <li><b><input type="checkbox"></b><big><img src="../images/color/white.gif" alt=""></big><em>White (15)</em></li>
                            <li><b><input type="checkbox"></b><big><img src="../images/color/orange.gif" alt=""></big><em>Orange (09)</em></li>
                            <li><b><input type="checkbox"></b><big><img src="../images/color/magenta.gif" alt=""></big><em>Magenta (07)</em></li>
                            <li><b><input type="checkbox"></b><big><img src="../images/color/green.gif" alt=""></big><em>Green (11)</em></li>
                            <li><b><input type="checkbox"></b><big><img src="../images/color/grey.gif" alt=""></big><em>Grey (24)</em></li>--%>
                        </ul>
                    </aside>
                    <aside class="greenomart-ltb">&nbsp;</aside>
                </article>
                <!-- article greenomart-lt ends here -->
                <!-- article greenomart-rt starts here -->
                <article class="greenomart-rt">
                	<ul class="breadcrumb1">
                        <li><a href="../Home/Index.aspx" title="Home">Home</a></li>
                        <li>&gt;</li>
                        <li><a href="../Collection/GreenOMart-Collections.aspx?All-Collections" title="GreenOMart">GreenOMart</a></li>
                        <li>&gt;</li>
                        <li id="li_SitemapCategory_Name" runat="server">Bags</li>
                    </ul>
                    <aside class="heading">
                    	<h2 id="h_HeaderCategory_Name" runat="server">Reusable Bags</h2>
                        <ul class="sort" id="ul_SortList" runat="server">
                        	<%--<li style="font-weight:700">Sort by:</li>
                            <li><a href="#" title="Popularity">Popularity</a></li>
                            <li>|</li>
                            <li><a href="#" title="Discount">Discount</a></li>
                            <li>|</li>
                            <li><a href="#" title="New Arrivals">New Arrivals</a></li>
                            <li>|</li>
                            <li><a href="#" title="Price">Price</a></li>--%>
                        </ul>
                    </aside>
                    <ul class="reuseable" id="li_Product_List" runat="server">
                        <%--<li>
                            <aside class="sell"> 
                                <aside class="title"><a href="greenomart-description.html">Cotton bag with multi-color<br />printed design</a></aside>
                                <aside class="bags"><a href="greenomart-description.html"><img src="../images/greenomart/reusebags/bag1.jpg" alt=""/></a></aside>
                                <aside class="size">GB 269<br />Size: 35 x 45 cm</aside>
                                <aside class="rate">Rs. 780/-</aside>               
                                <h1><strong><a class="fancybox fancybox.iframe" href="iframe.html" data-fancybox-group="gallery">Quick</a></strong></h1>
                            </aside>
                        </li>
                        <li>
                            <aside class="sell"> 
                                <aside class="title"><a href="greenomart-description.html">Cotton bag with floral<br>emboridery design</a></aside>
                                <aside class="bags"><a href="greenomart-description.html"><img src="../images/greenomart/reusebags/bag2.jpg" alt=""/></a></aside>
                                <aside class="size">GB 42<br>Size: 39 x 33 x 12 cm</aside>
                                <aside class="rate">Rs. 890/-</aside>               
                                <h1><strong><a class="fancybox fancybox.iframe" href="iframe.html" data-fancybox-group="gallery">Quick</a></strong></h1>
                            </aside>
                        </li>
                        <li>
                            <aside class="sell"> 
                                <aside class="title"><a href="greenomart-description.html">Cotton bag with screen<br>printed design</a></aside>
                                <aside class="bags"><a href="greenomart-description.html"><img src="../images/greenomart/reusebags/bag3.jpg" alt=""/></a></aside>
                                <aside class="size">GB 174<br>Size: 32 x 42 cm</aside>
                                <aside class="rate">Rs. 660/-</aside>               
                                <h1><strong><a class="fancybox fancybox.iframe" href="iframe.html" data-fancybox-group="gallery">Quick</a></strong></h1>
                            </aside>
                        </li>
                        <li>
                            <aside class="sell"> 
                                <aside class="title"><a href="greenomart-description.html">Cotton bag with multi-color<br />printed design</a></aside>
                                <aside class="bags"><a href="greenomart-description.html"><img src="../images/greenomart/reusebags/bag1.jpg" alt=""/></a></aside>
                                <aside class="size">GB 269<br />Size: 35 x 45 cm</aside>
                                <aside class="rate">Rs. 780/-</aside>               
                                <h1><strong><a class="fancybox fancybox.iframe" href="iframe.html" data-fancybox-group="gallery">Quick</a></strong></h1>
                            </aside>
                        </li>
                        <li>
                            <aside class="sell"> 
                                <aside class="title"><a href="greenomart-description.html">Cotton bag with floral<br>emboridery design</a></aside>
                                <aside class="bags"><a href="greenomart-description.html"><img src="../images/greenomart/reusebags/bag2.jpg" alt=""/></a></aside>
                                <aside class="size">GB 42<br>Size: 39 x 33 x 12 cm</aside>
                                <aside class="rate">Rs. 890/-</aside>               
                                <h1><strong><a class="fancybox fancybox.iframe" href="iframe.html" data-fancybox-group="gallery">Quick</a></strong></h1>
                            </aside>
                        </li>
                        <li>
                            <aside class="sell"> 
                                <aside class="title"><a href="greenomart-description.html">Cotton bag with screen<br>printed design</a></aside>
                                <aside class="bags"><a href="greenomart-description.html"><img src="../images/greenomart/reusebags/bag3.jpg" alt=""/></a></aside>
                                <aside class="size">GB 174<br>Size: 32 x 42 cm</aside>
                                <aside class="rate">Rs. 660/-</aside>               
                                <h1><strong><a class="fancybox fancybox.iframe" href="iframe.html" data-fancybox-group="gallery">Quick</a></strong></h1>
                            </aside>
                        </li>
                        <li>
                            <aside class="sell wobg"> 
                                <aside class="title"><a href="greenomart-description.html">Cotton bag with multi-color<br />printed design</a></aside>
                                <aside class="bags"><a href="greenomart-description.html"><img src="../images/greenomart/reusebags/bag1.jpg" alt=""/></a></aside>
                                <aside class="size">GB 269<br />Size: 35 x 45 cm</aside>
                                <aside class="rate">Rs. 780/-</aside>               
                                <h1><strong><a class="fancybox fancybox.iframe" href="iframe.html" data-fancybox-group="gallery">Quick</a></strong></h1>
                            </aside>
                        </li>
                        <li>
                            <aside class="sell wobg"> 
                                <aside class="title"><a href="greenomart-description.html">Cotton bag with floral<br>emboridery design</a></aside>
                                <aside class="bags"><a href="greenomart-description.html"><img src="../images/greenomart/reusebags/bag2.jpg" alt=""/></a></aside>
                                <aside class="size">GB 42<br>Size: 39 x 33 x 12 cm</aside>
                                <aside class="rate">Rs. 890/-</aside>               
                                <h1><strong><a class="fancybox fancybox.iframe" href="iframe.html" data-fancybox-group="gallery">Quick</a></strong></h1>
                            </aside>
                        </li>
                        <li>
                            <aside class="sell wobg"> 
                                <aside class="title"><a href="greenomart-description.html">Cotton bag with screen<br>printed design</a></aside>
                                <aside class="bags"><a href="greenomart-description.html"><img src="../images/greenomart/reusebags/bag3.jpg" alt=""/></a></aside>
                                <aside class="size">GB 174<br>Size: 32 x 42 cm</aside>
                                <aside class="rate">Rs. 660/-</aside>               
                                <h1><strong><a class="fancybox fancybox.iframe" href="iframe.html" data-fancybox-group="gallery">Quick</a></strong></h1>
                            </aside>
                        </li>--%>
                    </ul>
                </article>
                <!-- article greenomart-rt ends here -->
            </section>
            <!-- Section greenomart ends here -->
            <!-- Section recently starts here -->
            <section class="recently">
            	<article class="recentlyhd">
                	<h3>Recently Viewed Bags</h3><small></small>
                </article>
                <uc:Recent id="CtrlRecent" runat="server" flag="Recent" ></uc:Recent>
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

    <link href='http://fonts.googleapis.com/css?family=Bitter:400,700' rel='stylesheet' type='text/css'>
    <script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="../js/jquery.fancybox.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/jquery.fancybox.css?v=2.1.2" media="screen" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('.fancybox').fancybox();
        });
    </script>
    <script src="../js/zxml.src.js" type="text/javascript"></script>
    <script type="text/javascript">
        function GetProductbyMaterial(MasterCategoryId,CategoryId, Material, Colors, Price, count, currentval) {
            //debugger;
            SetCSSSelectedCategory(count, currentval);
            document.getElementById("<%=HdnMaterial.ClientID %>").value = Material;
            if (document.getElementById("<%=HdnPrice.ClientID %>").value != "0") {
                Price = document.getElementById("<%=HdnPrice.ClientID %>").value;
            }
            if (document.getElementById("<%=HdnColor.ClientID %>").value != "0") {
                Colors = document.getElementById("<%=HdnColor.ClientID %>").value;
            }
             //"Load Product by Material"
            var params = "MasCategoryId=" + MasterCategoryId + "&CategoryId=" + CategoryId + "&Material=" + Material + "&Colors=" + Colors + "&PriceRange=" + Price;
             var oXmlHttp1 = zXmlHttp.createRequest();
             oXmlHttp1.open("POST", "../Collection/Collections.aspx", true);
             oXmlHttp1.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
             oXmlHttp1.setRequestHeader("Content-length", params.length);
             oXmlHttp1.setRequestHeader("Connection", "close");
             oXmlHttp1.onreadystatechange = function () {
                 if (oXmlHttp1.readyState == 4) {
                     var getdata = oXmlHttp1.responseText.split('~');
                     if (oXmlHttp1.responseText != "") {
                         //document.getElementById("<%=ul_Materiallist.ClientID %>").innerHTML = getdata[0];
                         document.getElementById("<%=li_Product_List.ClientID %>").innerHTML = getdata[0];                         

                     }
                 }
             }
             oXmlHttp1.send(params);
             document.getElementById("<%=li_Product_List.ClientID %>").innerHTML = "<div style='float:left;width:692px;text-align:center;'><img  src='../images/spin.gif' alt=''> </div>";
         }
         //Set css Class Name for selected Category
         function SetCSSSelectedCategory(count, currentval) {

             for (var i = 0; i < count; i++) {
                 if (document.getElementById("Mat" + i).className == "actmat") {
                     document.getElementById("Mat" + i).className = "";
                 }
             }
             document.getElementById("Mat" + currentval).className = "actmat";
         }

         function GetProductbyPrice(MasterCategoryId, CategoryId, Material, Colors, Price, count, currentval) {
             //debugger;
             SetUncheck(count, currentval);
             document.getElementById("<%=HdnPrice.ClientID %>").value = Price;
            if (document.getElementById("<%=HdnMaterial.ClientID %>").value != "0") {
                Material = document.getElementById("<%=HdnMaterial.ClientID %>").value;
            }
            if (document.getElementById("<%=HdnColor.ClientID %>").value != "0") {
                Colors = document.getElementById("<%=HdnColor.ClientID %>").value;
            }
            //"Load Product by Price"
             var params = "MasCategoryId=" + MasterCategoryId + "&CategoryId=" + CategoryId + "&Material=" + Material + "&Colors=" + Colors + "&PriceRange=" + Price;
            var oXmlHttp1 = zXmlHttp.createRequest();
            oXmlHttp1.open("POST", "../Collection/Collections.aspx", true);
            oXmlHttp1.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            oXmlHttp1.setRequestHeader("Content-length", params.length);
            oXmlHttp1.setRequestHeader("Connection", "close");
            oXmlHttp1.onreadystatechange = function () {
                if (oXmlHttp1.readyState == 4) {
                    var getdata = oXmlHttp1.responseText.split('~');
                    if (oXmlHttp1.responseText != "") {
                        //document.getElementById("<%=ul_Materiallist.ClientID %>").innerHTML = getdata[0];
                         document.getElementById("<%=li_Product_List.ClientID %>").innerHTML = getdata[0];

                     }
                 }
             }
             oXmlHttp1.send(params);
             document.getElementById("<%=li_Product_List.ClientID %>").innerHTML = "<div style='float:left;width:692px;text-align:center;'><img  src='../images/spin.gif' alt=''> </div>";
         }
         //Uncheck others
        function SetUncheck(count, currentval) {

             for (var i = 0; i < count; i++) {
                 if (document.getElementById("Pr" + i).checked == true) {
                     document.getElementById("Pr" + i).checked =false;
                 }
             }
             document.getElementById("Pr" + currentval).checked = true;
        }

        function GetProductbyColor(MasterCategoryId, CategoryId, Material, Colors, Price, count, currentval) {
            //debugger;
            Colors = 0;
             if (document.getElementById("<%=HdnMaterial.ClientID %>").value != "0") {
                Material = document.getElementById("<%=HdnMaterial.ClientID %>").value;
            }
            if (document.getElementById("<%=HdnPrice.ClientID %>").value != "0") {
                Price = document.getElementById("<%=HdnPrice.ClientID %>").value;
            }
            for (var i = 0; i < count; i++) {
                if (document.getElementById("col" + i).checked == true) {
                    if (Colors == 0 || Colors == "") {
                        Colors = document.getElementById("col" + i).value + ",";
                    }
                    else {
                        Colors = Colors + document.getElementById("col" + i).value + ",";
                    }
                }
            }            
            document.getElementById("<%=HdnColor.ClientID %>").value = Colors;
            //"Load Product by Color"
            var params = "MasCategoryId=" + MasterCategoryId + "&CategoryId=" + CategoryId + "&Material=" + Material + "&Colors=" + Colors + "&PriceRange=" + Price;
            var oXmlHttp1 = zXmlHttp.createRequest();
            oXmlHttp1.open("POST", "../Collection/Collections.aspx", true);
            oXmlHttp1.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            oXmlHttp1.setRequestHeader("Content-length", params.length);
            oXmlHttp1.setRequestHeader("Connection", "close");
            oXmlHttp1.onreadystatechange = function () {
                if (oXmlHttp1.readyState == 4) {
                    var getdata = oXmlHttp1.responseText.split('~');
                    if (oXmlHttp1.responseText != "") {
                        //document.getElementById("<%=ul_Materiallist.ClientID %>").innerHTML = getdata[0];
                        document.getElementById("<%=li_Product_List.ClientID %>").innerHTML = getdata[0];

                    }
                }
            }
            oXmlHttp1.send(params);
            document.getElementById("<%=li_Product_List.ClientID %>").innerHTML = "<div style='float:left;width:692px;text-align:center;'><img  src='../images/spin.gif' alt=''> </div>";
        }

        function GetProductbySort(MasterCategoryId, CategoryId, Material, Colors, Price, count, currentval, Sort) {
            //debugger;
            if (document.getElementById("<%=HdnMaterial.ClientID %>").value != "0") {
                Material = document.getElementById("<%=HdnMaterial.ClientID %>").value;
             }
             if (document.getElementById("<%=HdnPrice.ClientID %>").value != "0") {
                Price = document.getElementById("<%=HdnPrice.ClientID %>").value;
             }
            if (document.getElementById("<%=HdnColor.ClientID %>").value != "0") {
                Colors = document.getElementById("<%=HdnColor.ClientID %>").value;
            }
            //"Load Product by Sort"
            var params = "MasCategoryId=" + MasterCategoryId + "&CategoryId=" + CategoryId + "&Material=" + Material + "&Colors=" + Colors + "&PriceRange=" + Price + "&Sort=" + Sort;
            var oXmlHttp1 = zXmlHttp.createRequest();
            oXmlHttp1.open("POST", "../Collection/Collections.aspx", true);
            oXmlHttp1.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            oXmlHttp1.setRequestHeader("Content-length", params.length);
            oXmlHttp1.setRequestHeader("Connection", "close");
            oXmlHttp1.onreadystatechange = function () {
                if (oXmlHttp1.readyState == 4) {
                    var getdata = oXmlHttp1.responseText.split('~');
                    if (oXmlHttp1.responseText != "") {
                        //document.getElementById("<%=ul_Materiallist.ClientID %>").innerHTML = getdata[0];
                        document.getElementById("<%=li_Product_List.ClientID %>").innerHTML = getdata[0];

                    }
                }
            }
            oXmlHttp1.send(params);
            document.getElementById("<%=li_Product_List.ClientID %>").innerHTML = "<div style='float:left;width:692px;text-align:center;'><img  src='../images/spin.gif' alt=''> </div>";
        }

 </script>
</asp:Content>
