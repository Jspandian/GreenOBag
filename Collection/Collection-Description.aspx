<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Collection-Description.aspx.cs" Inherits="GreenOBagWeb.Collection.Collection_Description" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="server">
    <asp:HiddenField ID="Hdn_Qty" runat="server" value="0"/>
    <asp:HiddenField ID="Hdn_Color" runat="server" Value="0" />
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
                        <li id="li_Sitemap_Name" runat="server"><a href="#" title="GreenOMart">GreenOMart</a></li>
                        <li>&gt;</li>
                        <li id="li_SitemapCategory_Name" runat="server">Hand Bags</li>
                    </ul>
                    <aside class="headingd">
                        <h2 id="h_Title_Name" runat="server">Hand Bags</h2>
                        <dl>
                            <dt><a href="#"></a></dt>
                            <dd id="dd_Category" runat="server">
                                <select id="standard-dropdown" onchange="othercategory(this.value)" name="standard-dropdown" class="custom-class1 custom-class2" style="width: 300px;">
                                    <option value="1">Browse Other Categories</option>
                                    <option value="2">Categories1</option>
                                </select>
                            </dd>
                        </dl>
                    </aside>
                    <article class="productblk">
                        <aside class="productblk-lt" id="All_DisplayImages" runat="server">
                            <%--<ul>
                                <li><a href="../images/greenomart/handbag/large/l1.jpg" rel="zoom-id:Zoomer2;" rev="../images/greenomart/handbag/medium/m1.jpg">
                                    <img src="../images/greenomart/handbag/small/s1.jpg" /></a></li>
                                <li><a href="../images/greenomart/handbag/large/l2.jpg" rel="zoom-id:Zoomer2;" rev="../images/greenomart/handbag/medium/m2.jpg">
                                    <img src="../images/greenomart/handbag/small/s2.jpg" /></a></li>
                                <li><a href="../images/greenomart/handbag/large/l3.jpg" rel="zoom-id:Zoomer2;" rev="../images/greenomart/handbag/medium/m3.jpg">
                                    <img src="../images/greenomart/handbag/small/s3.jpg" /></a></li>
                                <li><a href="../images/greenomart/handbag/large/l4.jpg" rel="zoom-id:Zoomer2;" rev="../images/greenomart/handbag/medium/m4.jpg">
                                    <img src="../images/greenomart/handbag/small/s4.jpg" /></a></li>
                            </ul>--%>
                        </aside>
                        <aside class="productblk-ct" id="First_DisplayImage" runat="server"><a href="../images/greenomart/handbag/large/l1.jpg" class="MagicZoom" id="Zoomer2" rel="selectors-effect-speed:600;">
                            <img src="../images/greenomart/handbag/medium/m1.jpg" /></a></aside>
                        <aside class="productblk-rt">
                            <h5 id="h_Code_Title" runat="server"><span>GB 234</span><br>
                                Modern Women Beige &amp;<br>
                                Black Tote Bag</h5>
                            <dfn id="df_Price" runat="server">Rs.899/-</dfn>
                            <dl>
                                <dt id="languages" style="color: #000; font: 400 14px 'Bitter', serif;">
                                    <ul class="dropdown" id="dl_StockQty" runat="server">
                                        <li>Qty</li>
                                        <li>1</li>
                                        <li>2</li>
                                    </ul>
                                </dt>
                                <dd><%--<a href="#" title="Add to Cart">Add to Cart</a>--%>
                                    <asp:LinkButton ID="lnk_AddCart" OnClick="lnk_AddCart_Click" OnClientClick="return Validation()" runat="server">Add to Cart</asp:LinkButton></dd>
                            </dl>
                            <aside class="wishl">
                                <ul class="socialicons2">
                                    <li class="facebook2"><a href="#" title="Facebook">Facebook</a></li>
                                    <li class="twitter2"><a href="#" title="Twitter">Twitter</a></li>
                                    <li class="pinterest2"><a href="#" title="Pinterest">Pinterest</a></li>
                                    <li class="google2"><a href="#" title="Google+">Google+</a></li>
                                </ul>
                                <font><%--<a href="#">Save in wishlist</a>--%>
                                    <asp:LinkButton ID="lnk_Wishlist" OnClick="lnk_Wishlist_Click" OnClientClick="return Validation()" runat="server" Width="113px">Save in wishlist</asp:LinkButton>
                                </font>
                            </aside>
                            <p id="p_desc" runat="server">A stylish, versatile and trendy inclusion in your bag collection. This bag from Pick Pocket is perfect to be carried to the beach, barbeque or even the mall. Team it up with a stylish pair of ripped jeans, tees and flat sandals for a neat, casual look.</p>
                        </aside>
                        <aside class="productblk-rte" id="as_feature" runat="server">                            
                           <%-- <p><span>Size:</span><br>
                                20" x 24"</p>
                            <p>
                                <span>Colour:</span><br>                                
                                <img style="cursor:pointer;border:3px solid #09c400" src="../images/color/blue.gif" alt="">
                                <img src="../images/color/red.gif" alt="">
                                <img src="../images/color/black.gif" alt="">
                                <img src="../images/color/pink.gif" alt="">
                            </p>
                            <p><span>Fabric:</span><br>
                                Cotton</p>
                            <p><span>Theme:</span><br>
                                Stripes</p>
                            <p><span>Bag Closure:</span><br>
                                Yes</p>
                            <p><span>Inner Pocket:</span><br>
                                No</p>
                            <p><span>Handle:</span><br>
                                Yes</p>
                            <p><span>Lining:</span><br>
                                Yes</p>--%>
                        </aside>
                    </article>
                </article>
                <!-- article greenomart-rtd ends here -->
            </section>
            <!-- Section greenomart ends here -->
            <!-- Section recently starts here -->
            <section class="recently">
                <article class="recentlyhd">
                    <h3>You May also Like</h3>
                    <small></small>
                </article>
              <%--<div id="ulyoumayLike" runat="server">--%>
                <ul class="recentlyvb" id="ulyoumayLike" runat="server">
                    <li>
                        <aside class="sell1">
                            <aside class="title1"><a href="greenomart-description.html">Cotton bag with multi-color<br />
                                printed design</a></aside>
                            <aside class="bags1"><a href="greenomart-description.html">
                                <img src="../images/greenomart/reusebags/bag1.jpg" alt="" /></a></aside>
                            <aside class="size1">GB 269<br />
                                Size: 35 x 45 cm</aside>
                            <aside class="rate1">Rs. 780/-</aside>
                            <h1><strong><a href="#" target="_blank">Quick</a></strong></h1>
                        </aside>
                    </li>
                    <li>
                        <aside class="sell1">
                            <aside class="title1"><a href="greenomart-description.html">Cotton bag with floral<br>
                                emboridery design</a></aside>
                            <aside class="bags1"><a href="greenomart-description.html">
                                <img src="../images/greenomart/reusebags/bag2.jpg" alt="" /></a></aside>
                            <aside class="size1">GB 42<br>
                                Size: 39 x 33 x 12 cm</aside>
                            <aside class="rate1">Rs. 890/-</aside>
                            <h1><strong><a href="#" target="_blank">Quick</a></strong></h1>
                        </aside>
                    </li>
                    <li>
                        <aside class="sell1">
                            <aside class="title1"><a href="greenomart-description.html">Cotton bag with screen<br>
                                printed design</a></aside>
                            <aside class="bags1"><a href="greenomart-description.html">
                                <img src="../images/greenomart/reusebags/bag3.jpg" alt="" /></a></aside>
                            <aside class="size1">GB 174<br>
                                Size: 32 x 42 cm</aside>
                            <aside class="rate1">Rs. 660/-</aside>
                            <h1><strong><a href="#" target="_blank">Quick</a></strong></h1>
                        </aside>
                    </li>
                    <li>
                        <aside class="sell1">
                            <aside class="title1"><a href="greenomart-description.html">Cotton bag with multi-color<br />
                                printed design</a></aside>
                            <aside class="bags1"><a href="greenomart-description.html">
                                <img src="../images/greenomart/reusebags/bag1.jpg" alt="" /></a></aside>
                            <aside class="size1">GB 269<br />
                                Size: 35 x 45 cm</aside>
                            <aside class="rate1">Rs. 780/-</aside>
                            <h1><strong><a href="#" target="_blank">Quick</a></strong></h1>
                        </aside>
                    </li>
                </ul>
                <%--</div>--%>
            </section>
            <!-- Section recently ends here -->

        </section>
        <!-- Section wrapper ends here -->
    </section>
    <!-- Section greenomartblk ends here -->
    <!-- Google Fonts Starts here -->
    <link href='http://fonts.googleapis.com/css?family=Bitter:400,700' rel='stylesheet' type='text/css'>
    <script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="../js/jquery.selectBox.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("SELECT")
            .selectBox()
        });
    </script>
    <script src="../js/jquery.dropdown.js"></script>
    <script>
        $(document).ready(function () {
            var lang = $("#languages").width(89).dropdown({
            });

        });
    </script>
    <script>
        function othercategory(category) {
            var value = category.split(',');
            if (value[0] == 1) {
                document.location = '../Collection/GreenOMart-Collections.aspx?' + value[1];
            }
            else if (value[0] == 2) {
                document.location = '../Collection/GreenOGift-Collections.aspx?' + value[1];
            }
        }
        function selectqty(qty) {            
            document.getElementById("<%=Hdn_Qty.ClientID %>").value = qty;
            //alert(document.getElementById("<%=Hdn_Qty.ClientID %>").value);
        }
        function Color(count, currentid,colorID) {
            //debugger;
            for (var i = 0; i < count; i++) {                
                document.getElementById("col" + i).setAttribute('class','btncolor');
            }
            document.getElementById("col" + currentid).setAttribute('class', 'btncolor-sel');
            document.getElementById("<%=Hdn_Color.ClientID %>").value = colorID;   
            //alert(document.getElementById("<%=Hdn_Color.ClientID %>").value);
        }
        function Validation() {
            if (document.getElementById("<%=Hdn_Color.ClientID %>").value == "0") {
                alert("Please Choose the Color!");
                return false;
            }
            if (document.getElementById("<%=Hdn_Qty.ClientID %>").value == "0") {
                alert("Please Select the Quantity!");
                return false;
            }
            return true;
        }
    </script>
    <style type="text/css">
        /* Dropdown control */
        .selectBox-dropdown {
            width: 300px;
            position: relative;
            text-decoration: none;
            text-align: left;
            outline: none;
            vertical-align: middle;
            cursor: pointer;
            color: #000;
            font-family: 'museo500';
            font-size: 18px;
            font-weight: 500;
            height: 34px;
            padding: 14px 0 0;
            float: left;
            background: url(../images/newselect.png) 0 0 no-repeat;
        }

            .selectBox-dropdown:focus, .selectBox-dropdown:focus .selectBox-arrow {
            }

            .selectBox-dropdown.selectBox-menuShowing {
            }

            .selectBox-dropdown .selectBox-label {
                padding: 0 0 0 10px;
                display: inline-block;
                white-space: nowrap;
                overflow: hidden;
            }

            .selectBox-dropdown .selectBox-arrow {
                position: absolute;
                top: 0;
                right: 0;
                width: 0;
                height: 100%;
                background: none;
            }
        /* Dropdown menu */
        .selectBox-dropdown-menu {
            position: absolute;
            z-index: 99999;
            max-height: 200px;
            min-height: 1.5em;
            background: #FFF;
            color: #000;
            font-family: 'museo500';
            font-size: 18px;
            font-weight: 500;
            overflow: auto;
            width: 352px;
            border: 1px solid #cbcbcb;
            border-radius: 5px;
        }
        /* Inline control */
        .selectBox-inline {
            min-width: 361px;
            outline: none;
            background: #FFF;
            display: inline-block;
            overflow: auto;
        }

            .selectBox-inline:focus {
                border-color: #cbcbcb;
            }
        /* Options */
        .selectBox-options, .selectBox-options LI, .selectBox-options LI A {
            list-style: none;
            display: block;
            cursor: default;
            padding: 0;
            margin: 0;
        }

            .selectBox-options LI A {
                line-height: 1.5;
                padding: 0 .5em;
                white-space: nowrap;
                overflow: hidden;
                background: 6px center no-repeat;
            }

            .selectBox-options LI.selectBox-hover A {
                background-color: #4dff30;
            }

            .selectBox-options .selectBox-optgroup {
                background: #4dff30;
                font-weight: bold;
                line-height: 1.5;
                padding: 0 .3em;
                white-space: nowrap;
            }
        /* Disabled state */
        .selectBox.selectBox-disabled {
            color: #000 !important;
        }

        .selectBox-dropdown.selectBox-disabled .selectBox-arrow {
            opacity: .5;
            filter: alpha(opacity=50);
            border-color: #cbcbcb;
        }

        .selectBox-inline.selectBox-disabled {
            color: #000 !important;
        }

            .selectBox-inline.selectBox-disabled .selectBox-options A {
                background-color: transparent !important;
            }
    </style>
    <style>
        .btncolor {
            cursor: pointer;
            margin-left: 2px;
            border: 3px solid #FFF;
        }

        .btncolor-sel {
            cursor: pointer;
            margin-left: 2px;
            border: 3px solid #09c400;            
        }
    </style>
    <link href="../magiczoom/magiczoom.css" rel="stylesheet" type="text/css" media="screen" />
    <script src="../magiczoom/magiczoom.js" type="text/javascript"></script>
</asp:Content>
