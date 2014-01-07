<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="GreenOBagWeb.Index" %>
<asp:Content ID="Index_Content" ContentPlaceHolderID="BodyContent" runat="server">
    <!-- Section bannerblk starts here -->
    <section class="bannerblk">
    	<!-- Section wrapper starts here -->
    	<section class="wrapper">
        	<article class="banner">
            	<div class="flexslider">
                    <ul class="slides" id="ulHbanner" runat="server">
                        <%--<li><a href="#"><img src="../images/homebanner/banner1.jpg" alt=""></a></li>                             
                        <li><a href="#"><img src="../images/homebanner/banner2.jpg" alt=""></a></li> 
                        <li><a href="#"><img src="../images/homebanner/banner3.jpg" alt=""></a></li> 
                        <li><a href="#"><img src="../images/homebanner/banner4.jpg" alt=""></a></li>  --%>                  
                    </ul>         
   				 </div>
          </article>
        </section>
        <!-- Section wrapper ends here -->
    </section>
    <!-- Section bannerblk ends here -->
    <!-- Section yellowbg starts here -->
    <section class="yellowbg">
    	<!-- Section wrapper starts here -->
    	<section class="wrapper">
        	<article class="yellowbgin">
            	<article class="yellowbgin-top">
                	<aside class="arrival">
                    	<h5>New Arrivals</h5>
                    	<aside class="arrivalin">
                        	<b>PP Non Woven Bags</b>
                            <figcaption>Reusable and Light weight yet strong bags. Suitable for designer as well as regular use.</figcaption>
                            <figure><img src="../images/w.png" alt=""></figure><div class="clear"></div>
                            <big><a href="#" title="View all">View all</a></big>
                        </aside>
                    </aside>
                    <aside class="greenbox">
                    	<h5>Collections</h5>
                    	<aside class="greenboxin">
                        	<div id="carousel-demo1" class="sliderkit carousel-demo1">
                              <div class="sliderkit-nav">
                                <div class="sliderkit-nav-clip" id="div_Collections" runat="server">
                                  <ul>
                                    <li>
                                      <div class="look"><a class="fancybox fancybox.iframe" href="../Collection/Product-detail-popup.aspx" data-fancybox-group="gallery"><img src="../images/homecollection/bag1.jpg"/><small></small></a></div>
                                      <div class="gtxt">GB 42<br>
                                        Cotton Bag<br>
                                        Rs. 490/-</div>
                                    </li>
                                    <li>
                                      <div class="look"><a class="fancybox fancybox.iframe" href="../Collection/Product-detail-popup.aspx" data-fancybox-group="gallery"><img src="../images/homecollection/bag2.jpg"/><small></small></a></div>
                                      <div class="gtxt">GB 110<br>
                                        Jute Bag<br>
                                        Rs. 990/-</div>
                                    </li>
                                    <li>
                                      <div class="look"><a class="fancybox fancybox.iframe" href="../Collection/Product-detail-popup.aspx" data-fancybox-group="gallery"><img src="../images/homecollection/bag3.jpg"/><small></small></a></div>
                                      <div class="gtxt">GB 225<br>
                                        Jute Bag<br>
                                        Rs. 1350/-</div>
                                    </li>
                                    <li>
                                      <div class="look"><a href="#"><img src="../images/homecollection/bag1.jpg"/><small></small></a></div>
                                      <div class="gtxt">GB 42<br>
                                        Cotton Bag<br>
                                        Rs. 490/-</div>
                                    </li>
                                    <li>
                                      <div class="look"><a href="#"><img src="../images/homecollection/bag2.jpg"/><small></small></a></div>
                                      <div class="gtxt">GB 110<br>
                                        Jute Bag<br>
                                        Rs. 990/-</div>
                                    </li>
                                    <li>
                                      <div class="look"><a href="#"><img src="../images/homecollection/bag3.jpg"/><small></small></a></div>
                                      <div class="gtxt">GB 225<br>
                                        Jute Bag<br>
                                        Rs. 1350/-</div>
                                    </li>
                                  </ul>
                                </div>
                                <div class="sliderkit-btn sliderkit-nav-btn sliderkit-nav-prev"><a href="#" title="Scroll to the left"><span>Previous</span></a></div>
                                <div class="sliderkit-btn sliderkit-nav-btn sliderkit-nav-next"><a href="#" title="Scroll to the right"><span>Next</span></a></div>
                              </div>
        					</div>
                        </aside>
                    </aside>
                </article>
                <article class="yellowbgin-btm">
                	<code>Stay<br>Connected</code>
                    <cite><a href="../User/Register.aspx">SIGN UP</a> FOR E-MAILS <font>and take 15% off on your next order</font></cite>
                    <ul class="socialicons1">
                    	<li class="facebook1"><a href="#" title="Facebook">Facebook</a></li>
                        <li class="twitter1"><a href="#" title="Twitter">Twitter</a></li>
                        <li class="pinterest1"><a href="#" title="Pinterest">Pinterest</a></li>
                    </ul>
                </article>
            </article>
        </section>
        <!-- Section wrapper ends here -->
    </section>
    <!-- Section yellowbg ends here -->
    <!-- Section whitebg starts here -->
    <section class="whitebg">
    	<!-- Section wrapper starts here -->
    	<section class="wrapper">
        	<article class="whitebgin">
            	<aside class="find">
                	<h5>Find Us on Facebook</h5>
                    <figure><img src="../images/facebook.jpg" alt=""></figure>
                </aside>
                <aside class="greeno">
                	<h5>GreenOBlog</h5>
                    <figure><a href="#"><img src="../images/blog.jpg" alt=""></a></figure>
                </aside>
            </article>
        </section>
        <!-- Section wrapper ends here -->
    </section>
    <!-- Section whitebg ends here -->
    <!-- Section graybox starts here -->
    <section class="graybox">
    	<!-- Section wrapper starts here -->
    	<section class="wrapper">
        	<article class="grayboxin">
                <aside class="greenogift">                    
                    <div class="sliderkit contentslider-std">                      	
                      <div class="sliderkit-panels">
                      <div class="sliderkit-nav">
                        <div class="sliderkit-nav-clip">
                          <ul>
                            <li><a href="#" title="[link title]">&nbsp;</a></li>
                            <li><a href="#" title="[link title]">&nbsp;</a></li>
                            <li><a href="#" title="[link title]">&nbsp;</a></li>
                            <li><a href="#" title="[link title]">&nbsp;</a></li>
                          </ul>
                        </div>
                      </div>
                        <div class="sliderkit-panelin" id="div_Top4GOGift" runat="server">
                          <%--<div class="sliderkit-panel">
                            <div class="showcaseblk">
                              <div class="showcase1">
                                <div class="showcase1-lt"><em></em><img src="../images/greenogift/bag.jpg" alt=""></div>
                                <div class="showcase1-rt">
                                	<h4>Cottton Bag</h4>
                                    <p>Reusable and 100% Natural bags with an ethinic as well as modern contemporary look.</p>
                                    <h6>Size: 40“ x 60” x 10 cms</h6>
                                    <dfn>Rs. 750/-</dfn>
                                    <i><a href="#" title="View Details">View Details</a></i>
                                </div>
                              </div>
                            </div>
                          </div> 
                          <div class="sliderkit-panel">
                            <div class="showcaseblk">
                              <div class="showcase1">
                                <div class="showcase1-lt"><em></em><img src="../images/greenogift/bag.jpg" alt=""></div>
                                <div class="showcase1-rt">
                                	<h4>Cottton Bag</h4>
                                    <p>Reusable and 100% Natural bags with an ethinic as well as modern contemporary look.</p>
                                    <h6>Size: 40“ x 60” x 10 cms</h6>
                                    <dfn>Rs. 750/-</dfn>
                                    <i><a href="#" title="View Details">View Details</a></i>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="sliderkit-panel">
                            <div class="showcaseblk">
                              <div class="showcase1">
                                <div class="showcase1-lt"><em></em><img src="../images/greenogift/bag.jpg" alt=""></div>
                                <div class="showcase1-rt">
                                	<h4>Cottton Bag</h4>
                                    <p>Reusable and 100% Natural bags with an ethinic as well as modern contemporary look.</p>
                                    <h6>Size: 40“ x 60” x 10 cms</h6>
                                    <dfn>Rs. 750/-</dfn>
                                    <i><a href="#" title="View Details">View Details</a></i>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="sliderkit-panel">
                            <div class="showcaseblk">
                              <div class="showcase1">
                                <div class="showcase1-lt"><em></em><img src="../images/greenogift/bag.jpg" alt=""></div>
                                <div class="showcase1-rt">
                                	<h4>Cottton Bag</h4>
                                    <p>Reusable and 100% Natural bags with an ethinic as well as modern contemporary look.</p>
                                    <h6>Size: 40“ x 60” x 10 cms</h6>
                                    <dfn>Rs. 750/-</dfn>
                                    <i><a href="#" title="View Details">View Details</a></i>
                                </div>
                              </div>
                            </div>
                          </div>--%>                        
                        </div>
                      </div>                      
                    </div>
                    <h5>GreenO<span>Gift</span><br><small>Great gifts at great value!</small></h5>
                </aside>
                <aside class="greenoexport">                    
                    <div class="sliderkit contentslider-std1">                      	
                      <div class="sliderkit-panels">
                      <div class="sliderkit-nav">
                        <div class="sliderkit-nav-clip">
                          <ul>
                            <li><a href="#" title="[link title]">&nbsp;</a></li>
                            <li><a href="#" title="[link title]">&nbsp;</a></li>
                            <li><a href="#" title="[link title]">&nbsp;</a></li>
                            <li><a href="#" title="[link title]">&nbsp;</a></li>
                          </ul>
                        </div>
                      </div>
                        <div class="sliderkit-panelin" id="div_Top4GOExport" runat="server">
                         <%-- <div class="sliderkit-panel">
                            <div class="showcaseblk">
                              <div class="showcase1">
                                <div class="showcase1-lt1"><em></em><img src="../images/greenoexport/bag.jpg" alt=""></div>
                                <div class="showcase1-rt1">
                                	<h4>Organic Bags</h4>
                                    <p>Reusable and 100% Natural bags with an ethinic as well as modern contemporary look.</p>
                                    <h6>Size: 30“ x 60” x 10 cms</h6>
                                    <dfn>Rs. 950/-</dfn>
                                    <i><a href="#" title="View Details">View Details</a></i>
                                </div>
                              </div>
                            </div>
                          </div> 
                          <div class="sliderkit-panel">
                            <div class="showcaseblk">
                              <div class="showcase1">
                                <div class="showcase1-lt1"><em></em><img src="../images/greenoexport/bag.jpg" alt=""></div>
                                <div class="showcase1-rt1">
                                	<h4>Organic Bags</h4>
                                    <p>Reusable and 100% Natural bags with an ethinic as well as modern contemporary look.</p>
                                    <h6>Size: 30“ x 60” x 10 cms</h6>
                                    <dfn>Rs. 950/-</dfn>
                                    <i><a href="#" title="View Details">View Details</a></i>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="sliderkit-panel">
                            <div class="showcaseblk">
                              <div class="showcase1">
                                <div class="showcase1-lt1"><em></em><img src="../images/greenoexport/bag.jpg" alt=""></div>
                                <div class="showcase1-rt1">
                                	<h4>Organic Bags</h4>
                                    <p>Reusable and 100% Natural bags with an ethinic as well as modern contemporary look.</p>
                                    <h6>Size: 30“ x 60” x 10 cms</h6>
                                    <dfn>Rs. 950/-</dfn>
                                    <i><a href="#" title="View Details">View Details</a></i>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="sliderkit-panel">
                            <div class="showcaseblk">
                              <div class="showcase1">
                                <div class="showcase1-lt1"><em></em><img src="../images/greenoexport/bag.jpg" alt=""></div>
                                <div class="showcase1-rt1">
                                	<h4>Organic Bags</h4>
                                    <p>Reusable and 100% Natural bags with an ethinic as well as modern contemporary look.</p>
                                    <h6>Size: 30“ x 60” x 10 cms</h6>
                                    <dfn>Rs. 950/-</dfn>
                                    <i><a href="#" title="View Details">View Details</a></i>
                                </div>
                              </div>
                            </div>
                          </div>--%>                       
                        </div>
                      </div>                      
                    </div>
                    <h5>GreenO<span>Export</span><br><small>Quality first - at home &amp; beyond</small></h5>
                </aside>
            </article>
        </section>
        <!-- Section wrapper ends here -->
    </section>
    <!-- Section graybox ends here -->
    <link href='http://fonts.googleapis.com/css?family=Monda' rel='stylesheet' type='text/css' />
    <style type="text/css">
        section.bannerblk {
            width: 100%;
            margin: 15px auto 0;
            background: url('../images/Leaf-Pattern.png') 0 0 repeat;
            float: left;
            min-height: 624px;
        }

        section.yellowbg {
            width: 100%;
            margin: 0 auto;
            background: url('../images/yellowbg.png') 0 0 repeat-x;
            float: left;
            height: 526px;
        }

        section.graybox {
            width: 100%;
            margin: 0 auto;
            float: left;
            min-height: 441px;
            background: url('../images/grey-boxes.png') 0 0 repeat;
            border-top: 1px solid #e1e1e1;
        }
    </style>
    <script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
    <script src="../js/jquery.flexslider.js"></script>
    <script type="text/javascript">
        //$(function () {
        //    SyntaxHighlighter.all();
        //});
        
        $(window).load(function () {
            $('.flexslider').flexslider({
                animation: "fade",
                start: function (slider) {
                    $('body').removeClass('loading');
                }
            });
        });
    </script>
    <script type='text/javascript' src='../js/jquery.easing.sliderkitpack.js'></script>
    <script type="text/javascript">
        $(window).load(function () {
            $("#carousel-demo1").sliderkit({
                auto: false,
                shownavitems: 3,
                scroll: 1,
                mousewheel: false,
                circular: false,
                start: 2
            });
        });
    </script>
    <script type="text/javascript">
        $(window).load(function () { //$(window).load() must be used instead of $(document).ready() because of Webkit compatibility	
            $(".contentslider-std").sliderkit({
                auto: false,
                tabs: 1,
                circular: 1,
                panelfx: "sliding",
                panelfxfirst: "fading",
                panelfxeasing: "easeInOutExpo",
                fastchange: 0,
                keyboard: 1
            });
        });
    </script>
    <script type="text/javascript">
        $(window).load(function () { //$(window).load() must be used instead of $(document).ready() because of Webkit compatibility	
            $(".contentslider-std1").sliderkit({
                auto: false,
                tabs: 1,
                circular: 1,
                panelfx: "sliding",
                panelfxfirst: "fading",
                panelfxeasing: "easeInOutExpo",
                fastchange: 0,
                keyboard: 1
            });
        });
    </script>
    <script type="text/javascript" src="../js/jquery.fancybox.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/jquery.fancybox.css?v=2.1.2" media="screen" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('.fancybox').fancybox();
        });
    </script>
    <script>
        function hidemenu() {
            document.getElementById('ul_TopMenu').setAttribute('style', 'display:none');
        }
    </script>
</asp:Content>

