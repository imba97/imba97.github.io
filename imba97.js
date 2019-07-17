var S = {
  // title后缀
  title: ' - imba久期',

  // 模板路径
  template: './template/',
  // 图片路径
  images: './images/',

  // 当前模板
  tpl: null,

  // 页面宽高
  w_w: $(window).width(),
  w_h: $(window).height(),

  // 模板框宽高
  tpl_w: 0,
  tpl_h: 0,

  //正在显示模板的div（第一次是0显示）
  view: 1,

  // header高度
  header_h: null,
  // footer高度
  footer_h: null,

  // localStorage
  ls: window.localStorage || false,

  // 是否正在显示切换
  isView: false,

  // 是否是手机（宽度低于640px则被判断为手机）
  isPhone: false,

  // 是否正在显示或隐藏返回按钮
  backShow: false,

  // 显示返回按钮的模板
  back: [
    'worksJpinput', 'worksSiteConnect', 'worksWhoisRed',
    'worksSwitch', 'worksGetUrl',

    // outerPages
    'highlight', 'codeTplLoad', 'Btools'
  ],

  // 储存.img
  imgLoad: null,
  // 当前完成的图片数量
  imgLoadNow: 0,
  // 所有图片
  imgLoadAll: 0,
  // 计时器
  imgLoadTimer: null,
  // time out 时间 (50)
  imgLoadTimeOut: 0,
  // 是否正在执行 imgLoad()
  imgLoadFlag: true,

  // 刷新按钮默认色
  refreshDefaultColor: '#979797'
}

var R = {

}

$.extend({
  //加载图
  'code':function(){
    var codeReg = '<pre>{{code}}</pre>';

    $('.code').each(function(){
      var code = $.trim($(this).html());
      var name = $(this).attr('data-code');
      var re_code = codeReg.replace(/{{code}}/g, code);
      $(this).html(re_code).addClass(name);

      hljs.highlightBlock($(this)[0]);
    });
  }
});

$.fn.extend({
  'svgColor':function(color){
    if(color != undefined)
      $(this).attr('fill',color);
    else
      $(this).attr('fill',S.refreshDefaultColor);
  }
});

var $_GET = (function(){
  var url = window.document.location.href.toString();
  var u = url.split('?');
  if(typeof(u[1]) == 'string')
  {
    u = u[1].split('&');
    var get = {};
    for(var i in u)
    {
        var j = u[i].split('=');
        get[j[0]] = j[1];
    }
    return get;
  }
  else
  {
    return {};
  }
})();

