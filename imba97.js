var S={
  title:' - imba久期',
  errorTemplate:'./template/error.tpl',
  tpl:null,
  w_w:$(window).width(),
  w_h:$(window).height(),
  view:1,
  header_h:null,
  footer_h:null,
  ls:window.localStorage || false,
  hisname:null,
  isView:false
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
    $('#main,#main .tpl').css({
      'width':S.w_w,
      'height':S.w_h-S.header_h-S.footer_h
    });
    if(S.w_w<=640)
    {
      // $('#header ul').attr('isPhone','1');
    }
    else
    {
      // $('#header ul').attr('isPhone','0');
      // $('#header ul li').show();
    }
  }
  $('#main div[view-data=1]').css({'left':-S.w_w});
  //初始化 加载index
  tpl_load();
  function tpl_load(t)
  {
    if(S.isView){location.hash=S.tpl;return false;}
    S.isView=true;
    S.tpl=location.hash.substring(1);
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
      }
      var url='./template/'+S.tpl+'.tpl';
    }
    $('#main div[view-data='+v+']').animate({'zoom':0.9,'opacity':0},function(){
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
            }
          }
          else
          {
            $(this).load(S.errorTemplate+'?'+new Date().getTime().toString());
          }
        });
      }
      $('#main div[view-data='+S.view+']').css({
        'left':0,
        'zoom':1.1,
        'opacity':0
      }).animate({'zoom':1,'opacity':1},function(){
        S.isView=false;
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

  $('body').append('<a id="clear_ls" style="position:absolute;bottom:20px;right:20px;color:#FFF;" href="javasciprt:;">清除ls刷新</a>');
  $('#clear_ls').click(function(){
    S.ls.removeItem(S.tpl);
    tpl_load(S.tpl);
  });
});
