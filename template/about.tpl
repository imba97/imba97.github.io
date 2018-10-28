<style>
#_about
{
  overflow-y:auto;
}
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
  margin:30px auto 0 auto;
  padding:20px 5px;
  min-width:300px;
  max-width:90%;
  border-radius:25px;
}
#_about .content ul li
{
  position:relative;
  margin:0 3px;
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
    <li><span style="color:#F33">拒绝烟酒</span><div class="bg"></div></li>
    <li><span>imba久期</span><div class="bg"></div></li>
    <li><span>コエ</span><div class="bg"></div></li>
    <li><span>男</span><div class="bg"></div></li>
    <li><span>上海</span><div class="bg"></div></li>
    <li><span>程序猿</span><div class="bg"></div></li>
    <li><span>PHP</span><div class="bg"></div></li>
    <li><span>没秃</span><div class="bg"></div></li>
    <li><span>佛系</span><div class="bg"></div></li>
    <li><span>钢铁直男</span><div class="bg"></div></li>
    <li><span>懒癌晚期</span><div class="bg"></div></li>
    <li><span>颓废</span><div class="bg"></div></li>
    <li><span>没救</span><div class="bg"></div></li>
    <li><span>我jio得布星</span><div class="bg"></div></li>
  </ul>
  <div class="clear"></div>
</div>
</div>
<script>
$(document).ready(function(){
  if(!S.isPhone) $("#_about").mCustomScrollbar();
  $('#_about .content ul li').each(function(){
    var wh=$(this).find('span').outerWidth();
    var color=new Array('#000','#111','#222');
    var rand=random(10,20);
    $(this).css({
      'width':wh+rand,
      'height':wh+rand,
      'line-height':wh+rand+'px',
      'border-radius':wh+rand,
      'margin':'0 '+random(0,10)+'px'
    }).find('.bg').css({'background-color':color[random(0,color.length-1)],'opacity':0.6});
  });
}).attr('title','关于我'+S.title);
</script>
