var S={
  title:' - imba久期',//title后缀
  errorTemplate:'./template/error.tpl',//错误模板路径
  images:'./images/',//图片路径
  tpl:null,//当前模板
  w_w:$(window).width(),//页面宽度
  w_h:$(window).height(),//页面高度
  view:1,//正在显示模板的div（第一次是0）
  header_h:null,//header高度
  footer_h:null,//footer高度
  ls:window.localStorage || false,
  isView:false,//是否正在显示切换
  isPhone:false,//是否是手机（宽度低于640px则被判断为手机）
  backShow:false,//是否正在显示或隐藏返回按钮
  back:['worksJpinput','worksSiteConnect','worksWhoisRed',
        'worksSwitch','worksGetUrl'],//显示返回按钮的模板
  imgLoad:null,
  imgLoadNow:0,
  imgLoadAll:0,
  imgLoadTimer:null
}

$.fn.extend({
  //加载图
  'none':function(){
  }
});

var $_GET = (function(){
  var url = window.document.location.href.toString();
  var u = url.split("?");
  if(typeof(u[1]) == "string"){
    u = u[1].split("&");
    var get = {};
    for(var i in u){
        var j = u[i].split("=");
        get[j[0]] = j[1];
    }
    return get;
  } else {
    return {};
  }
})();

$(document).ready(function(){
  //Set
  S.header_h=$('#header').outerHeight();
  S.footer_h=$('#footer').outerHeight();

  //初始化 设置宽高
  setWH();
  function setWH()
  {
    if(S.w_w<=640)
    {
      S.isPhone=true;
    }
    else
    {
      S.isPhone=false;
      $('#header ul').css({'height':50}).find('#menu a').attr('data','0');
    }
    if(S.header_h==0) S.header_h=50;
    $('#main,#main .tpl').css({
      'width':S.w_w,
      'height':S.w_h-S.header_h-S.footer_h
    });
  }
  $('#main div[view-data=1]').css({'left':-S.w_w});
  //初始化 加载index
  tpl_load();
  //加载函数
  function tpl_load(t)
  {
    if(S.isView){location.hash=S.tpl;return false;}
    S.isView=true;
    S.tpl=location.hash.substring(1);
    if(S.isPhone&&$.inArray(S.tpl,S.back)>=0)
    {
      backShow(true);
    }
    else
    {
      backShow(false);
    }
    if(S.view===0)
    {
      S.view=1;
      var v=0;
    }
    else
    {
      S.view=0;
      var v=1;
    }
    if(t!=undefined&&t!='')
    {
      S.tpl=t;
      var url='./template/'+S.tpl+'.tpl';
    }
    if(url==undefined||url=='')
    {
      if(S.tpl==null||S.tpl=='')
      {
        S.tpl='index';
        location.hash=S.tpl;
      }
      var url='./template/'+S.tpl+'.tpl';
    }
    $('#main div[view-data='+v+']').animate({'opacity':0},function(){
      $(this).css({'left':-S.w_w}).html('');
      if(S.ls&&S.ls[S.tpl]!=undefined&&S.ls[S.tpl]!='')
      {
        $('#main div[view-data='+S.view+']').html(S.ls[S.tpl]);
      }
      else
      {
        $('#main div[view-data='+S.view+']').load(url,function(res,status){
          if(status!='error')
          {
            if(S.ls)
            {
              S.ls.setItem(S.tpl,$(this).html());
              return true;
            }
          }
          else
          {
            $(this).load(S.errorTemplate+'?'+new Date().getTime().toString());
            return false;
          }
        });
      }
      $('#main div[view-data='+S.view+']').css({
        'left':0,
        'opacity':0
      }).animate({'opacity':1},function(){
        S.isView=false;

        if($('.img').length>0)
        {
          S.imgLoadAll=$('.img').length;
          S.imgLoadTimer=window.setInterval(imgLoad,200);
        }
      });
    });
  }
  // S.ls.removeItem("a");

  window.onhashchange=function(){
    tpl_load();
  }

  $(window).resize(function(){
    S.w_w=$(window).outerWidth();
    S.w_h=$(window).outerHeight();
    setWH();
  });

  if(S.ls) $('#footer').append('<a id="clear_ls" style="position:absolute;bottom:20px;right:20px;color:#FFF;" href="javasciprt:;">清除ls刷新</a>');
  else $('#footer').append('<span style="position:absolute;bottom:20px;right:20px;color:#FFF;"">不支持localStorage</span>');
  $('#clear_ls').click(function(){
    S.ls.removeItem(S.tpl);
    tpl_load(S.tpl);
  });

  $('#header .back').click(function(){
    backShow(false,true);
  });


});

function random(min,max)
{
  min=min==undefined?0:min;
  max=max==undefined?0:max;
  return Math.round(Math.random()*(max-min))+min;
}

function menu_view(k)
{
  if(k&&$('#menu a').attr('data')=='0')
  {
    var height=$('#header ul li').length*$('#header ul li:first').outerHeight();
    $('#header ul').css({'width':'100%'}).animate({'height':height});
    $('#menu a').attr('data','1');
  }
  else
  {
    $('#header ul').animate({'height':50});
    $('#menu a').attr('data','0');
  }
}

function backShow(k,back)
{
  if(S.backShow) return false;
  if(back==undefined) back=false;
  S.backShow=true;
  if(k)
  {
    $('#header .back').fadeIn(1000,function(){
      S.backShow=false;
    });
  }
  else
  {
    if(window.history.length > 1)
    {
      if(back) window.history.go(-1);
    }
    else
    {
      window.location='#works';
    }
    $('#header .back').fadeOut(1000,function(){
      S.backShow=false;
    });
  }
}

function imgLoad()
{

  if(S.imgLoadNow>=S.imgLoadAll)
  {
    S.imgLoadNow=0;
    window.clearInterval(S.imgLoadTimer);
    return false;
  }
  S.imgLoad=$('.works .img_p:eq('+S.imgLoadNow+')');
  var imgName=S.imgLoad.find('.img').attr('data-src');
  if(S.ls&&S.ls[imgName]!=undefined&&S.ls[imgName]!='')
  {
    S.imgLoad.html('<img src="'+S.ls[imgName]+'">');
  }
  else
  {
    var xhr = $.ajax({
      type: "HEAD",
      url: S.images+imgName,
      success:function(){
        var fileSize=xhr.getResponseHeader('Content-Length');
        var mb=(fileSize/1024/1024).toFixed(2)+'M';
        var html='<span>[图片] '+mb+'</span>';
        S.imgLoad.find('.img').html(html).bind('click',function(){
          var scrollTop=$('.tpl').scrollTop();
          var imgName=$(this).attr('data-src');
          $(this).parent('.img_p').html('<img src="'+S.images+imgName+'">');
          S.ls.setItem(imgName,S.images+imgName);
        });
      }
    });
  }

  if(S.imgLoad.find('img,.img').length>0) S.imgLoadNow++;
}
