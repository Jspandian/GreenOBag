$.fn.dropdown = function(options){
var d={
elements:[],
width:89,height:40,
image:"../images/greenomart/select.png",
mouseovercolor:"#08b100",
mouseoutcolor:"white"
}
this.value = function(){
var sb_id = $(this).attr("id")+"_sb";
return $("#"+sb_id).text().replace(/(^[\s\xA0]+|[\s\xA0]+$)/g, '');
};
this.select = function(position){
if(is_int(position)){
$(d.elements).each(function(){
var sb_id = $(this).attr("id")+"_sb";
var html = $(this).find("ul:first li:eq("+position+")").html();
if(html)$("#"+sb_id).html(html);
});
}else{
$(d.elements).each(function(){
var sb_id = $(this).attr("id")+"_sb";
var lis = $(this).find("ul:first li");
for(var i=0;i<lis.length;i++){
if(position==$(lis[i]).text().replace(/(^[\s\xA0]+|[\s\xA0]+$)/g, '')){
$("#"+sb_id).html($(lis[i]).html());
break;
}
}
});
}
function is_int(variable){
return variable.constructor === Number && Math.round(variable, 0) === variable;
}
};
function init(element){
d.elements[d.elements.length]=element;
var sb_id = $(element).attr("id")+"_sb";
var tb_id = $(element).attr("id")+"_tb";
$(element).prepend("<table  id='"+tb_id+"' cellspacing='0' '' cellpadding='0' style='margin:0px;line-height:40px;text-indent:10px;border-collapse:collapse;' align='left'><tr><td id='"+sb_id+"' valign='middle'>DROPDOWN</td></tr></table>");
$("#"+tb_id).height(d.height).width(d.width)
.css("background-image","url("+d.image+")")
.css("background-repeat","no-repeat");
// List
$(element).find("ul:first").css("display","none")
//.css("display","none")
.css("border","1px solid #cbcbcb")
.css("width",89)
.css("text-indent",10)
.css("list-style-type","none")
.css("margin-top",40).css("padding",0)
.width(d.width);
// Mouse over
$(element).mouseover(function(){
$(element).find("ul:first").css("display","block");
});
// Mouse out
$(element).mouseout(function(){
$(element).find("ul:first").css("display","none");
});
// List items
$(element).find("ul:first").each(function(){
$(this).css("z-index","9999").css("position","absolute");
//$(this).width($("#"+d.id).width());
$(this).find("li").each(function(){
$(this).css("float","left").css("clear","left").css("width","100%");
$(this).css("background",d.mouseoutcolor);
$(this).mouseover(function(){$(this).css("background",d.mouseovercolor);});
$(this).mouseout(function(){$(this).css("background",d.mouseoutcolor);});
$(this).click(function(){
var old = $("#"+sb_id).text(); 
$("#"+sb_id).html($(this).html());
if(d.change){if($(this).text()!=old)d.change($(this).text().replace(/(^[\s\xA0]+|[\s\xA0]+$)/g, ''));}
if(d.click){d.click($(this).text().replace(/(^[\s\xA0]+|[\s\xA0]+$)/g, ''));}
});
});
});
$(element).find("ul:first").find("li:first").each(function(){
$("#"+sb_id).html($(this).html());
});
}
return this.each(function(){
if(undefined===window.jquery_remiya_dropdown){window.jquery_remiya_dropdown=[];}
if(!$(this).attr("id")){$(this).attr("id","jquery_dropdown_"+window.jquery_remiya_dropdown.length);window.jquery_remiya_dropdown[window.jquery_remiya_dropdown.length]=window.jquery_remiya_dropdown.length;}
if(undefined!==options)$.extend(d,options);
init(this);	    
});
};

/**********************************jquery.dropdown1.js***********************************/
$.fn.dropdown1 = function(options){
var d={
elements:[],
width:335,height:45,
image:"images/sselect.gif",
mouseovercolor:"#7c9cc0",
mouseoutcolor:"white"
}
this.value = function(){
var sb_id = $(this).attr("id")+"_sb";
return $("#"+sb_id).text().replace(/(^[\s\xA0]+|[\s\xA0]+$)/g, '');
};
this.select = function(position){
if(is_int(position)){
$(d.elements).each(function(){
var sb_id = $(this).attr("id")+"_sb";
var html = $(this).find("ul:first li:eq("+position+")").html();
if(html)$("#"+sb_id).html(html);
});
}else{
$(d.elements).each(function(){
var sb_id = $(this).attr("id")+"_sb";
var lis = $(this).find("ul:first li");
for(var i=0;i<lis.length;i++){
if(position==$(lis[i]).text().replace(/(^[\s\xA0]+|[\s\xA0]+$)/g, '')){
$("#"+sb_id).html($(lis[i]).html());
break;
}
}
});
}
function is_int(variable){
return variable.constructor === Number && Math.round(variable, 0) === variable;
}
};
function init(element){
d.elements[d.elements.length]=element;
var sb_id = $(element).attr("id")+"_sb";
var tb_id = $(element).attr("id")+"_tb";
$(element).prepend("<table  id='"+tb_id+"' cellspacing='0' '' cellpadding='0' style='margin:0px;line-height:45px;text-indent:15px;border-collapse:collapse;' align='left'><tr><td id='"+sb_id+"' valign='middle'>DROPDOWN</td></tr></table>");
$("#"+tb_id).height(d.height).width(d.width)
.css("background-image","url("+d.image+")")
.css("background-repeat","no-repeat");
// List
$(element).find("ul:first").css("display","none")
//.css("display","none")
.css("border","1px solid #cbcbcb")
.css("width",335)
.css("text-indent",15)
.css("list-style-type","none")
.css("margin-top",45).css("padding",0)
.width(d.width);
// Mouse over
$(element).mouseover(function(){
$(element).find("ul:first").css("display","block");
});
// Mouse out
$(element).mouseout(function(){
$(element).find("ul:first").css("display","none");
});
// List items
$(element).find("ul:first").each(function(){
$(this).css("z-index","9999").css("position","absolute");
//$(this).width($("#"+d.id).width());
$(this).find("li").each(function(){
$(this).css("float","left").css("clear","left").css("width","100%");
$(this).css("background",d.mouseoutcolor);
$(this).mouseover(function(){$(this).css("background",d.mouseovercolor);});
$(this).mouseout(function(){$(this).css("background",d.mouseoutcolor);});
$(this).click(function(){
var old = $("#"+sb_id).text(); 
$("#"+sb_id).html($(this).html());
if(d.change){if($(this).text()!=old)d.change($(this).text().replace(/(^[\s\xA0]+|[\s\xA0]+$)/g, ''));}
if(d.click){d.click($(this).text().replace(/(^[\s\xA0]+|[\s\xA0]+$)/g, ''));}
});
});
});
$(element).find("ul:first").find("li:first").each(function(){
$("#"+sb_id).html($(this).html());
});
}
return this.each(function(){
if(undefined===window.jquery_remiya_dropdown){window.jquery_remiya_dropdown=[];}
if(!$(this).attr("id")){$(this).attr("id","jquery_dropdown_"+window.jquery_remiya_dropdown.length);window.jquery_remiya_dropdown[window.jquery_remiya_dropdown.length]=window.jquery_remiya_dropdown.length;}
if(undefined!==options)$.extend(d,options);
init(this);	    
});
};