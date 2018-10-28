<style>
#_works
{
  overflow-y:auto;
}
@media screen and (min-width: 641px) and (max-width: 9999px)
{
  #_works .w-all
  {
    margin:30px auto;
    width:600px;
  }
  #_works .w-all ul li
  {
    margin:10px;
    border-radius:5px;
    overflow:hidden;
  }
}
@media screen and (max-width: 640px)
{
  #_works .w-all
  {
    width:100%;
  }
}
#_works .works
{
  position:relative;
}
#_works .w-all ul li
{
  position:relative;
  width:100%;
  height:100px;
  list-style:none;
}
#_works .w-all ul li a
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
#_works .w-all ul li .time
{
  position:absolute;
  right:5px;bottom:5px;
  color:#FFF;
  font-size:14px;
}
#jpinput
{

}
</style>
<div class="tpl" id="_works">
  <div class="works">
    <div class="w-all">
      <ul>
        <li>
          <a href="#worksJpinput">人型自走输入法</a>
          <p class="time">2017-02-10</p>
          <div class="bg"></div>
        </li>
        <li>
          <a href="#worksSiteConnect">查询网站是否可以访问</a>
          <p class="time">2017-10-19</p>
          <div class="bg"></div>
        </li>
        <li>
          <a href="#worksWhoisRed">查询域名到期时间</a>
          <p class="time">2017-10-23</p>
          <div class="bg"></div>
        </li>
      </ul>
      <div class="clear"></div>
    </div>
  </div>
</div>
<script>
$(document).ready(function(){
  if(!S.isPhone) $("#_works").mCustomScrollbar();
  $('#_works .w-all ul li').click(function(){
    $(this).animate({'margin-left':200});
  });
}).attr('title','作品们'+S.title);
</script>
