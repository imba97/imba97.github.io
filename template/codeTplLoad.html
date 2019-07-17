<style>
#_codeTplLoad
{
  overflow-y:auto;
}
@media screen and (min-width: 641px) and (max-width: 9999px)
{
  #_codeTplLoad .code_info
  {
    width:600px;
  }
}
@media screen and (max-width: 640px)
{
  #_codeTplLoad .code_info
  {
    width:90%;
  }
}
#_codeTplLoad .code_info
{
  position:relative;
  margin:20px auto;
  padding:10px;
  border-radius:5px;
  overflow:hidden;
  box-sizing:border-box;
  -webkit-box-sizing:border-box;
}
#_codeTplLoad .code_info p
{
  font-szie:20px;
  color:#FFF;
}
</style>
<div class="tpl" id="_codeTplLoad">
<div class="code_info">
<p>这是本站的模板加载函数，这个函数是控制两个DIV标签交替显示，这里只是演示可能不是最新的。</p>
<div class="bg"></div>
</div>
<div class="code" data-code="javascript">
/*
  最后修改时间：2018-11-27
*/
function tpl_load(tpl)
{
  /*
    构造传进来的对象，用于设置

    tpl.t         是指定加载模板
    tpl.endFunc   加载完后执行的函数
  */
  tpl = tpl == undefined ? {t: null,endFunc:null} : tpl;

  /*
    判断一下是否正在显示，初始为false
    如果当前正在切换(true)，则hash还是为当前模板
    不执行之后的动作
  */
  if(S.isView){location.hash = S.tpl; return false;}
  /*
    如果继续执行后，将这个值设置为true
  */
  S.isView = true;
  /*
    设置当前模板为hash的值
  */
  S.tpl = location.hash.substring(1);
  /*
    设置返回按钮是否显示
    如果是手机，并且当前模板在S.back这个数组里就会显示
  */
  if(S.isPhone &amp;&amp; $.inArray(S.tpl, S.back) &gt;= 0)
  {
    backShow(true);
  }
  else
  {
    backShow(false);
  }
  /*
    模板切换
    就是那两个DIV，一个叫0，一个叫1
    判断当前显示的是哪一个，然后把它们掉个个儿
  */
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
  /*
    如果有传值，则让当前模板等于传过来的t的值
    构造加载模板的url
  */
  if(tpl.t != null &amp;&amp; tpl.t != &#x27;&#x27;)
  {
    S.tpl = tpl.t;
    var url = S.template + S.tpl + &#x27;.tpl&#x27;;
  }
  /*
    如果上一步的url没有被创建，则说明没有为tpl.t传值
    如果S.tpl也没有，说明是第一次访问页面，则自动设置为index
  */
  if(url == undefined || url == &#x27;&#x27;)
  {
    if(S.tpl == null || S.tpl == &#x27;&#x27;)
    {
      S.tpl = &#x27;index&#x27;;
      location.hash = S.tpl;
    }
    var url = S.template + S.tpl + &#x27;.tpl&#x27;;
  }
  /*
    隐藏原本有内容的模板DIV
  */
  $(&#x27;#main div[view-data=&#x27; + v + &#x27;]&#x27;).animate({&#x27;opacity&#x27;:0}, function(){
    /*
      删除当前DIV内的HTML并隐藏
    */
    $(this).html(&#x27;&#x27;).hide();
    /*
      如果有缓存则直接调用缓存
      如果没有则重新加载模板文件
    */
    if(S.ls &amp;&amp; S.ls[S.tpl] != undefined &amp;&amp; S.ls[S.tpl] != &#x27;&#x27;)
    {
      $(&#x27;#main div[view-data=&#x27; + S.view + &#x27;]&#x27;).html(S.ls[S.tpl]);
    }
    else
    {
      /*
        重新加载模板文件
      */
      $(&#x27;#main div[view-data=&#x27; + S.view + &#x27;]&#x27;).load(url, function(res, status){
        /*
          如果返回状态不是error
          说明有这个模板文件并加载成功了
        */
        if(status != &#x27;error&#x27;)
        {
          /*
            如果有localStorage则把模板内HTML保存进去
          */
          if(S.ls)
          {
            S.ls.setItem(S.tpl, $(this).html());
            return true;
          }
        }
        else
        {
          /*
            返回状态如果是error
            则显示错误页面
          */
          $(this).load(S.template + &#x27;error.tpl?&#x27;+new Date().getTime().toString());
          return false;
        }
      });
    }
    /*
      接下来是让另一个模板DIV显示
    */
    $(&#x27;#main div[view-data=&#x27; + S.view + &#x27;]&#x27;).css({
      &#x27;left&#x27;: 0,
      &#x27;opacity&#x27;: 0
    }).animate({&#x27;opacity&#x27;: 1}, function(){
      /*
        将是否正在加载模板文件设置为false
      */
      S.isView = false;
      /*
        如果存在endFunc则在此执行
      */
      if(tpl.endFunc != null) tpl.endFunc();
      /*
        如果当前模板内存在图片，则会调用图片加载函数
      */
      if($(&#x27;.img&#x27;).length &gt; 0)
      {
        S.imgLoadTimeOut = 0;
        S.imgLoadAll = $(&#x27;.img&#x27;).length;
        S.imgLoadTimer = window.setInterval(imgLoad, 200);
      }
    });
  });
}
</div>
</div>
<script>
$(document).ready(function(){
  if(!S.isPhone) $("#_codeTplLoad").mCustomScrollbar({
    axis:'y'
  });
  $.code();
}).attr('title', '模板加载函数' + S.title);
</script>
