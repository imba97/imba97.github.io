<style>
#_outerPages
{
  overflow-y:auto;
}
@media screen and (min-width: 641px) and (max-width: 9999px)
{
  #_outerPages .all-page
  {
    margin:30px auto;
    width:600px;
  }
  #_outerPages .all-page ul li
  {
    margin:10px;
    border-radius:5px;
    overflow:hidden;
  }
}
@media screen and (max-width: 640px)
{
  #_outerPages .all-page
  {
    width:100%;
  }
}
#_outerPages .outerPages
{
  position:relative;
}
#_outerPages .all-page ul li
{
  position:relative;
  width:100%;
  height:100px;
}
#_outerPages .all-page ul li a
{
  position:relative;
  width:100%;
  height:100px;
  line-height:100px;
  color:#FFF;
  font-size:30px;
  text-align:center;
  display:block;
}
</style>
<div class="tpl" id="_outerPages">
  <div class="all-page">
    <ul>
      <li>
        <a href="#highlight">语法高亮插件</a>
        <div class="bg"></div>
      </li>
      <li>
        <a href="#codeTplLoad">模板代码加载</a>
        <div class="bg"></div>
      </li>
      <li>
        <a href="#Btools">Btools</a>
        <div class="bg"></div>
      </li>
    </ul>
  </div>
</div>
<script>
$(document).ready(function(){
  if(!S.isPhone) $("#_outerPages").mCustomScrollbar({
    axis: 'y'
  });
  $('#_outerPages .all-page ul li').click(function(){
    if(S.isView) return false;
    $(this).animate({'margin-left': 200, 'opacity': 0});
  });
}).attr('title', '其他页面' + S.title);
</script>
