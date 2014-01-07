<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product-detail-popup.aspx.cs" Inherits="GreenOBagWeb.Product.Product_detail_popup" %>

<!DOCTYPE html>

<html>
<head>
<title>fancyBox - iframe demo</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <%--<link href="../css/style.css" rel="stylesheet" />--%>
    <link href='http://fonts.googleapis.com/css?family=Bitter:400,700' rel='stylesheet' type='text/css' /> 
       
<script src="../js/html5.js"></script>
<script type="text/javascript">
    function Color(count, currentid, colorID) {
        //debugger;
        for (var i = 0; i < count; i++) {
            document.getElementById("col" + i).setAttribute('class', 'btncolor');
        }
        document.getElementById("col" + currentid).setAttribute('class', 'btncolor-sel');
        document.getElementById("<%=Hdn_Color.ClientID %>").value = colorID;
        //alert(document.getElementById("<%=Hdn_Color.ClientID %>").value);
    }
    function selectqty(qty) {
        document.getElementById("<%=Hdn_Qty.ClientID %>").value = qty;
        //alert(document.getElementById("<%=Hdn_Qty.ClientID %>").value);
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
</head>
<body>
<form id="from" runat="server">
<asp:HiddenField ID="Hdn_Color" runat="server" Value="0" />
<asp:HiddenField ID="Hdn_Qty" runat="server" value="0"/>
<article class="productblk1">
    <aside class="productblk-lt" id="All_DisplayImages" runat="server">
       <%-- <ul>
            <li><a href="../images/greenomart/handbag/large/l1.jpg" rel="zoom-id:Zoomer2;" rev="../images/greenomart/handbag/medium/m1.jpg"><img src="../images/greenomart/handbag/small/s1.jpg"/></a></li>
            <li><a href="../images/greenomart/handbag/large/l2.jpg" rel="zoom-id:Zoomer2;" rev="../images/greenomart/handbag/medium/m2.jpg"><img src="../images/greenomart/handbag/small/s2.jpg"/></a></li>
            <li><a href="../images/greenomart/handbag/large/l3.jpg" rel="zoom-id:Zoomer2;" rev="../images/greenomart/handbag/medium/m3.jpg"><img src="../images/greenomart/handbag/small/s3.jpg"/></a></li>
            <li><a href="../images/greenomart/handbag/large/l4.jpg" rel="zoom-id:Zoomer2;" rev="../images/greenomart/handbag/medium/m4.jpg"><img src="../images/greenomart/handbag/small/s4.jpg"/></a></li>
        </ul>--%>
    </aside>
    <aside class="productblk-ct" id="First_DisplayImage" runat="server"><%--<a href="../images/greenomart/handbag/large/l1.jpg" class="MagicZoom" id="Zoomer2" rel="selectors-effect-speed:600;">
        <img src="../images/greenomart/handbag/medium/m1.jpg" /></a>--%></aside>
    <aside class="productblk-rt">
        <h5 id="h_Code_Title" runat="server"><span>GB 234</span><br>Modern Women Beige &amp;<br>Black Tote Bag</h5>
        <dfn id="df_Price" runat="server">Rs.899/-</dfn>
        <dl>
            <dt id="languages" style="color:#000;font:400 14px 'Bitter', serif;">
                 <ul class="dropdown" id="dl_StockQty" runat="server">
                  <li>Qty</li>
                  <li>1</li>
                  <li>2</li>
                  </ul>
            </dt>
            <dd>
            <asp:LinkButton ID="lnk_AddCart" OnClick="lnk_AddCart_Click" OnClientClick="return Validation()" runat="server">Add to Cart</asp:LinkButton>
           
            </dd>
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
        <p><span>Size:</span><br>20" x 24"</p>
        <p><span>Colour:</span><br>
        <img src="../images/color/blue.gif" alt=""> <img src="../images/color/red.gif" alt=""> <img src="../images/color/black.gif" alt=""> <img src="../images/color/pink.gif" alt=""></p>
        <p><span>Fabric:</span><br>Cotton</p>
        <p><span>Theme:</span><br>Stripes</p>
        <p><span>Bag Closure:</span><br>Yes</p>
        <p><span>Inner Pocket:</span><br>No</p>
        <p><span>Handle:</span><br>Yes</p>
        <p><span>Lining:</span><br>Yes</p>
    </aside>
</article>
<script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
<script src="../js/jquery.dropdown.js"></script>
<script>
    $(document).ready(function () {
        var lang = $("#languages").width(89).dropdown({
        });
    });
</script>
<script type="text/javascript">
    var link = "";
    function Closediv(link) {
        debugger;
        if (link == "cart") {
            top.location.href = "../Shopping/Shopping-Bag.aspx";
        }
        else {
            top.location.href = link;
        }
    }
</script>

<link href="../magiczoom/magiczoom.css" rel="stylesheet" type="text/css" media="screen"/>               
<script src="../magiczoom/magiczoom.js" type="text/javascript"></script>
</form>
</body>
</html>