$(document).ready(function(){
  //Set
  S.header_h = $('#header').outerHeight();
  S.footer_h = $('#footer').outerHeight();

  //刷新按钮颜色
  $('#svg_refresh').svgColor(S.refreshDefaultColor);

  //初始化 设置宽高
  setWH();
  function setWH()
  {
    if(S.w_w <= 640)
    {
      S.isPhone = true;
    }
    else
    {
      S.isPhone = false;
      $('#header ul').css({'height':50}).find('#menu a').attr('data', '0');
    }
    if(S.header_h == 0) S.header_h = 50;
    S.tpl_w = S.w_w;
    S.tpl_h = S.w_h - S.header_h - S.footer_h;
    $('#main,#main .tpl').css({
      'width': S.tpl_w,
      'height': S.tpl_h
    });
  }
  $('#main div[view-data=1]').css({'left':-S.w_w});
  //初始化 加载index
  tpl_load();
  //加载函数
  function tpl_load(tpl)
  {
    tpl = tpl == undefined ? {t: null,endFunc:null} : tpl;
    if(S.isView){location.hash = S.tpl; return false;}
    S.isView = true;
    S.tpl = location.hash.substring(1);
    if(S.isPhone && $.inArray(S.tpl, S.back) >= 0)
    {
      S.backShow = false;
      backShow(true);
    }
    else
    {
      backShow(false);
    }
    if(S.view === 0)
    {
      S.view = 1;
      var v = 0;
    }
    else
    {
      S.view = 0;
      var v = 1;
    }
    if(tpl.t != null && tpl.t != '')
    {
      S.tpl = tpl.t;
      var url = S.template + S.tpl + '.html';
    }
    if(url == undefined || url == '')
    {
      if(S.tpl == null || S.tpl == '')
      {
        S.tpl = 'index';
        location.hash = S.tpl;
      }
      var url = S.template + S.tpl + '.html';
    }
    $('#main div[view-data=' + v + ']').animate({'opacity':0}, function(){
      $(this).html('').hide();
      if(S.ls && S.ls[S.tpl] != undefined && S.ls[S.tpl] != '')
      {
        $('#main div[view-data=' + S.view + ']').html(S.ls[S.tpl]);
      }
      else
      {
        $('#main div[view-data=' + S.view + ']').load(url + '?' + new Date().getTime().toString(), function(res, status){
          if(status != 'error')
          {
            if(S.ls)
            {
              S.ls.setItem(S.tpl, $(this).html());
              return true;
            }
          }
          else
          {
            $(this).load(S.template + 'error.html?'+new Date().getTime().toString());
            return false;
          }
        });
      }
      $('#main div[view-data=' + S.view + ']').show().css({
        'left':0,
        'opacity':0
      }).animate({'opacity':1}, function(){
        S.isView = false;

        if(tpl.endFunc != null) tpl.endFunc();

        if($('.img').length > 0)
        {
          S.imgLoadTimeOut = 0;
          S.imgLoadAll = $('.img').length;
          S.imgLoadTimer = window.setInterval(imgLoad, 200);
        }
      });
    });
  }
  // S.ls.removeItem("a");

  //hash变动是重新加载
  window.onhashchange = function(){
    tpl_load();
  }

  //窗口变化是重新设置宽高
  $(window).resize(function(){
    S.w_w = $(window).outerWidth();
    S.w_h = $(window).outerHeight();
    setWH();
  });

  //测试用 清除本地缓存
  if(S.ls) $('#refresh').addClass('clear_ls');
  $('.clear_ls').click(function(){
    $('#svg_refresh').svgColor('#CCC');
    S.ls.removeItem(S.tpl);
    tpl_load({
      't': S.tpl,
      'endFunc':function(){
        $('#svg_refresh').svgColor();
      }
    });
  });

  //返回按钮
  $('#header .back').click(function(){
    backShow(false, true);
  });


});

function random(min, max)
{
  return Math.round( Math.random() * (max - min) ) + min;
}

// 头部导航栏自适应
function menu_view(k)
{
  if(k && $('#menu a').attr('data') == '0')
  {
    var height = $('#header ul li').length * $('#header ul li:first').outerHeight();
    $('#header ul').css({'width': '100%'}).animate({'height': height});
    $('#menu a').attr('data', '1');
  }
  else
  {
    $('#header ul').animate({'height':50});
    $('#menu a').attr('data', '0');
  }
}

// 返回按钮函数
function backShow(k, back)
{
  if(S.backShow) return false;
  if(back == undefined) back = false;
  S.backShow = true;
  if(k)
  {
    $('#header .back').stop(true).fadeIn(1000, function(){
      S.backShow = false;
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
      window.location = '#works';
    }
    $('#header .back').stop(true).fadeOut(1000, function(){
      S.backShow = false;
    });
  }
}

// 图片加载函数
function imgLoad()
{
  if(!S.imgLoadFlag) return false;
  if(S.imgLoadNow >= S.imgLoadAll || S.imgLoadTimeOut > 50)
  {
    S.imgLoadNow = 0;
    window.clearInterval(S.imgLoadTimer);
    return false;
  }
  S.imgLoad = $('.works .img_p:eq(' + S.imgLoadNow + ')');
  var imgName = S.imgLoad.find('.img').attr('data-name');
  if(S.ls && S.ls[imgName] != undefined && S.ls[imgName] != '')
  {
    S.imgLoad.html('<img src="' + S.ls[imgName] + '">');
    S.imgLoadNow++;
  }
  else
  {
    S.imgLoadFlag = false;
    var xhr = $.ajax({
      type: 'HEAD',
      url: S.images + imgName,
      success:function(){
        var fileSize = xhr.getResponseHeader('Content-Length');
        var mb = (fileSize/1024/1024).toFixed(2) + 'M';
        var html = '<span>[图片] ' + mb + '</span>';
        S.imgLoad.find('.img').html(html).bind('click', function(){
          var scrollTop = $('.tpl').scrollTop();
          var imgName = $(this).attr('data-name');
          $(this).parent('.img_p').html('<img src="' + S.images + imgName + '">');
          S.ls.setItem(imgName, S.images + imgName);
        });
        if(S.imgLoad.find('img,.img span').length > 0) S.imgLoadNow++;
        S.imgLoadFlag = true;
      }
    });
  }
  S.imgLoadTimeOut++;
}
