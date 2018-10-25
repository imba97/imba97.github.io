<style>
#_about .title
{
  margin-top:30px;
  color:#FFF;
  font-size:50px;
  text-align:center;
}
#_about .content
{
  position:relative;
  margin:30px; auto 0 auto;
  padding:20px 5px;
  min-width:300px;
  max-width:90%;
  height:420px;
  border-radius:25px;
}
#_about .content ul li
{
  position:relative;
  margin:10px;
  border-radius:100%;
  text-align:center;
  overflow:hidden;
  float:left;
}
#_about .content ul li span
{
  padding:0 15px;
  color:#FFF;
  font-size:20px;
}
</style>
<div class="tpl" id="_about">
<p class="title">about</p>
<div class="content">
  <ul>
    <li><span style="color:#F99">拒绝烟酒</span><div class="bg"></div></li>
    <li><span>imba久期</span><div class="bg"></div></li>
    <li><span>コエ</span><div class="bg"></div></li>
    <li><span>男</span><div class="bg"></div></li>
    <li><span>上海</span><div class="bg"></div></li>
    <li><span>程序猿</span><div class="bg"></div></li>
    <li><span>没秃</span><div class="bg"></div></li>
    <li><span>佛系</span><div class="bg"></div></li>

    <li><span style="color:#F99">拒绝烟酒</span><div class="bg"></div></li>
    <li><span>imba久期</span><div class="bg"></div></li>
    <li><span>コエ</span><div class="bg"></div></li>
    <li><span>男</span><div class="bg"></div></li>
    <li><span>上海</span><div class="bg"></div></li>
    <li><span>程序猿</span><div class="bg"></div></li>
    <li><span>没秃</span><div class="bg"></div></li>
    <li><span>佛系</span><div class="bg"></div></li>
  </ul>
  <div class="clear"></div>
</div>
</div>
<script>
$(document).ready(function(){
  if(!S.isPhone) $("#_about").mCustomScrollbar();
  $('#_about .content ul li').each(function(){
    // $(this).find('span').css({''});
    var wh=$(this).find('span').outerWidth();
    $(this).css({
      'width':wh+20,
      'height':wh+20,
      'line-height':wh+20+'px'
    });
  });
}).attr('title','关于我'+S.title);
</script>
